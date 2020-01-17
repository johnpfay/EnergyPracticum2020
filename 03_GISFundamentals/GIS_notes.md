# GIS Notes

## Learning Objectives: 

* Go from zero to proficient in GIS quickly, but thoroughly
* GIS platforms
* Spatial data and spatial data management
* Import/export spatial data: ArcGIS Online, ArcGIS, Python
* Geospatial file metadata
* Visualizing spatial data



## Proficiencies:

* GIS Platforms: where to run GIS
  * ArcGIS Online | ArcGIS Pro | Python | R | QGIS
    * Open ArcGIS Pro | Add Data | Examine and run tool (buffer DCFC points)
  * Tradeoffs on each
* Getting started:
  * AGOL | ArcGIS Pro | Python
* GIS Fundamentals: Spatial data models
  * What is a spatial data model: representing spatial features and phenomena digitally
  * Vector: points, lines, polygons associated with attributes
  * Raster: assigning values to locations (pixels)
  * Projections: allow us to cross reference different spatial datasets
* GIS Data: what does it look like?
  * Vector: CSV | JSON | Shapefiles | Database objects {geodatabase|spatial dataframe}
  * Raster: Matrices + affine transformation | images 
  * Other: tiles, TINS, networks, netCDF
* GIS Data: how to manage it?
  * Workspace organization: raw & processed data | temporary data
  * Metadata
* Visualizing spatial data (ArcPro, AGOL & Python)
  * Projections | basemaps | symbology
* Spatial analysis: 



## Vector GIS in Python

* Packages: [Geopandas](http://geopandas.org/) (Fiona, Shapely, Pyproj)
* Setting up: Anaconda or Colab?
* Extraction: Clip | Select
* Overlay: Spatial join | Union | Intersect
* Proximity: Buffer, point distance
* Statistics: Summarize
* Generalize: Dissolve
* Tabular: Join, Calculate, Add Field



## Exercise Ideas:

* Vector data structures
  * Spreadsheet w/coordinates (EV charging locations)
  * Feature class, shape is a binary field
  * Connect the dots: line features
  * Compute proximity
  * Intersect



## Data carpentry

https://datacarpentry.org/organization-geospatial/

### Intro to Raster Data

* Data Structures: Raster and Vector
* About Raster data
  * Continuous v. categorical 
* Properties of raster data
  * Extent
  * Resolution
  * Coordinate reference system
  * Format
  * Missing data
  * Bands (time, spectra)

### Intro to Vector data

---

## DATA

### Scraping data and mapping it

* Tesla charging locations

### Extracting data near by

* Buffer & clip
* Service area & clip

### Calculating densities

---



## 1. ArcGIS Online

### Objectives:

* Understand what AGOL is: GIS platform | Content Manager | Web host
* Data types
* Visualizing data
* Analyzing data

### Exercises:

* Create your AGOL account
* Make a map! 
* Finding data

----

#### Candidate sites

* Data on exits

* Compute distance from exit (Euclidean, Network)

#### Site restrictions

* Distance to transmission lines
* Available land
* Businesses
* Existing gas station

#### Site prioritization

* Not redundant
* Expands network
* In area of economic need