# GIS Outline

https://geo-python.github.io/site/

https://automating-gis-processes.github.io/site/

## Objectives

* Learn how to execute spatial analysis in a coding (Python environment)
* Overview of Coding Python
* Spatial analysis packages in Python
* Spatial data types
* Spatial analyses
* Visualizing data

## Schedule

| Week | Theme                                                        |
| ---- | ------------------------------------------------------------ |
| 1    | Python crash course                                          |
| 2    | Shapely and geometric objects (points, lines and polygons)   |
| 3    | Managing spatial data with Geopandas (reading and writing data, projections, table joins) |
| 4    | OpenStreetMap data (osmnx) and Network analysis (networkx)   |
| 5    | Visualization: static and interactive maps                   |



## 1. Python Crash Course

* Where to write Python?

  * Notebooks: Local (ArcGIS Pro | Anaconda); Cloud (Binder | Jupyter Server)
  * IDE's: Local (Spyder | PyCharm)
  * ACTIVITY: Open Jupyter associated with ArcGIS & Open A Taste of Python

* A taste of Python

  * Simple Python math
  * Functions
  * Math operations (importing libraries)
  * Combining functions
  * Variables
  * Updating variables
  * Variable values
  * Data types
  * Character input

* More on Python

  * Conda environments
  * Installing packages

  

## 2. Shapely and geometric objects (points, lines and polygons)

* GIS data models: **vector** vs raster
* Geometric objects
  * Question: How would you represent various features by these objects? 
* The Shapely library: how to import
  * GEOS library
* Exercise
  * Create a point & show
  * Create two more points (what are the numbers?)
  * Print points
  * Type points
  * Tab complete
* Create a linestring
  * From points
  * From coordinates
  * *Introducing Lists*
* Line operations
* Polygons
* Geometry collections
* EXERCISE
  * Import the shapely geometry objects (Point, LineString, Polygon)
  * Create a point feature called "[Durham](https://www.latlong.net/place/durham-nc-usa-3468.html)" at coordinate (X=689,420, Y=3,985,329)
  * Create a second point feature called "[ChapelHill](https://www.latlong.net/place/chapel-hill-nc-usa-3466.html)" at coordinate (X=675,424, Y=3,976,067)
  * Create a second point feature called ["Raleigh"](https://www.latlong.net/place/raleigh-nc-usa-7275.html) at coordinate (X=712,904, Y=3,962,967)
  * Compute the distance between Durham and Chapel Hill
  * Compute the area encompassed by "the Triangle"



## 3. Managing spatial data with Geopandas

* [Intro to GeoPandas](https://automating-gis-processes.github.io/site/notebooks/L2/geopandas-basics.html#Introduction-to-Geopandas)
  * Series, DataFrames → GeoSeries, GeoDataframe
  * Importing shapefiles into GeoPandas
  * GeoDataframe attributes
  * Plotting GeoDataframes
  * Geometries in GeoPandas
  * Subsetting
  * Grouping
  * Writing out to shapefiles
* [Projections](https://automating-gis-processes.github.io/site/notebooks/L2/projections.html)
  * GeoDataframe "crs" attribute
  * Projection: Copy then "to_crs"
* Calculating distances
* 



---

## Getting spatial data

* Data formats: tabular | vector | raster

* | Vector Data Format             | Pandas | Geopandas/Fiona | ArcGIS API |
  | ------------------------------ | ------ | --------------- | ---------- |
  | Text (CSV, JSON, KML)          |        |                 |            |
  | Binary (Shapefile/Geodatabase) |        |                 |            |
  | Web services                   |        |                 |            |

* | Raster Data Format                  | Numpy | ArcGIS API |
  | ----------------------------------- | ----- | ---------- |
  | Text (ASCII)                        |       |            |
  | Binary (TIF, Img, Arc GRID, NetCDF) |       |            |

## Wrangling tabular data

* Calculations
* Summarize | group | pivot | transform
* Appends | joins
* Selections

## Wrangling spatial data

* Coordinate reference systems - getting data aligned
  * Geographic vs Projected coordinate systems
  * Equal area, equal distance, conformal, hybrid
  * Datums, spheroids, ellipses
  * Common crs's
  * Spatial transformations: (Vector | Raster)
* Spatial analyses
  * Extractions: Attribute, Spatial 
  * Overlays: Intersect, Spatial join, Clip, Union
  * 

## Network analysis

## Visualizing data

---

## Exercise ideas

#### 1. Mapping DCFC locations

* Convert table of existing DCFC locations to shapely points
* Transform to UTM

#### 2. Calculating distances between DFCF locations

#### 3. Demographics surrounding DCFC locations

* Read Census block_groups shapefile into shapely objects
* Select block_groups within 3 miles of each DCFC 
* Summarize block_group demographics