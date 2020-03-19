---
Title: Moving Forward
Author: John Fay
Date: 16 March 2020
---

## Analytical workflow

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

### Visualizing Data

* Make maps of exits

### Tidying data

* Convert 

---

### Analyses

##### 1. Eliminate candidate sites that are in high-risk areas for flooding

> First, let's identify which candidates sites (exits) fall within flood areas. To do this, we need data on flood risk areas and then we need to identify where each exit site falls within these areas. 
>
> ESRI provides flood risk data via its Living Atlas: 
> https://www.arcgis.com/home/item.html?id=2b245b7f816044d7a779a61a5844be23 (Feature layer)
> https://www.arcgis.com/home/item.html?id=11955f1b47ec41a3af86650824e0c634 (Imagery layer)
>
> We'll need to familiarize ourselves with the data in these datasets...

<u>Workflow to identify candidate sites in flood-prone areas</u>:

* 



##### 2. Eliminate candidate sites (exits) that are already served by a DCFC

> We first want to eliminate locations that are redundant with existing charging infrastructure. To simplify matters, we'll just use Euclidean distance for now (driving distance later). Redundant sites are those found within 1/2 the range of a typical passenger electric vehicle (PEV). We will assume a typical PEV to have a range of 100 miles. 
>
> *Why is a redundant site considered within half the range and not the full range? That's because we are worried about range anxiety. A car with a range of 100 miles can drive anywhere up to 50 miles from where it charged and return back to that charger. But if it ventures 51 miles, it might get stuck. With that, we are targeting new sites to be beyond that radius, but within the full radius so it can make it to the new charger.*  

<u>Workflow to identify distance to nearest DCFC from each exit feature; Eliminate all exits > 50 and < 100 miles of a DCFC</u>

* Import Exit features into your coding environment
* Import DCFC features into your coding environment
* Transform data to a common projected CRS, if needed
* Compute distance between each exit and nearest DCFC
* Select exits > 50 miles and < 100 miles from a DCFC into a new geodataframe
* Save the geodataframe to a new shapefile



##### 2. Compute # of amenities found within 1 mile of each remaining exit

> Now that we have reduced the number of candidate sites, we'll move to identifying the amenities found nearby each exit. This will be our first step in developing the table of exit attributes that we'll use to identify which exits are best candidates for the next DCFC charger. 
>
> For amenity data, we'll use OSM data and the `osmnx` package. Recall that the `osmnx` package allows us to search "pois" (places of interest) within a polygon we provide and storing the results in a geodataframe. To generate this polygon, we'll buffer our exits and then merge these buffer into a single shape, using that shape to search for pois, saving these results into a new shapefile.

<u>Workflow to identify and remove exits with no amenities nearby</u>

* Import the features identified in step 1 into your coding environment.
* Examine the coordinate reference system
* Buffer features a set distance (2 miles?)
* Merge buffered geometries into a single feature
* Use that feature in the `osmnx` package to query for places of interest. 

