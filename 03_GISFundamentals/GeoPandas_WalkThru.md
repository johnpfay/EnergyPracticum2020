```
Title: GeoPandas Walk Thru
Author: John Fay
Data: Spring 2020
```

# GeoPandas Walk Thru

1. Read the Exits shapefile into a geodataframe

2. Subset just records where "County" == "Durham"

   * Method 1: Create a mask and apply the mask
   * Method 2: Query records into a new dataframe

3. Explore the data

   * Reveal the data returned
   * Reveal the size of the data returned

   * Plot raw points
   * Plot on basemap using `contextily` 

4. Extract the geoseries from the geodataframe

5. Convert point geoseries to single multipoint object

   * Compute the <u>centroid</u> of the multipoint object
   * Compute the <u>convex hull</u> of the multipoint object
   * Compute the area of the convex hull object

6. Group the original dataframe by county

7. 

