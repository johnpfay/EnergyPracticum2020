# GIS Sequence

## A. Data Exploration

* Intro to ArcGIS Pro
* Creating a proper ArcGIS workspace
* Downloading data
* Spatial data formats
* Interacting with data in ArcGIS Pro
* Searching ArcGIS Online 
* Thinking spatially

## B. Dive into Python

* #### Intro: Resources

  * https://geo-python.github.io/site/

* #### Where to code in Python: Duke Virtual Environments; Jupyter notebooks

  * https://vm-manage.oit.duke.edu/containers/environ859

* #### A Taste of Python

  * Upload `A
  * https://geo-python.github.io/site/notebooks/L1/a-taste-of-python.html

* #### Crash course in Pandas

  * https://geo-python.github.io/site/lessons/L5/overview.html

## C. Fetching Spatial Data

* #### Using the *Requests* and *Pandas* packages to fetch DCFC locations from the NREL API

  * Upload: `01-Fetch-NREL-data-via-API.ipynb`
  * Topics: APIs, JSON, dictionaries, Pandas, CSV

* #### Introducing the *ArcGIS API for Python* 

  *  https://developers.arcgis.com/python/guide/
  * Navigating documentation: Guide|Samples|API Reference
  * Structure: Objects, properties, and methods

* #### Using the ArcGIS Python API to fetch MJBA Exit features

  * Upload: `02a-Fetching-ArcGIS-Online-Services.ipynb`
  * Searching for content using the `gis`object:
    * https://developers.arcgis.com/python/guide/accessing-and-creating-content/#Searching-for-content
  * Items, Feature Layers, Feature Sets, Spatial Data Frames

* #### More AGOL Examples & Exercises: Gas Stations and Transmission Lines

  * Fetching Gas Station data from an AGOL service URL: https://services.nconemap.gov/secure/rest/services
    Upload: `02b-Fetching-Data-From-AGOL-Service-URL.ipynb`
  * Fetching Transmission lines from HIFLD OpenData sites: https://hifld-geoplatform.opendata.arcgis.com/
    Upload: `02c-Fetching-Data-From-OpenData-Sites.ipynb`
  * EXERCISES: 
    * Fetch HIFLD Power Station data

* #### Fetching OpenStreetMap data using the *OSMNX* package: Amenities and Street Networks

  * Upload: `03-Fetch-OSM-Data.ipynb`
  * Saving as "graphml"
  * Saving as shapefiles

## D. Spatial Data in Python: Shapely and Geopandas

* #### Intro: Resources

  * https://automating-gis-processes.github.io/site/
  * Spatial data model: https://automating-gis-processes.github.io/site/notebooks/L1/geometric-objects.html

* #### Introductory Exercises:

  * Shapely point from coordinate pair (lines, polygons)
  * Geometric properties and methods: length, area, buffer
  * Geometric series from XY columns in CSV files
  * Geodataframe from geometric series + attributes
  * Coordinate systems and transformations

## E. Spatial Analysis in Python: Geopandas

* [Buffering](https://shapely.readthedocs.io/en/stable/manual.html#object.buffer) features: Identify areas within 1 mile of roads
* [Geometric operations](https://automating-gis-processes.github.io/site/notebooks/L4/geometric-operations.html): Select road areas within 50 miles of DCFC sites. 
* [Nearest neighbor](https://automating-gis-processes.github.io/site/notebooks/L3/nearest-neighbour.html): Identify nearest DCFC from each Exit feature
* Selecting amenities within a distance of road features (Buffer + OSMNX api)

## F. Network Analysis 

* Network data formats: ArcGIS Pro Network Datasets & NetworkX graphs
* Service Areas: Identify roads within 50mi of each DCFC
* Centrality: Compute centrality scores for Exits among different origin destination pairs.

## G. Visualizing Output

* ArcGIS Pro
* ArcGIS Online
* Static maps
* Interactive maps

