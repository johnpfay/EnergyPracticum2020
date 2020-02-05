---
Title: GIS Overview
Author: John Fay
Data: Spring 2020
---

> Outline of the analyses we'll pursue and the lessons required to pursue them.

## 

## Objective:

Identify a set of locations to install new DCFC chargers in North Carolina that would best promote electric vehicle usage by reducing concerns/inconvenience of having to charge vehicles when driving to destinations across the state. 

#### ♦ Factors that would reduce concern/inconvenience:

Imagine you are considering purchasing an electric car. You are convinced it would be perfectly suitable for your daily commute to work, but you also enjoy your trips from Durham to Asheville and want to be supremely confident that the car you buy will handle that without any concerns. <u>What are the factors that would influence your decision?</u> 

* **Range anxiety**: Can you even get to your destination without your battery running out between charges?
* **Inconvenience**: Charging takes longer than filling a tank. You're ok with that as long as:
  * Getting to the charging location does not take you too far off your shortest route
  * The wait won't be any longer than necessary (wait time)
  * You feel comfortable at the charging location (safety)
  * The time spent at the charger doesn't seem "wasted" (amenities)

#### ♦ Other factors that would influence where new DCFCs should be installed

If the driver were the only concern, we'd just put new chargers at every mile. Of course, we have other constraints as well. First, we have some **physical limitations** on where we can put new chargers, and second we would want to minimize the overall **net cost** of installing new chargers. 

* **Cost to overcome physical limitations**: Not everywhere is a viable location for a new charger.
  * 

We'd want to minimize over all cost by placing only as many chargers as needed to alleviate the above concerns. Furthermore, new charging locations are not

* Available space
* 
* Access to adequate power
* Enough visits to justify construction



## Analyses we'll tackle

#### 1. Create our units of prioritization

Our **units of prioritization** will be the set of candidate sites for establishing new charging facilities. While we cold potentially put new charging facilities anywhere



#### 2. Map DC Fast Charger (DCFC) locations across NC

* Locate data - table
  * Reading CSV data into a Pandas dataframe
  * Using APIs to gather data
* Plot/map data
  * DataFrames and Pandas 
  * Geometric objects & Shapely
  * GeoDataframes and GeoPandas
* Exercise: Tesla locations



#### 2. Design our candidate sites to prioritize

* Point: Exits
* Polygons: Grid mesh



### Identify areas meeting criteria

* 

* Extract census data near DCFC locations across NC
  * Census data
  * Reading shapefiles into GeoDataframes
  * Coordinate reference systems
  * Projecting data
  * Spatial analyses: buffer
  * Spatial analyses: select
* Network analyses: driving distances 



---

## Task: Mapping existing DCFC points

* XY to Shapely Point
* Shapefile to GeoDataframe
* Create GeoDataFrame from shapely objects



## Task: Finding services within 3 miles of existing DCFC

* 



## Task: Identifying gaps in existing network



## Task: Identifying hot spots for placing a charger

