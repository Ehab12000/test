# **Calibre® Rule Writing - DRC Part**  

In this document, we will review the main commands used in writing rules for **Design Rule Checking (DRC) and Layout Versus Schematic (LVS) in Calibre**.  

Before diving into rule writing, it is essential to understand when DRC and LVS are performed in the design process. The following figure illustrates the **IC design flow**, highlighting that **Physical Verification**, which consists of **DRC and LVS**, occurs after the **Layout stage** and before the **Fabrication stage**.  

```mermaid
graph
A[Source Netlist] --> B[Simulation] --> C[Layout] --> D[Physical Verification DRC & LVS] --> E[Fabrication]

