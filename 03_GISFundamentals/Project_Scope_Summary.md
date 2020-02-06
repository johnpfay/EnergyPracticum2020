---
Title: Analysis Overview
Author: John Fay
Date: Spring 2020
---

# Project Scope Summary

*→ A summary of where we are so far and where we might go from here...*

[toc]

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



## 4. Translate into *Actionable* Objectives:

We are getting closer to something we can act on. But before we can proceed with any analysis, we must translate our above factors into <u>metrics we can measure</u> (paying particular attention to those which use GIS), and perhaps suggest the means for measuring them. Below, we dig a bit deeper into each of the factors, getting to a point where we can envision the analysis required to realize our objectives.

* **Range anxiety**: 
  To alleviate range anxiety, we first need to identify gaps within the existing infrastructure's service area, and then we prioritize new charging locations based on how they effectively the eliminate those gaps. All this, of course, depends very much on the range of the car, so that will be a variable in whatever model we generate. 
  * Map the service areas from existing DCFC locations (based on a given range.)
  * Identify gaps within those service areas
  * Find a set of candidate sites that eliminate all gaps with as few new chargers as possible.



* **Inconvenience**:
   Here we need proxy information that allows us to quantify levels of inconvenience for each candidate site. We'll break this down into the various categories we mention above. And for each category, we outline what we might measure and how, in general terms, we might measure it.

  * **Deviation from the shortest route**: Given a set of origin-destination pairs, how much longer would an electric vehicle have to travel just to ensure proper charging? What configuration of new chargers would reduce travel time the most? 
  * **Avoiding excessive charging wait time**: Given current/projected traffic patterns and existing DCFC locations (or existing data on wait times at current charger locations), where might new chargers lower average wait times between origin-destination pairs? We might measure this using "betweenness-centrality", a graph theory measure of how frequently a site appears in the shortest path between origin-destination pairs - kind of like a how frequently a single stepping stone gets used as you cross a stream. From that we could add a site and determine how much it decreases overall betweenness scores. 
  * **Safety at charging locations**: Map out locations/conditions where security is a concern, perhaps using crime map data, lights and night data, or other viable proxies. Exclude candidate sites that fall within areas of "security concern" based on some threshold values in the datasets used. 
  * **Amenities at charging locations**: Map out all locations that might provide a reasonable distraction while waiting to charge (e.g., restaurants). Compute either a density map of these locations or a map showing areas within minimum distance to a set of these locations, and exclude candidate sites that fall outside acceptable ranges of these values. 

  

* **Setup and maintenance costs**: 
  Again, we must find proxy information that allows us to quantify values. Here, the values relate to the cost of installing and maintaining charging infrastructure. As above, we outline what we might measure for each sub-category and suggest methods for measuring them.

  * **Real-estate**: Determine the availability and cost to acquire land required to install the chargers. Here we could use parcel data, if available, to identify all parcels within an acceptable distance from a candidate site. And from these parcels, eliminate all that don't meet a minimum parcel size requirement and cost threshold. 

  * **Linkage to power grid**: If the cost to link a new charger to existing power infrastructure is a factor of distance to existing infrastructure, we could simply measure the distance from each candidate site and the nearest qualifying sub-station. We could get more complex by evaluating the trade-offs of creating a new substation - and where, but that likely opens up a new set of complicated cost evaluations.  

  * **Risk avoidance**: Here, we want to compute the likelihood that a charging facility might get damaged. For this, we'd need spatial data on the likelihood of a risk occurring and information of the severity of the risk. For example, we could use FEMA's flood risk data to estimate the return interval of flooding event at a candidate site, and favor sites that have a low likelihood of being damaged.

    

