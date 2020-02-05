---
Title: Analysis Overview
Author: John Fay
Data: Spring 2020
---



## Objectives:

> Identify a set of locations to install new DCFC chargers in North Carolina that would best promote electric vehicle usage by reducing concerns/inconvenience of having to charge vehicles when driving to destinations across the state. 

#### ♦ Factors that would reduce concern/inconvenience:

> Imagine you are considering purchasing an electric car. You are convinced it would be perfectly suitable for your daily commute to work, but you also enjoy your trips from Durham to Asheville and want to be supremely confident that the car you buy will handle that without any concerns. <u>What are the factors that would influence your decision?</u> 

* **Range anxiety**: Can you even get to your destination without your battery running out between charges?
* **Inconvenience**: Charging takes longer than filling a tank. You're ok with that as long as:
  * Getting to the charging location does not take you too far off your shortest route
  * The wait won't be any longer than necessary (wait time)
  * You feel comfortable at the charging location (safety)
  * The time spent at the charger doesn't seem "wasted" (amenities)

#### ♦ Other factors that would influence where new DCFCs should be installed

> If the driver were the only concern, we'd just put new chargers at every mile. Of course, we have other constraints, namely cost; we want to minimize overall cost as much as possible. So now we must ask: <u>what factors affect the expense of setting up and maintaining statewide DCFC infrastructure</u>? 

* **Setup and maintenance costs**:

  * [Set up] Real estate: Need to acquire land to install the charger
  * [Set up] Linkage to existing power infrastructure

  * [Maintenance] Risk avoidance: avoid flooding, other disasters

* **Cost offsets**:

  * [Direct] Visits/day: Charging fees paid by drivers
  * [Indirect] Boost in local economies

---

## *Actionable* Objectives:

> Now we must translate our above factors into ones we can measure (paying particular attention to those which use GIS)

* **Range anxiety**: To alleviate range anxiety, we first need to identify gaps within the existing infrastructure's service area, and then we prioritize new charging locations based on how they effectively the eliminate those gaps. All this, of course, depends very much on the range of the car, so that will be a variable in whatever model we generate. 
  * Map the service areas from existing DCFC locations (based on a given range.)
  * Identify gaps within those service areas
  * Find a set of candidate sites that eliminate all gaps with as few new chargers as possible. 
* **Inconvenience**: Here we need proxy information that allows us to quantify levels of inconvenience for each candidate site. We'll break this down into the various categories. 
  * **Distance from interstate**: How far would a driver have to deviate from the likely course? 
  * **Origin-destination distances**: Among all popular origin-destination pairs (e.g. major cities in NC), which candidate sites reduce the overall distances (i.e. minimizes having to drive off course just to charge the car).
  * **Safety**: eliminate candidate sites in "high crime" areas; rank other sites based on "crime likelihood"
  * **Amenities**: eliminate candidate sites that have zero amenities; rank other sites based on number of amenities
    * Amenities = restaurants or cafes for now, but can include other businesses later
* **Setup and maintenance costs**: 
  * **Real-estate**: 
    * Identify lots within a set proximity of each candidate site
    * Exclude lots not meeting size criteria
    * Exclude sites that are too expensive (or rank on cost)
  * **Linkage to power grid**: 
    * Map substations
    * Compute distances away from existing substations
    * For each candidate site/lot assign ranking based on distance from substation
  * **Risk avoidance**: 
    * Exclude lots within a floodplain
* **Cost offsets**
  * 

---

## Framing the workflow

!![map of North Carolina cities](https://geology.com/state-map/maps/north-carolina-road-map.gif))

---



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

