---
Title: GIS exercies
Author: John Fay
Date: Spring 2020
---

# GIS Exercises

### 1. Shapely and geometric objects (points, lines and polygons)

> * Introduction to geometric objects: points, lines, polygons; feature properties
> * Creating geometric objects in Python, using Shapely

* Create points representing existing charger locations

* Create lines between chargers
* Buffer points
* Draw polygon



### 2a. Managing spatial data with Geopandas & Projections

* Read a shapefile of NC road exits into a GeoPandas dataframe
* Explore geodataframe 
  * `len`,`shape`,`head()`, `columns`,`plot`
* Selecting data
  * Show geometry column
  * Us `at` to show first record in geometry column
* Group on value
  * Show unique values using the `unique()` function
* Save as GeoJSON (and view format)

### 2b. Geometric operations: Computing distances

* Compute distances between candidate sites and existing chargers
  * Need to reproject dataset
  * Generate a function to compute distances to nearest DCFC
  * Apply the function to each point in the candidate site dataset

### 3. Spatial Queries

* Buffer all DCFC sites 50 miles. 
* Create a mask of all sites falling within those buffers; invert the mask
* Select candidate sites not within 50 miles of a charger
* Compute the nearest DCFC neighbor to each of these selected candidate sites

### 4. Overlay analyses

* [Intersect layer]

  * Buffer powerlines
  * Select all candidate sites

* [Aggregate/dissolve data on attribute]

  