* **Cost offsets**: 
  Same procedure as above...

  * **Visits per day**: We might estimate the number of visits per day using traffic data, if available, adjusted by an estimate of the number of those cars being electric cars, further adjusted by an estimate of the number of those electric cars needing to be charged. The last estimate may be a factor of the distance of a candidate site from existing infrastructure, favoring those that occur beyond a minimum distance from the nearest facility, thus increasing likelihood that a car must visit. 

    Alternatively, we could use the betweenness-centrality score mentioned above, favoring sites that have high scores. 

  * **Boost in local economies**: Here we favor candidate sites where the local economies could benefit from dollars spent by people while they charge their car. To measure potential boosts, we could examine the demographics surrounding each candidate site, using either US Census data or ESRI's Enrichment data.

  * **Environmental offsets**: Installation of a new charger facility may promote more local EV sales and use, and thus possibly reduce air emissions or perhaps even water quality (by reducing ICE vehicle residues on roads that drain into streams). Thus we could favor candidate sites that either have existing environmental issues or that are particularly sensitive to air/water pollution. 



## 5. Framing the workflow

What we have above is something akin to a blueprint: we want a wall here, a window there, a hallway from here to here. However, it doesn't include where to start or in what sequence to build things. The next step then is to "frame the workflow" meaning develop logical steps to set up and execute our analyses. This can be a somewhat iterative process that benefits from experience, but that likely needs adapting as you flesh out the plan. 

First, in the above *actionable objectives* section, I alluded to two terms that require further explanation: "`candidate sites`" and "`origin-destination pairs`". So let's discuss those. 

#### Defining our "candidate sites"

In dealing with optimization questions, which is what we are doing here, finding a solution is much easier when you can restrict the set of options you are evaluating. For instance, it's quite possible that if we were looking at just two or even a dozen potential locations to place new chargers, we might very well be able to do that without GIS or fancy computers. However, if every square meter in NC was being considered as a potential charging location, the problem gets far more complex and intensive: "Do things improve we we move this site to the east 2 meters?" "What if we place two sites 3 meters apart or three sites 2 meters apart?" What this boils down to that **we must first decide on the finite set of elements that we can add or substract from ultimate "optimized" solution**, or what I've been calling our `candidate sites`.  

We can devise these sites using one of two methods, both of which involve deciding on a reasonable number so as to adequately address the problem, but not to overcomplicate the analysis. One method is to identify a reasonable initial set of locations. This is what MJ Bradley and Associates did with their project that uses all interstate exits as potential charging locations, which seems quite a reasonable starting point given the overall problem. The other method is to divide the state into regularly spaced (aka "tesselated") areas, often squares, sometimes hexagons of an appropriate size (not too small as to bog down the analysis, not too big as to make the results meaningless). 

Each approach has its advantages and disadvantages. Using the points allows us to pinpoint and evaluate precise locations, but it allows the possibility we may miss some potential locations. Using the tessellated areas has inexact locational awareness, but it considers all possible locations. Which to choose??

**I propose that we use the MJ Bradley approach and use exits as our candidate site locations**. In our case, they just make good sense in that we are looking at interstates, it'd likely incur quite a bit of costs to build new off-ramp just for a new charging facility, and the number of exits seems to be a large, but reasonable number to prioritize using GIS. 

With those defined, our workflow starts to take shape: for each of these exits, we need to build a table that has values/scores for each of the metrics we describe in the *Actionable Objectives* section. And from that table, we devise a scoring system that will reveal which candidate sites should become charging stations based on specific goals. 

#### Defining "origin-destination pairs"

The other term mentioned in the *Actionable Objectives* section above that needs further defining is "origin-destination pairs", and this too is involved in simplifying some analyses we might tackle, specifically ones involving graph theory and network analysis. 

> Briefly, "graph theory" examines the spatial (not necessarily geographic) relationships among features via connections. A **graph** is simply a set of nodes (or points) and edges (or connector between points). You can think of it as all the major cities in North Carolina (the points) connected by the road network between them (the edges). Once we've created a graph, graph theory allows us to compute all kinds of interesting things - far more than I'll discuss here just yet, but it will become quite useful.

