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

## Getting started

* Python Set up: {[link](https://automating-gis-processes.github.io/CSC18/course-info/Installing_Anacondas_GIS.html#install-python-gis-on-windows)}
  * Python | Conda | Jupyter
  * **Exercise**: Create a new Conda environment & run a Jupyter notebook. 
* Python Fundamentals: 
  * Variable assignment & data types | syntax: iteration & conditionals 
  * Extending python: built-in packages
  * **Exercise**: Jupyter notebook exercises ([link](https://github.com/DataDevils/Python-Exercises/blob/master/Exercise%201%20-%20Python.ipynb))
* 3rd party packages
  * Installing packages with Conda
  * Useful packages: NumPy, Pandas, Geopandas, Rasterio, ArcGIS, Matplotlib, Seaborne, Plotnine
  * **Exercise**: Install packages and run notebooks

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

