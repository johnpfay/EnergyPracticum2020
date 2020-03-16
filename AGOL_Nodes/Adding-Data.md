---
Title: Adding Data to AGOL
Author: John Fay
Date: Spring 2020
---

# Adding data to ArcGIS Online

## 1. Create a new folder on ArcGIS Online

* Log into AGOL
* Navigate to the Content section
* Create a new folder



## 2. CSV data containing geographic coordinates: NREL DC Fast Charger Sites

* Extract the NREL DCFC data using its API to a local CSV file. (See `xxxxxx.ipynb`)
* In AGOL's Content section, select `Add Item`... `From your computer`, and then browse to your NREL csv file. 
  * Add appropriate Tags to your content item, e.g. `EnergyPracticum`, `DCFC`
  * Keep the `Publish this layer as a hosted layer` checked. This will convert your CSV to a spatial dataset. 
  * In the table listing the fields in the CSV, note that the `latitude` and `longitude` fields are recognized as location fields.
  * Click `Add Item`
* When complete, navigate back to your Content section and you should see two new items, one Feature Layer and one CSV. 



## 3. Feature Layer hosted by someone else: MJBA Exits

* Search AGOL for `owner:lukehellgren1 NC exits` to locate the [TCI_NC_exits_2019_06_11_v1](https://nsoe.maps.arcgis.com/home/item.html?id=591c9dcc30244ddaa6a35d36571b94dd) service.
* Find the service's URL listed in the lower right corner of its [details page](https://nsoe.maps.arcgis.com/home/item.html?id=591c9dcc30244ddaa6a35d36571b94dd). Copy the [URL](https://services7.arcgis.com/fqNd6NEGNf5qzQdv/arcgis/rest/services/TCI_NC_exits_2019_06_11_v1/FeatureServer) to the clipboard. 
* Navigate back to your Content section and select `Add Item`...`From a URL`. Paste the URL there.
  * Enter an appropriate title, e.g. "Potential EV sites"
  * Enter appropriate tags, e.g. `EnergyPracticum`, `EVSites`

---

# Analysis

## 1. Compute driving distance from DCFC sites

* If you haven't already, add the DCFC locations to a new map in AGOL.
* Select the site, then select `Perform Analysis` .
* From the `Use Proximity` menu, select `Create Drive-Time Areas` .
  * Ensure that the DCFC sites layer is your source point layer.
  * Set driving <u>distance</u> as 50 and 100 miles. 
  * Unselect the "Use current map extent"
  * Click Show Credits to reveal how many credits this will consume. 
  * Run the analysis: it will take several minutes to complete. 
* When complete, you'll have a new feature layer in your workspace. 