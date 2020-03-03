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

* Displaying a geodataframe's coordinate reference system with `.crs`
* 