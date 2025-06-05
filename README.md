# RTL2GDSII-Project
# 8-Bit Ripple Carry Adder (RCA) – RTL to GDSII Flow

This repository contains the complete RTL to GDSII flow for an **8-bit Ripple Carry Adder (RCA)**, designed using **1-bit Full Adders** as the fundamental building block. The design is implemented and verified using Synopsys tools like **Design Compiler (DC)**, **VCS**, **Verdi**, **IC Compiler II (ICC2)**, and **PrimeTime (PT)**.

---
## 📌 Key Highlights

    ✅ Clean synthesis with no DRC/LVS violations

    ⏱️ STA passed with positive slack

    📐 Standard 32nm PDK used (SAED32)


## 🛠️ Tools Used

| Tool            | Purpose                        |
|----------------|----------------------------------|
| **VCS**         | Functional Simulation            |
| **Verdi**       | Waveform Debugging               |
| **Design Compiler (DC)** | RTL Synthesis          |
| **IC Compiler II (ICC2)** | Floorplanning, Power Planning, Placement, CTS, Routing |
| **PrimeTime (PT)** | Static Timing Analysis (STA) |
| **SAED32nm Library** | Technology Library used – `saed32rvt_ff1p16v125c` |

> ✅ The library `saed32rvt_ff1p16v125c.lib` belongs to the **Synopsys 32nm SAED library**, operating at **1.16V** and **125°C** under typical (FF-FastFast) conditions.

---

## 🧠 Design Overview

The 8-bit Ripple Carry Adder is composed of:
- **8 instances** of a **1-bit full adder**
- Serial propagation of carry from LSB to MSB

---

## 🚀 How to Run

1. **Simulation using VCS**
   ```bash
   vcs -full64 full_adder_1bit.v -debug_acess+all -lca -kdb
   vcs -full64 full_adder_8bit.v -debug_acess+all -lca -kdb
   vcs -full64 testbench_8bit.v -debug_acess+all -lca -kdb
   ./simv Verdi

   #View waveforms using Verdi

   verdi -ssf novas.fsdb -nologo


2. Synthesize using DC
   ```bash

    #Use dc_shell and load synthesis script:

    source run_dc.tcl

3. APR using ICC2
   ```bash

    #Launch ICC2 GUI or shell and run all the scripts:

    source floorplan.tcl
    source power_planning.tcl
    source placement.tcl
    source clock.tcl
    source route.tcl

4. Timing Analysis using PrimeTime
   ```bash 
    #From pt_shell, run:

        source run_pt_p1.tcl
        source run_pt_p2.tcl

## 📸 Results

All the simulation waveforms, RTL and gate-level netlists, timing reports, floorplan, placement, routing snapshots, and final GDSII layout are included in the RESULTS/ folder.

Examples include:

    Functional Simulation Output

    Netlist Reports

    Cell Area and Utilization

    STA Slack and Timing Paths

    
    Power Reports

    Layout (GDS & Screenshots)
    

## 📁 Project Structure

├── CONSTRAINTS\
│   └── full_adder.sdc\
├── DC\
│   ├── alib-52\
│   ├── reports\
│   ├── results\
│   ├── rm_setup\
│   ├── run_dc.tcl\
│   ├── WORK\
│   └── work_dir\
├── ICCII\
│   ├── FULL_ADDER_8BIT_LIB\
│   │   ├── FULL_ADD_8BIT_Clock\
│   │   ├── FULL_ADD_8BIT_Floorplan\
│   │   ├── FULL_ADD_8BIT_Placement\
│   │   ├── FULL_ADD_8BIT_PowerPlan\
│   │   ├── FULL_ADD_8BIT_Route\
│   │   ├── full_adder_8bit_v\
│   ├── reports\
│   ├── results\
│   ├── scripts\
│   └── work_dir\
├── PT\
│   ├── reports\
│   ├── scripts\
│   │   ├── run_pt_p1.tcl\
│   │   └── run_pt_p2.tcl\
├── README.md\
├── ref\
│   ├── lib\
│   └── tech\
├── RESULTS\
│   ├── DC\
│   ├── ICCII\
│   ├── PT\
│   └── VCS - Verdi\
├── rtl\
│   ├── full_adder_1bit.v\
│   ├── full_adder_8bit.v\
│   └── testbench_8bit.v\
└── rtl_simulation\
    ├── full_adder_1bit.v\
    ├── full_adder_8bit.v\
    ├── novas.fsdb\
    ├── testbench_8bit.v\
   

📬 Contact

For any queries or collaborations, feel free to reach out via GitHub Issues.
