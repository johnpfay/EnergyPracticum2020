---
Title: Analysis Overview
Author: John Fay
Data: Spring 2020
---



## 1. Original Objective:

```
"Design an optimal plugin electric vehicle (PEV) charging network for North Carolina..."
```



## 2. Refined Objective:

```
"Identify a set of locations to install new DCFC chargers in North Carolina that would best promote electric vehicle adoption by reducing concerns/inconvenience of having to charge vehicles when driving to destinations across the state."
```

***Note the refinements I made from our original objective:***

* `plugin electric vehicle network` → `set of locations to install new DCFC chargers`
* `optimal` → `would best promote electric vehicle adoption by reducing  concerns...`
* `best` is still a bit vague; <u>what might be an effective replacement?</u>



## 3. Further Refinements:

With our objective refined, we now need to elaborate on the details and parse out what we really mean by the exceedingly vague terms that still remain. 

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

  * [Maintenance] Risk avoidance: avoid flooding, vandalism, other potentially damaging events

* **Cost offsets**:

  * [Direct] Visits/day: Charging fees paid by drivers
  * [Indirect] Economic incentives
  * [Indirect] Air quality improvements, other environmental offsets



## 4. *Actionable* Objectives:

We are getting closer to something we can act on. But before we can proceed with any analysis, we must translate our above factors into <u>metrics we can measure</u> (paying particular attention to those which use GIS). 

* **Range anxiety**: To alleviate range anxiety, we first need to identify gaps within the existing infrastructure's service area, and then we prioritize new charging locations based on how they effectively the eliminate those gaps. All this, of course, depends very much on the range of the car, so that will be a variable in whatever model we generate. 
  * Map the service areas from existing DCFC locations (based on a given range.)
  * Identify gaps within those service areas
  * Find a set of candidate sites that eliminate all gaps with as few new chargers as possible.



* **Inconvenience**: Here we need proxy information that allows us to quantify levels of inconvenience for each candidate site. We'll break this down into the various categories we mention above. And for each category, we outline what we might measure and how, in general terms, we might measure it.

  * **Deviation from the shortest route**: Given a set of origin-destination pairs, how much longer would an electric vehicle have to travel just to ensure proper charging? What configuration of new chargers would reduce travel time the most? 
  * **Avoiding excessive charging wait time**: Given current/projected traffic patterns and existing DCFC locations (or existing data on wait times at current charger locations), where might new chargers lower average wait times between origin-destination pairs? We might measure this using "betweenness-centrality", a graph theory measure of how frequently a site appears in the shortest path between origin-destination pairs - kind of like a how frequently a single stepping stone gets used as you cross a stream. From that we could add a site and determine how much it decreases overall betweenness scores. 
  * **Safety at charging locations**: Map out locations/conditions where security is a concern, perhaps using crime map data, lights and night data, or other viable proxies. Exclude candidate sites that fall within areas of "security concern" based on some threshold values in the datasets used. 
  * **Amenities at charging locations**: Map out all locations that might provide a reasonable distraction while waiting to charge (e.g., restaurants). Compute either a density map of these locations or a map showing areas within minimum distance to a set of these locations, and exclude candidate sites that fall outside acceptable ranges of these values. 

  

* **Setup and maintenance costs**: Again, we must find proxy information that allows us to quantify values. Here, the values relate to the cost of installing and maintaining charging infrastructure. As above, we outline what we might measure for each sub-category and suggest methods for measuring them.

  * **Real-estate**: Determine the availability and cost to acquire land required to install the chargers. Here we could use parcel data, if available, to identify all parcels within an acceptable distance from a candidate site. And from these parcels, eliminate all that don't meet a minimum parcel size requirement and cost threshold. 

  * **Linkage to power grid**: If the cost to link a new charger to existing power infrastructure is a factor of distance to existing infrastructure, we could simply measure the distance from each candidate site and the nearest qualifying sub-station. We could get more complex by evaluating the trade-offs of creating a new substation - and where, but that likely opens up a new set of complicated cost evaluations.  

  * **Risk avoidance**: Here, we want to compute the likelihood that a charging facility might get damaged. For this, we'd need spatial data on the likelihood of a risk occurring and information of the severity of the risk. For example, we could use FEMA's flood risk data to estimate the return interval of flooding event at a candidate site, and favor sites that have a low likelihood of being damaged.

    

* **Cost offsets**: Same procedure as above...

  * **Visits per day**: We might estimate the number of visits per day using traffic data, if available, adjusted by an estimate of the number of those cars being electric cars, further adjusted by an estimate of the number of those electric cars needing to be charged. The last estimate may be a factor of the distance of a candidate site from existing infrastructure, favoring those that occur beyond a minimum distance from the nearest facility, thus increasing likelihood that a car must visit. 

    Alternatively, we could use the betweenness-centrality score mentioned above, favoring sites that have high scores. 

  * **Boost in local economies**: Here we favor candidate sites where the local economies could benefit from dollars spent by people while they charge their car. To measure potential boosts, we could examine the demographics surrounding each candidate site, using either US Census data or ESRI's Enrichment data.

  * **Environmental offsets**: Installation of a new charger facility may promote more local EV sales and use, and thus possibly reduce air emissions or perhaps even water quality (by reducing ICE vehicle residues on roads that drain into streams). Thus we could favor candidate sites that either have existing environmental issues or that are particularly sensitive to air/water pollution. 



---

## Framing the workflow

The next step, now that we have a number of actionable objectives is to 







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

