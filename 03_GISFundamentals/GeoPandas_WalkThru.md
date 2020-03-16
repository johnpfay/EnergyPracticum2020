```
Title: GeoPandas Walk Thru
Author: John Fay
Data: Spring 2020
```

# GeoPandas Walk Thru

### <u>Data import and exploration</u>

#### 1. Read the Exits shapefile (downloaded in the Fetching Data exercises) into a geodataframe



#### 2. Explore the data in the geodataframe

* Reveal the dimensions of the geodataframe

* Reveal the data types of each column in the geodataframe

* Reveal the data in the Durham exits dataframe (first 5 records)

* Plot the data

  

### <u>Attribute subset</u>

#### 3. Extract into a new geodataframe the records values in the"County" field are "Durham" 

* *Method 1*: Create a mask and apply the mask
* *Method 2*: Query records into a new dataframe



#### 4. Explore the Durham data as you did the entire dataset

* Dimensions? 
* Plot?



### <u>Geometric transformation</u>

#### 5. Project the data to the UTM Zone 17N coordinate system

* What "epsg" code is associated with the current geodataframe? 
* Look up this epsg code on https://www.spatialreference.org/ or  https://epsg.io. What is the name if this crs? 
* Find the epsg of the 

### <u>Geometric objects</u>

#### 5. Extract the *geoseries* from the geodataframe (i.e., the geometry column) into a new object

* 



#### 6. Convert point geoseries to single multipoint object

* Compute the <u>centroid</u> of the multipoint object
* Compute the <u>convex hull</u> of the multipoint object
* Compute the area of the convex hull object



#### 6. Group the original dataframe by county

7. 

