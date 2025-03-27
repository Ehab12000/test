
# **Calibre® Rule Writing - DRC part**  

As we know, the rules are written in **SVRF (Standard Verification Rule Format)**. In this document, we will briefly explain the main commands used in **Design Rule Checking (DRC)**. These commands are derived from the **Calibre Rule Writing Slides** and the **Standard Verification Rule Format (SVRF) Manual**.  


## **Module 1: Basic Concepts**
* We review the flow of IC Design and know when the stage of DRC is needed.  

  ```mermaid
  graph
  A[Source netlist] --> B[Simulation] --> C[Layout] --> D[Physical Verification DRC & LVS] --> E[Fabrication]

* How to create Rule file? 
1. From scratch using **ASCII text editor**.
2. Modify **existing calibre file**.
3. Using the **Calibre GUI**.

* we need to compile the rule file before using it **Why?**
1. Correct syntax.
2. Correct layers for a particular operation
3. resolves all dependencies between statements
and operations.

* now we will preview some **SVRF Statement Syntax Conventions**.
1. **DRC Maximum Results**
 > It used to specify the Max number of results can be generated for rule check 
**When the maximum results are generated for a rule check, a warning is issued, and no further results are
added to the DRC Results Database for that rule check. DRC checking then continues for the
next rule check.**

2. **DRC Summary Report**
 > It Specifies the DRC summary report filename and method in which it is written. 
 > **can control in the status of summary between replace old summary or append to it**

3. **Layout System**
 > It Specifies the database of the layout. 
 > **Types of Layout can be GDSII or OASIS**

4. **Layout Path**
 > It Specifies the path of the layout. 

5. **Layout Primary **
 > It Specifies the target design to verify.
 
6. **Commenting  the rule file**
>1.  "//"  used for single comment  
>2.  "/*    */"   used for multi-line comment
>3.  "@" used for user comment 



## **Module 2: DRC Basics**
* We willl preview the some of other commands used in **Calibre**

1. **Layer**
 > It defines the name of original layer.

2. **Layer Map**
 > It Maps GDSII layer numbers ,DATATYPEs, and TEXTTYPEs to Calibre layer numbers..

3. **DRC Results Database**
> Specifies the filename and type of the results database for Calibre nmDRC.

4. **DRC Map Text**
> Specifies whether to transfer all text objects in the input database to the DRC results database.

5. **Group**
> It Names a collection of Rule Checks.

6. **DRC SELECT CHECK**
> It specify which group of Rules Checks will execute.

7. **DRC NOT SELECT CHECK**
> It specify which group of Rules Checks will not execute.

8. **LAYOUT WINDOW**
> It control polygon window that defines the inclusion of input polygons for DRC RuleChecks.



## **Module 3: Dimensional Rule Checks**
* We will preview some commands related to the Dimensions of polygons and relation between them like the **Width , Spacing and the Enclosure**.

* **DRC Rule Check Operations**

1. **INTERNAL**
 > * Related to check the width of polygon or check the overlap with another polygon.
>  * Width checks are measured between interior-facing edge pairs on the same polygon.
>  * Checks between interior-facing edge pairs of polygons on two different layers.

2. **EXTERNAL**
 > * Related to check the spacing between the polygons.
 >  *Apply to exterior-facing edge pairs. 

2. **ENCLOSURE**
 > * Related to check the enclosure exists in polygon and the extension with enclosure .
 >  * Edge pairs must face each other.
 

* **Secondary Keywords**
They are used with DRC Rule Check operations "**INT , EXT , ENC**"

1. **ABUT**
 > * Measures separation between abutting edge pairs whose angular separation and compare it with the constraint.

2. **SINGULAR**
 > * Measures the separation between intersecting edge pairs at points of polygon.

3. **ABUT**
 > * Measures separation between abutting edge pairs whose angular separation and compare it with the constraint.

4. **Parallel**
 > * It used to measure parallel edge pairs.

5. **Perpendicular**
 > * It used to measure perpendicular edge pairs.

6. **Output with [ ]**
 > * Outputs error data from the specified input layer as positive output edge data.

7. **Output with ()**
 > * Outputs error data from the specified input layer as negative output edge data.

8. **Region**
 > * Outputs the error data from the specified input layers as a derived polygon layer.



## **Module 4: Polygon-Directed RuleChecks**
* We will preview topics related to Boolean operations and some parameters help us in selection of Polygon.

* **Boolean Operations**

1. **AND**
 > * Selects all polygon areas common between specific polygons.

2. **OR**
 >  *Merge the Overlapping of specific polygons. 

3. **NOT**
 > * Selects all layer1 polygon areas not common to layer2 polygon areas.

4. **XOR**
 > * select the 2 polygons together except the common region.

* **some commands used in selection**
1. **DONUT**
 > * Selects all input polygons having holes conforming to the constraint but without select the holes.

2. **HOLES**
 >  *Selects the holes which exists inside polygons. 

3. **INSIDE**
 > * Selects all layer1 polygons lying inside layer2 polygons.

4. **OUTSIDE**
 > * Selects all layer1 polygons lying outside layer2 polygons.

5. **TOUCH**
 > * Select polgyon which exists outside another polygon but share with it edge.

6. **AREA**
 > * Selects all input polygons having areas satisfying the specified constraint.

7. **RECTANGLE**
 > * Selects all input polygons that are rectangles having sides satisfying the constraints.

8. **Vertex**
 > * Selects all layer polygons having edge counts meeeting to the constraint.

9. **Expand Edge**
 > * Expands input polygon edges into rectangles.

10. **SIZE**
 > * Expands or shrinks input polygons by a specified value.


## **Module 5: Edge and Error-Directed Checks**
* We will preview some commands used selection of Polygon related to edges.

1. **INSIDE EDGE**
 > * Selects all layer1 edge segments that lie completely inside layer2 polygons.

2. **OUTSIDE EDGE**
 >  *Selects all layer1 edge segments that coincide with layer2 edges. 

3. **TOUCH EDGE**
 > * Selects complete layer1 edges that touch layer2 edges at more than 1 point.

4. **LENGTH**
 > * Selects all input edges whose length satisfies the constraint.