In an example provided early in this document, I mentioned looking at the route from Durham to Asheville to see whether that was do-able given a vehicle of limited range. We could do determine that, but it'd just be one route, one **origin-destination pair**. If we added another origin-destination pair, new information would appear, namely segments that occur along multiple routes. Keep adding more origin-destination pairs, and we get more information. However, as was the case with candidate sites, if we add to many, our computation slows down dramatically; we need to find a representative set of origins and destinations that finds that sweet spot between giving us useful information and still allowing us to complete our analyses in a reasonable amount of time.  

What I recommend we select is to construct a list of all the major cities in North Carolina, maybe the top 10 or maybe 20 listed in Wikipedia ([source](https://en.wikipedia.org/wiki/List_of_municipalities_in_North_Carolina#top)) and use those as the **nodes** on our graph. We may also want to include points where the major interstates enter/leave North Carolina. The **edges** will be a street network dataset that we can obtain. And using those we can model travel among those various origin-destination routes, which will be explained a bit more later. 

> ![](https://geology.com/state-map/maps/north-carolina-road-map.gif))



#### Outlining specific tasks

Defining our the candidate sites and to some extent our origin-destination pairs, we've constrained our analysis to be something a bit more manageable. The next step is to identify the actual analytical steps required to generate the products we've identified above and establish a logical order for tackling them, often from simple to complex. This process also benefits from experience, and so I'll guide this process below. It's worth noting, however, that this is still just a *plan* and plans likely change, needing to adapt to oversights and other unexpected obstacles. But we can only deal with those as they arise. 



> I've outlined these analyses in a separate section for clarity. Also, I've tweaked these a bit to reflect the fact that we are also learning GIS as we go. 



## 6. Analyses we'll tackle

#### A. Create a spatial dataset of our candidate sites

* Convert a CSV format table of interstate exits, including their geographic coordinates (lat/long), into geometric objects stored in a GeoPandas dataframe. Project to the NC State Plane coordinate system and save as a shapefile. This file can be read in to further scripts and used in geospatial analysis and to build the prioritization database.



#### B. Characterize candidate sites by their surroundings (Safety & Amenities, Maintenance costs) 

* Identify data that would reflect **safety**|**amenities** at a charging location; summarize those values for each candidate site.
* Determine typical **traffic loads** at each candidate sites.
* Identify which sites fall within high **flood plain risk** areas.
* Compute distances to nearest power substation for each candidate site.
* Add these values to the candidate sites' attribute table for later scoring/ranking.



#### C. Identify which candidate sites supply gaps in existing DCFC coverage (Range anxiety)

* Use Python packages to extract charging locations from NREL via its API. Convert these to geographic objects and save as a feature class. 
* Compute service areas from these existing chargers for typical PEV ranges (100|250|300 miles).
* Identify which candidate sites occur outside of identified service areas; add that information to its attribute table.

→ ***Alternatively:***

* Compute the distance (Euclidean, driving) between each candidate site and the nearest DCFC charger.  
* Compute the number of DFCF chargers within a given distance. 



#### D. Compute which *sets* of candidate sites would enhance connectivity (Range anxiety, Route diversions, Wait times, Cost offsets)

* Construct a graph of all existing DCFC and candidate sites (nodes) and the driving distances between them (edges). 
* Eliminate all edges above a threshold driving distance.
* For each candidate site, use graph analysis to compute:
  * <u>Degree-centrality</u> (# of connections): higher values suggest more traffic.
  * <u>Betweenness-centrality</u> (frequency in routes among pairs): higher values suggest importance as a stepping stone.
  * <u>Closeness-centrality</u> (average nearest neighbor distance): find those not too close, nor too far...



#### E. Synthesize results

The result of the above analyses will be a new set of attributes for each candidate site. As MJ Bradley as done, a final ranking of candidate sites is generated by weighting each factor according to some logical framework (and there can be several scenarios), and identifying those sites rise to the top of the rankings. 



---

## Summary - so far...

While this document certainly doesn't flesh out everything, it does allow us to focus in on some tangible tasks we can use to start learning GIS and the other foundations for analysis. It will also likely be the source of more discussion and more refinement.






