---
Title: Getting to know ArcGIS Online
Class: ENV 761 - Conservation GIS
Date: Spring 2020
Author: John Fay
---

<div align='center' >
    <h3><A HREF="./index.html">ENV 761 (Swenson/Fay) - Conservation GIS</A></h2>
</div>

# Getting to Know ArcGIS Online 

---

### Learning Objectives

* Initiate and navigate your AGOL account profile
* Understand the structure, components, and capabilities of AGOL
* Use AGOL to find content & types of content
* Map and analyze data found on AGOL, in AGOL and ArcGIS Pro

### Assignment

* Read the lab document introducing ArcGIS Online
* Create and modify your Duke AGOL account
* Complete ESRI's ArcGIS Online Basics tutorial
* Complete the analysis looking at susceptible swine lagoons in North Carolina
* Answer the questions at the end of this document

---

## What is ArcGIS Online? 

ESRI provides a nice encapsulation of what ArcGIS Online (AGOL) is here:

> *ArcGIS Online is a collaborative, cloud-based platform that allows members of an organization to use, create, and share maps, apps, and data, including authoritative basemaps published by Esri. Through ArcGIS Online, you get access to ESRI's secure cloud, where you can manage, create, store, and access data as published web layers, and because ArcGIS Online is an integral part of the ArcGIS system, you can use it to extend the capabilities of ArcGIS for Desktop, ArcGIS for Server, ArcGIS apps, and ArcGIS Web APIs and ArcGIS Runtime SDKs.*
>
> (From: <http://doc.arcgis.com/en/arcgis-online/reference/what-is-agol.htm> )

Basically, AGOL is part of ESRI's rapidly evolving GIS 'ecosystem' that leverages the network/internet/web/cloud (whatever you want to call it) to facilitate data sharing and collaboration among GIS users. AGOL is not yet positioned to replace Desktop ArcGIS, but it's definitely moving in that direction. More and more it's becoming an indispensable resource for:

* Finding and accessing content to use in your geospatial analyses
* Storing, organizing, and sharing your own GIS content
* Performing basic GIS analyses without needing to install GIS software on your machine

We'll get a much better idea of what AGOL is and what it can do by interacting with it, which is the focus of this tutorial. I also encourage you to explore the on-line material by ESRI published here:
<http://doc.arcgis.com/en/arcgis-online/reference/faq.htm>



## Access to ArcGIS Online: *NSOE's Organizational AGOL Portal*

Access to ArcGIS Online is by subscription only, i.e., it's not free (though you can create a public account with limited capabilities or sign up for a free 30-day pass). However, as part of our site license, ESRI has granted Duke an **organizational account** to AGOL and anyone in the Duke community can access AGOL via this portal; anyone with a valid Duke NetID has access to that account. The portal is accessed via this URL: <https://dukeuniv.maps.arcgis.com>. 

Something new that we are trying this semester, however, is using a separate AGOL organizational portal, *one specific to just the Nicholas School*. This site is accessed here: https://nsoe.maps.arcgis.com. You all should have received an email inviting you to create an account on this portal. Using this site for class exercises allows you a separate "sand box" to play in without affecting your "official" Duke AGOL site. 

> **→ If you have not received an email and/or activated your AGOL account, please see John before proceeding. **
>
> **→ Enterprise logins do NOT work with the NSOE ArcGIS Online Portal...**



## ♦ TASK 1: Edit your ArcGIS Profile and join the class group

Sign into the NSOE ArcGIS Online portal : https://nsoe.maps.arcgis.com. Once signed in:

* Navigate to your **profile** and **edit** your settings. 
  * By default, who can see your profile? Change your profile so that everyone can see it.
  * Enter your email and some information for your **bio**. 
  * To what "role" do you belong? What privileges are associated with this role? 
  * Save your changes.
* Then, go to the **Groups** tab at the top, find the **ENV761_2020** group and join it.  
  * Be sure to select "My Organization's Groups" at the top to reveal the ENV761_2020 group. 
* Within the **Content** pane, create a new folder called "Hog Farm Analysis"

Briefly review the structure of your AGOL site. Next, we'll do an ESRI tutorial to better understand what AGOL can do and how to do it. 



## ♦ TASK 2: Complete ESRI'S ArcGIS Online Basics tutorial

ESRI provides an excellent tutorial to get you started on what AGOL is and what it can do. This tutorial is available here: 

https://www.esri.com/training/catalog/5d816c0255cf937306d2d3ef/arcgis-online-basics/

Your next task is to complete this tutorial. It will help you with Task 3. 

* Click on the link above to start the tutorial. Sign in to your NSOE AGOL account, if not already. 
* Launch the course. 



## ♦ TASK 3: Swine Lagoons Breaches in North Carolina

We'll now apply knowledge gained from the tutorial to a new case study. We will use ArcGIS Online to create a map of hog farms in North Carolina in relation to rivers and streams and then use this map to (1) describe spatial patterns in hog farm distribution across the state, and (2) make a rough estimate of the number of farms that may be breached during a storm like Hurricane Florence. 

Below is a brief sketch of the background to the problem. And below that are steps will guide you through your analysis. 

> Hurricane Florence made landfall near Wrightsville Beach, North Carolina, on September 14, 2018. The slow-moving, category 1 storm produced more than 2 feet of rain that flooded many low-lying areas housing many of the state’s hog farms. State officials estimated more than 5,000 hogs were killed. Further, rising floodwaters breached two dozen storage areas containing hog waste. The rising waters caused manure to overflow their lagoons and contaminate surrounding waterways. **As a state-level GIS analyst, your task is to identify the lagoons located within 1 mile of a river, so officials can mitigate public risk.**
>
> https://www.youtube.com/watch?v=pQaxUA6aWQg

### I. Make a map of hog farms and streams in North Carolina

We'll start by gathering the data we need to perform our analysis, searching for on-line datasets and adding them to a new AGOL map. 

1. **Make a new AGOL map**.

   * Log into your Duke ArcGIS Online organizational account and create a new map. 
   * Zoom your map to North Carolina. 
   * Experiment with different base maps.

   

2. **Find and add the** `NC Animal Operation Permits` dataset to your map. 

   * Search *ArcGIS Online* using the keywords "**NC CAFOs**". 
   * Sort results on "**view count**"; the top record's owner should be *mmwilliams_ncdenr*. This is the one we will use.
   * View the item details associated with this feature layer and record answers to the following questions. (You'll report these answers in your lab submission...)
     * When was the dataset first created? Last updated?  
     * Other than hogs/swine, what other animal waste sources are included in this dataset?(HINT: click the link found in the item summary pane)
   * Add the feature layer to your AGOL map. 
   * Open the attribute table associated with the feature layer. Record how many features are in this dataset?

   

3. **Filter** the NC Animal Operations Permits layer so that only **swine** records are shown. 

   * These should be records with "Type" equal to "Swine State COC" or "Swine NPDES COC". 

   * Open the table associated with the layer; you should now have **2051** records that meet your criteria.

   * Rename this layer "**NC Swine Lagoons**"

     

4. **Symbolize** the swine so that all points have the same symbol

   * Play with the size, shape, fill and outline colors, and transparency of the symbol to make the data reasonably legible. 

     

5. **Find and add** the `USA Counties` dataset.

   * Search the *Living Atlas* using the keyword "**Counties**".
   * Filter results for **Feature Layers** that are **Authoritative**.
   * Select the **USA Counties (Generalized)** layer and add to your map. 

   

6. **Filter** the USA Counties layer for only NC Counties

   * Create and apply a filter to select just counties in North Carolina.

   * Rename the layer "**NC Counties"**

     

7. **Symbolize** counties so they appear on your map, but they don't dominate it

   * Try using a fully transparent fill and a subtle, semi-transparent outline

   

8. **Find and add** a `USA Rivers and Streams` data layer to your map.

   * Search ArcGIS Online for "**USA Streams**"
   * Filter results for <u>Feature Layers</u> that are <u>Authoritative</u>
   * Add the layer named "USA Rivers and Stream" (Not "USA Detailed Streams") to your map. 

   

9. **Filter** the USA Rivers and Streams for just NC rivers and streams and rename the layer.

   * Create and apply a filter where State = "NC"
   * Rename the layer to "**NC Rivers and Streams**"

   

10. **Save** your map:

    * Zoom your map to the extent of North Carolina.
    * Title: `North Carolina Hog Farms in Flood Danger`
    * Tags: `Hogs`, `ENV761`
    * Summary: `Research into hog farms at risk of sewage overflow`
    * Save to your Hog Lagoons folder



11. **Share** your map: 
    * Share your map with everyone. 
    * Record the link to your map. e.g. https://arcg.is/0DTPei0

   

#### ►Map Challenge: Heat Maps

Your map should reveal where in North Carolina hog farms/swine lagoons are concentrated by the location of the points. However, even though your swine lagoon points may be set as transparent, they don't reveal overlapping points. A more effective way to communicate concentration is a "heat map". See if you can create a heat map from your data.

* Make a copy of the NC Swine Lagoons layer, renaming the new layer "NC Swine Lagoons Heat Map".
* Alter the symbology so that instead of points for each lagoon, it shows a heat map. 



### II. Summarize Swine Lagoons by County

Industrial hog waste is stored in lagoons susceptible to overflow when floodwaters rise above the earthen embankments storing the manure. You need to create a map showing the number of lagoons in each county.

1. Click the **Perform Analysis** button underneath the NC Swine Lagoons layer. 

    ![Analysis Button](.\media\AnalysisButton.png)

2. Click **Summarize Data** and then **Summarize Within**

3. In the **Summarize Within** pane, do the following:

   * For **Choose the polygon layer**, select NC Counties

   * For **Choose a layer to summarize**, select NC Swine Lagoons

   * For **Result layer name**, type "Number of lagoons in each county"

   * Save your results in the **Hog Farm Analysis** folder created earlier

   * Uncheck **Use current map extent**. 

   * Click **Run Analysis**.

4. On the layer you just created (when it appears), point to **More Options** and select **Create Labels**.

   * In the **Label Features** layer, for **Text**, click the drop-down arrow and select **Count of Points**. You are encouraged to play with the label style.
   * Click **OK**.

   > At this point, the map reflects the concentrations of hog farms, but there’s so much data that the map’s meaning is unclear. Turning off distracting layers clarifies your intent.

 5. In Contents, uncheck the layers for NC Swine Lagoons (points, and heatmap if you created that)and NC Rivers and Streams.



#### ► Map Challenge: Swine Lagoons by County

* Create a map showing each NC county shaded by the number of hog farms it contains (more hog farms = darker shade). Label only the counties with one or more hog farms. The result should appear somewhat similar to the map below:![](.\media\BonusMap.png)

  >Tips:
  >
  >* You may need to make a copy of an existing layer.
  >* You may need to filter out records.
  >* Explore various options in the symbology of layers

* Save this map under a different name in your Hog Lagoons Analysis folder (use Save As...) 
* Share with everyone and record its URL, e.g. https://arcg.is/1Crvr90



### III. Add a Buffer to Rivers and Streams

In this step you'll add a 1-mile buffer to rivers and streams throughout North Carolina, so you can see which hog farms are vulnerable to rising floodwaters. 

1. Select the **NC Rivers and Streams** layers and click **Perform Analysis**.

3. Click **Use Proximity** and click **Create Buffers**.

4. In the **Create Buffers** pane, do the following:

   * For **Enter buffer** size, ensure the setting is **1 Miles**.
   * Expand **Options** and click **Dissolve**.
   * For **Result layer name**, type **Buffer 1 mile**.
   * Save results in your **Hog Farm Analysis** folder
   * Uncheck **Use current map extent**.
   * Click **Run Analysis**. 


In the next step, you'll identify the swine lagoons located within this buffer zone. 



### IV. Intersect Swine Lagoons within the Buffer Area

You're interested in the swine lagoons within the 1-mile buffer. To isolate those lagoons, you'll use the intersect tool. 

1. Select the **Buffer 1 mile** layer you just created and click **Perform Analysis**.
2. Click **Manage Data** and click **Overlay Layers**.
3. In the **Overlay layers** pane, do the following: 
   * For **Choose input layer**, select **NC Swine Lagoons**.
   * For **Choose overlay layer**, select **Buffer 1 mile**.
   * For **Choose overlay** method, verify **Intersect**.
   * For **Output**, verify **Points**.
   * For **Result layer name**, type **Endangered lagoons**.
   * Uncheck **Use current map extent**.
   * Click **Run Analysis**

> ► Can you think of an alternative way of performing this analysis? One that does not require creating the "Buffer 1 mile" layer. 

The resulting map is confusing. By changing symbol colors, unchecking layers, altering the base map, and other changes you can clarify its message - namely, which lagoons are within the buffer. 



### V. Create a Presentation of your findings

Finally, we'll prepare a brief slide show presenting our results as a series of map. This is done by first saving your map (you may wish to save this using a new name, e.g. "North Carolina Hog Farms in Flood Danger-Presentation"), sharing your map (with everyone), and then clicking "**Create Presentation**" in the upper right corner of your browser window.

In Presentation mode, you can add slides where each slide includes its own properties, i.e. title, map extent, layers shown, zoom, etc. Create the following slides in your presentation:

* **Slide 1:** 
  
  * Zoom to North Carolina and Set Location to Current
  * Title the slide: **North Carolina Swine Lagoons**
  * Display Swine lagoon locations as points, with NC county boundaries.
  * Set base map to something subtle, e.g light or dark grey canvas or Human Geography Map.
* **Slide 2:**
  
  * Remain zoomed to North Carolina
  * Title: **North Carolina Swine Lagoons Heat Map**
  * Display Swine lagoon locations as a heat map (no points), with county boundaries.
  * Base map, same as above.
* **Slide 3:** 
  
  * Zoom: North Carolina
  * Title: **Swine Lagoon Count by County, North Carolina**
  * Display your swine lagoon count by county, with labels.
  * Base map, same as above.
* **Slide 4:**
  
  * Zoom: Duplin County
  * Title: **Endangered Swine Lagoons, Duplin Co.**
  * Display: 
    * Swine lagoon points
    * Endangered swine lagoon points
    * NC Streams and Rivers
    * 1 mile buffer
  * Base map: You choose

Save your presentation and Play it. Submit the URL associated with the presentation in Play mode on Sakai. 
Example: https://nsoe.maps.arcgis.com/apps/presentation/index.html?webmap=4d9f91811bee48909dbbce5d51144e75&slide=1



### Discussion

1. What key assumptions are made in this analysis? How might they affect the results?
2. What are some other datasets that might improve the reliability of this analysis? Can you find any of these? 



## Deliverables:

Within the class Sakai site, under the Test & Quizzes section, find the AGOL Exercise entry. Submit the following in this form:

* The date the NC Animal Permit Locations data layer was created

* The animal waste types included in this data layer

* The number of records included in this layer

* The URL of your Hog Lagoon map shared with the ENV761 group (e.g. http://arcg.is/ujeCm). 
  This map should be zoomed to North Carolina and include:

  - **NC Swine lagoons** (filtered swine points from Animal Operations Permit data set), shown as a single feature type. 
  - **NC Counties** (filtered from the Generalized USA county layer), displayed so as not to dominate the map. 
  - **NC Rivers and Streams** (filtered from the USA Rivers and Streams dataset). 

  The map should be saved with the Title, Tags, and Summary mentioned above. 

* The URL of your map showing the number of swine lagoons by county. This map should:

  - Be shared with everyone,
  - Show NC counties shaded by the number of swine lagoons and
  - Show labels for each county with at least one lagoon indicating the number of lagoons found in the county. 

  Other layers can appear in the map but should be turned off.

* The URL of presentation

* Discussion question #1

* Discussion question #2

