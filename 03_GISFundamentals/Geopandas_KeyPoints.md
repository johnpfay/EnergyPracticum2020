# Geopandas: Key Points

* Read a shapefile into a Geopandas geodataframe using the `read_file()` function.
  * https://automating-gis-processes.github.io/site/notebooks/L2/geopandas-basics.html#Reading-a-Shapefile
* Simple exploration of geodataframes.
  * Viewing the first 5 records with `.head()`.
  * Viewing spatially with `.plot()`
  * Extracting specific columns, e.g. extracting the **geometry** column to a new object. 
  * Extracting single row, column values with `.at[]`
  * Extracting row/column slices with `.loc[]`
  * Masks, and queries with `.loc[]` and 
* Geometric objects
  * Converting shape **length** and **area** to new columns in the geodataframe



# Projections: Key Points

* Understand the basics of coordinate reference systems ([source](http://www.georeference.org/doc/guide_to_selecting_map_projections.htm)).
  * What projecting data is and why it's done
  * The difference between **geographic** coordinate systems and **projected** coordinate systems 
  * Understand the different types of projection systems and how they differ

* How coordinate reference systems are represented in Python: `EPSG codes`

  * Also `WKT` and `proj4 strings`

* Displaying a geodataframe's coordinate reference system with `.crs`

  * `.crs.name` and `.crs.epsg` to get the system's name and code

* Transforming spatial data from one CRS to another using `to_crs()`

  



Some more useful resources on projection:

* https://www.youtube.com/watch?v=kIID5FDi2JQ
* https://www.youtube.com/watch?v=vVX-PrBRtTY