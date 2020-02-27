---
Title: Learning GeoPandas
Class: ENV 790 - GIS Practicum (Energy)
Author: John Fay
Date: Spring 2020
---

[ENV 790 - GIS Practicum (Energy)](./index.html)

# Learning GeoPandas

Last week we used tutorials from [Geo-Python](https://geo-python.github.io/site/index.html) site to learn a bit about Pandas. Here, we use tutorial from its companion site, [Auto-GIS](https://automating-gis-processes.github.io/site/index.html), to learn GeoPandas. Follow the steps below to gain access to the materials. 

### 1. Navigate to https://automating-gis-processes.github.io/site/lessons/L2/overview.html

As before, you will see a set of lessons for learning Geopandas as well as some lesson videos. 



### 2. Get the notebooks and data for the exercise

* Navigate to your ENVIRON859 environment (https://vm-manage.oit.duke.edu/containers/environ859) and log in. 

* Open up a new terminal window by clicking`New|▼` and selecting terminal. 

* In the terminal window type the following command:

  ```
  git clone https://github.com/DataDevils/PythonGIS.git
  ```

  > This will download the full set of Auto-GIS lessons, found in a folder named "PythonGIS". The GeoPandas exercises are in the `PythonGIS\L2` folder. 



### 3. Run through the Geopandas exercises and come to class with any questions.

* First, run the two code cells in the `Fetch-Unzip-Data.ipynb` notebook in the `PythonGIS/L2` folder. This downloads and unzips the data required for the exercises. When finished, close and halt the notebook (no saves needed).

* Next run through the `1_geopandas-basics.ipynb` notebook. Recall that the "answers" to what needs to be filled in are available on the main Auto-GIS web site: https://automating-gis-processes.github.io/site/notebooks/L2/geopandas-basics.html. Also, the videos include demonstrations of these workbooks in action. 

  > NOTE: The ``1_geopandas-basics.ipynb` notebook has a section on downloading the data. You already did that with the `Fetch-Unzip-Data.ipynb` notebook and can ingore this. 

* Work through all the notebooks. Make a note of concepts you don't understand or could use additional clarification on. 



## Key proficiencies

After completing these lessons, you should have some level of comfort doing the following:

* Reading and writing spatial data from/to common file formats 
* Managing spatial data using Geopandas 
* Re-projecting a geodatafame from one projection to another