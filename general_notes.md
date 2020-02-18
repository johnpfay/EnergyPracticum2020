

## Project ideas

* Identify gaps in traversing the state along interstates

  * Start at each DCFC nearest state border
  * Travel 100 miles: which routes end (no charger found in 100 miles)?

* Create an app to predict where you can go on XXX charge

  * Convert charge to miles
  * Identify chargers within radius
  * Identify service areas (by iteration)

* Build a graph/edge list among existing DCFC (OD Cost matrix)

  * Remove edges above a threshold 
  * Compute connected graph? 
  * Change threshold and compute diameter
  * Compute centrality scores? 
    * Betweenness = importance as stepping stone
  * Same analysis with Exits? Candidate sites added?

---

| Date       | Topic                                | Tasks                                                      |
| ---------- | ------------------------------------ | ---------------------------------------------------------- |
| Feb 12     | Data exploration: ArcGIS Pro         | Familiarity with ArcGIS Pro; Interacting with spatial data |
| Feb 19     | Data exploration: Python & Shapely   | Experience with Python; Vector data model                  |
| Feb 26     | Data exploration: Python & Geopandas | Geodataframe structure & operations; projections           |
| Mar 5      | Data analysis: Geopandas             | Spatial queries; spatial joins, nearest neighbor analysis  |
| [No class] |                                      |                                                            |
| Mar 20     | Data analysis: Geopandas             | Geometric operations                                       |
| Mar 27     | Data analysis: Network analysis      | Network operations: ArcGIS Online                          |
| [No class] |                                      | Presentations                                              |
| Apr 9      | Presentations                        | Presentations                                              |

---

### Data

- [ ] DCFC locations
  - [ ] NREL
    * `FetchingData\NREL-data.ipynb`→ `NREL_DFCsites.csv`
- [ ] Candidate locations
  - [ ] Exits (MJB&A)
    * `Fetching-ArcGIS-Online-Services.ipynb` → `MJBA_exits.shp`
  - [ ] Gas stations
    * `Fetching-ArcGIS-Online-Services.ipynb` → `GasStations.shp`
  - [ ] Vacant parcels
    * `Fetching-ArcGIS-Online-Services.ipynb` → `CensusParcels.shp`
- [ ] Road network
  - [ ] NC DOT|NCOneMap
- [ ] Power
  - [ ] HIFLD - Transmission lines
  - [ ] HIFLD - Power substations
- [ ] Amenities
  - [ ] Open Street Map features
  - [ ] ESRI Enrichment
  - [ ] Dunn & Bradtsreet

### Analyses

- [ ] Identify candidate site locations
  - [ ] Exits 
  - [ ] Gas stations
  - [ ] Parcels
- [ ] **Fill current gaps in connectivity**
  - [ ] *Select* <u>roads segments</u> within 100, 200, 300 mi of existing <u>DCFC locations</u>; *invert* selection;
    *Identify* all <u>candidate sites</u> that would bridge these gaps
  - [ ] 
- [ ] **Compute distance to power**
  - [ ] *Compute distances* between each <u>candidate site</u> and the nearest <u>transmission line</u> | <u>power substation</u>
- [ ] 

### Tasks

* [ ] Search and explore data
  * [x] ArcGIS Online
  * [x] ArcGIS Pro
  * [ ] Open street map
* [ ] Fetch data
  * [ ] ArcGIS Portal | Living Atlas | ArcGIS REST Endpoints
    * [x] Service types; Getting into ArcMap
    * [ ] Export to local file
  * [ ] APIs
    * [ ] Fetch NREL data via API
    * [ ] Fetch AGOL data via ArcGIS Python API
* [ ] Create network dataset: ArcPro
  * [ ] Create feature dataset
  * [ ] Add NCRouteArcs:Interstates * NCRouteArcs:USroutes to feature dataset
  * [ ] Create Network Dataset
  * [ ] Build Network Dataset

---

#### OSM + GeoPandas

* Download roads from NC DOT
* Subset NC major roads (interstates and major roads to new shapefile
* Load NC major roads (shapefile) into a GeoPandas geodataframe
* Buffer freeways 
* Use OSMNX to retrieve freeways
* 