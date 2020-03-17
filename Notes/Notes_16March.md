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

### Tidying data

* Convert 

