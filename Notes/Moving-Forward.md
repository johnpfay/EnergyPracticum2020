---
Title: Moving Forward
Author: John Fay
Date: 16 March 2020
---

## Analytical workflow

* Create your workspace
* Obtaining & Exploring data
* Tidying data
* Analyzing data
* Reporting results/visualization

---

### Obtaining data

> In your Virtual Container, create a geoprocessing workspace (Data, Scratch, Scripts folder). In the scripts folder, create a notebook for each of the task below. You are encouraged to use the helper notebooks (these are ones we went over in class), but do tidy up your notebooks to make them readable, but efficient. For example, the notebooks we went over in class have a lot of extraneous explanations which your notebooks should not have. 

* Fetch **exit locations** from MJBA AGOL site ([helper notebook](https://nbviewer.jupyter.org/github/DataDevils/FetchingData/blob/master/02a-Fetching-ArcGIS-Online-Services.ipynb))
  * The feature service end point is *[here](https://services7.arcgis.com/fqNd6NEGNf5qzQdv/ArcGIS/rest/services/TCI_NC_exits_2019_06_11_v1/FeatureServer/1)*.
  * Be sure to subset only points falling within North Carolina
  * Result: a shapefile saved as `exits.shp` in **Data/MJBA**
* Fetch **DCFC location** data as CSV via NREL API ([helper notebook](https://nbviewer.jupyter.org/github/DataDevils/FetchingData/blob/master/01-Fetch-NREL-data-via-API.ipynb))
  * Result: a CSV file named `DCFC.csv` listing all  public, electric charging locations stored in **Data/NREL**
* Fetch electric power substation data via HILFD Open Data site ([helper notebook](https://nbviewer.jupyter.org/github/DataDevils/FetchingData/blob/master/02c-Fetching-Data-From-OpenData-Sites.ipynb))
  * Result:  a shapefile saved as `substations.shp` in **Data/HIFLD**. 
* Fetch open street map amenity location data via OSMNX package ([helper notebook](https://nbviewer.jupyter.org/github/DataDevils/FetchingData/blob/master/DEMO-Fetch-NC-Amenities.ipynb))
  * Result: a shapefile saved as `amenities.shp` in **Data/OSM**
* Fetch flood plain locations via AGOL
* Fetch NC major roads network data via OSMNX package

---

### Analyses

#### 1. Eliminate candidate sites that are in high-risk areas for flooding

> First, let's identify which candidates sites (exits) fall within flood areas. To do this, we need data on flood risk areas and then we need to identify where each exit site falls within these areas. 
>
> ESRI provides flood risk data via its Living Atlas: 
> https://www.arcgis.com/home/item.html?id=11955f1b47ec41a3af86650824e0c634 
>
> As this dataset resides on ArcGIS Online, we'll focus on using the [ArcGIS API for Python](https://developers.arcgis.com/python/guide/) for analysis. 
>
> Anyway, the workflow is outlined below. 

<u>Workflow to identify candidate sites in flood-prone areas</u>:

* Access the ESRI USA Flood Risk data as an [Imagery Layer](https://developers.arcgis.com/python/api-reference/arcgis.raster.toc.html#imagerylayer) object. (More on [Imagery Layers](https://developers.arcgis.com/python/guide/using-imagery-layers/)...)
* Import our Exit features into our coding environment as a [spatially enabled dataframe](https://developers.arcgis.com/python/guide/introduction-to-the-spatially-enabled-dataframe/) (vs geodataframe).
* Use the `identify()` function of the Imagery Layer object to extract pixel values at each Exit point location.
* Use the `attribute_table()` function of the Imagery layer object to generate a list to cross reference values to actual flooding classes.
* Add a new field to the Exits attribute table, assigning its value to the flood class corresponding to the point's location.
* Save the resulting table as a CSV file and/or a Shapefile for later analysis.



#### 2. Eliminate candidate sites (exits) that are already served by a DCFC

> Here we want to eliminate locations that are redundant with existing charging infrastructure. To simplify matters, we'll just use Euclidean distance for now (driving distance later). Redundant sites are those found within 1/2 the range of a typical passenger electric vehicle (PEV). We will assume a typical PEV to have a range of 100 miles. 
>
> > *Why is a redundant site considered within half the range and not the full range? That's because we are worried about range anxiety. A car with a range of 100 miles can drive anywhere up to 50 miles from where it charged and return back to that charger. But if it ventures 51 miles, it might get stuck. With that, we are targeting new sites to be beyond that radius, but within the full radius so it can make it to the new charger.*  

<u>Workflow to identify distance to nearest DCFC from each exit feature; Eliminate all exits > 50 and < 100 miles of a DCFC</u>

* Import Exit features into your coding environment as a geodataframe
  * Optionally, filter for records that aren't likely to flood.
* Import DCFC features into your coding environment
  * Convert from CSV to a geo
* Transform data to a common projected CRS, if needed, ensuring it's a projected CRS so distance units are not in degrees.
* Compute distance between each exit and nearest DCFC
* Select exits > 50 miles and < 100 miles from a DCFC into a new geodataframe
* Save the geodataframe to a new shapefile



#### 3. Calculate the distance from each candidate site to the nearest substation

> We have eliminated some exits from our list of candidate sites (those prone to flooding and those too near or too far from existing DCFC infrastructure). For the remaining sites we want to compute how far each is from the nearest power substation. We have downloaded the substation locations from HILFD, and the remaining analysis is quite similar to what we did above.

<u>Workflow to identify distance to nearest power substation</u>:

* Import the subset of exit features into your coding environment
* Import the HIFLD power substation data into your environment
* Transform to a common projected CRS, if needed. Ensure it's a projected CRS. 
* Compute the distance between each exit and the nearest substation
* Export the result, now with distance to nearest substation, to a new shapefile.

####  

#### 4. Compute # of amenities found within 1 mile of each remaining exit

> Now that we have reduced the number of candidate sites, we'll move to identifying the amenities found nearby each exit. This will be our first step in developing the table of exit attributes that we'll use to identify which exits are best candidates for the next DCFC charger. 
>
> For amenity data, we'll use OSM data and the `osmnx` package. Recall that the `osmnx` package allows us to search "pois" (places of interest) within a polygon we provide and storing the results in a geodataframe. To generate this polygon, we'll buffer our exits and then merge these buffer into a single shape, using that shape to search for pois, saving these results into a new shapefile.

<u>Workflow to identify and remove exits with no amenities nearby</u>

* Import the Exit features - ones with flood zone and distance to nearest DCFC in its attribute table - into your coding environment. (Reducing the # of exits in our resulting dataset will speed analysis tremendously.)
* Subset the features that occur outside of flood risk areas.
* Further subset the features that fall between 50 and 100 miles from the nearest DCFC
* Examine the coordinate reference system, ensure that its a projected coordinate system, not geographic
* Buffer the exit features a set distance (2 miles?)
* Merge buffered geometries into a single feature
* Use that feature in the `osmnx` package to query for places of interest (restaurants, cafes, ?)
* Compute a density surface of amenities
* For each exit, compute its value within this density surface and add this value to the exit's attribute table

