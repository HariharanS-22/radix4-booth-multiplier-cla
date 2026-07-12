<div align="center">

<img src="docs/banner.png" alt="Project Banner" width="100%"/>

# Radix-4 Modified Booth Multiplier with 16-bit Carry Lookahead Adder

### High-Speed Signed Multiplier • Verilog HDL • FPGA & ASIC Implementation

![Verilog](https://img.shields.io/badge/Verilog-HDL-blue?style=for-the-badge)
![Vivado](https://img.shields.io/badge/Vivado-FPGA-orange?style=for-the-badge)
![OpenLane](https://img.shields.io/badge/OpenLane-Sky130-success?style=for-the-badge)
![Yosys](https://img.shields.io/badge/Yosys-Synthesis-lightgrey?style=for-the-badge)
![Cadence](https://img.shields.io/badge/Cadence-Genus%20%26%20Innovus-red?style=for-the-badge)

**RTL Design • Functional Verification • FPGA Synthesis • RTL → GDSII**

</div>

---

# 📖 Overview

This project implements an **8-bit signed Radix-4 Modified Booth Multiplier** integrated with a **16-bit Carry Lookahead Adder (CLA)** for high-speed signed multiplication.

The multiplier reduces the number of generated partial products using **Modified Booth Encoding**, compresses them through **Carry Save Adders (CSA)**, and performs the final addition using a **Carry Lookahead Adder (CLA)**.

The complete design was:

- Developed in **Verilog HDL**
- Functionally verified using **Vivado**
- Synthesized and analyzed on FPGA
- Implemented through the complete **RTL-to-GDSII** flow using **OpenLane (Sky130)**
- Re-implemented using **Cadence Genus & Innovus (45nm)**

---

# ✨ Project Highlights

- ✅ 8-bit Signed Radix-4 Booth Multiplier
- ✅ 16-bit Carry Lookahead Adder
- ✅ Modular RTL Design
- ✅ Comprehensive Functional Verification
- ✅ FPGA Synthesis & Timing Analysis
- ✅ Complete OpenLane RTL-to-GDSII Flow
- ✅ ASIC Implementation using Cadence Genus & Innovus

---

# 🏗️ Architecture

<p align="center">
<img src="docs/radix4_cla_architecture.png" width="750">
</p>

The architecture consists of:

- Booth Encoder
- Partial Product Generator (PPG)
- Carry Save Adder Stage-I
- Carry Save Adder Stage-II
- 16-bit Carry Lookahead Adder

---

# 🧩 RTL Modules

| RTL Module | Description |
|------------|-------------|
| `booth_4.v` | Radix-4 Modified Booth Encoder |
| `ppg.v` | Partial Product Generator |
| `csa.v` | Carry Save Adder |
| `cla_16.v` | 16-bit Carry Lookahead Adder |
| `Booth_CLA_Top.v` | Top-Level Module |

---

# 🧪 Functional Verification

The RTL design was validated using a comprehensive Verilog testbench in **Vivado**, covering positive, negative, and boundary test cases.

### Sample Test Cases

| Multiplicand | Multiplier | Product |
|-------------:|-----------:|---------:|
| 5 | 3 | 15 |
| -5 | 3 | -15 |
| 127 | 127 | 16129 |
| -128 | -128 | 16384 |
| -128 | 127 | -16256 |

<p align="center">
<img src="docs/vivado_simulation.png" width="900">
</p>

---

# 📊 FPGA Implementation (Vivado)

## Resource Utilization

| Metric | Value |
|---------|------:|
| LUT Utilization | 93 LUTs (0.45%) |
| I/O Utilization | 31.13% |

<p align="center">
<img src="docs/vivado_utilization.png" width="700">
</p>

---

## Timing Performance

| Metric | Value |
|---------|------:|
| Worst Negative Slack | 6.075 ns |
| Worst Hold Slack | 1.375 ns |
| Critical Path Delay | 13.925 ns |

<p align="center">
<img src="docs/vivado_timingsummary.png" width="700">
</p>

---

## Power Analysis

| Metric | Value |
|---------|------:|
| Total On-Chip Power | 0.078 W |
| Dynamic Power | 0.008 W |
| Static Power | 0.070 W |

<p align="center">
<img src="docs/vivado_poweranalysis.png" width="700">
</p>

---

# 🏭 ASIC Implementation (OpenLane - Sky130)

## RTL → GDSII Flow

### Floorplan

<p align="center">
<img src="docs/openlane_floorplan.png" width="700">
</p>

---

### Placement

<p align="center">
<img src="docs/openlane_placement.png" width="700">
</p>

---

### Routing

<p align="center">
<img src="docs/openlane_routing.png" width="700">
</p>

---

### Final GDSII Layout

<p align="center">
<img src="docs/openlane_gds-ii.png" width="700">
</p>

---

## OpenLane Results

| Metric | Value |
|---------|------:|
| Standard Cells | 505 |
| Cell Area | 3968.81 μm² |
| Core Utilization | 31.49% |
| Wire Length | 12842 μm |
| Total Vias | 3553 |
| DRC Violations | 0 |

---

## Timing Summary

| Stage | Delay |
|--------|------:|
| Post-Synthesis | 12.84 ns |
| Post-Placement | 11.68 ns |
| Post-Routing | 11.96 ns |

---

# 🏭 ASIC Implementation (Cadence Genus & Innovus)

<p align="center">
<img src="docs/cadence_floorplan.png" width="650">
</p>

## Results

| Metric | Value |
|---------|------:|
| Technology | 45 nm |
| Cell Count | 195 |
| Total Area | 1073.284 μm² |
| Critical Path Delay | 1.278 ns |
| Timing Slack | 8.722 ns |

---

# 📈 Performance Comparison

| Platform | Technology | Delay | Area |
|----------|------------|------:|------:|
| Vivado | FPGA | **13.925 ns** | **93 LUTs** |
| OpenLane | Sky130 | **11.96 ns** | **3968.81 μm²** |
| Cadence | 45 nm | **1.278 ns** | **374.49 μm²** |

---

# 📂 Repository Structure

```
.
├── rtl/              # Verilog RTL source files
├── testbench/        # Functional verification
├── docs/             # Images used in README
├── reports/          # Vivado & OpenLane reports
└── README.md
```

---

# 🚀 Future Enhancements

- 16-bit and 32-bit Booth Multiplier
- Radix-8 Booth Encoding
- Wallace Tree Reduction
- Pipelined Architecture
- Low-Power Optimization
- Static Timing Optimization

---

# 🛠️ Tools & Technologies

- Verilog HDL
- Xilinx Vivado
- GTKWave
- Yosys
- OpenLane
- OpenROAD
- Magic
- Netgen
- Sky130 PDK
- Cadence Genus
- Cadence Innovus

---

# 📄 Project Report

A detailed project report describing the architecture, RTL implementation, FPGA synthesis, ASIC implementation, timing analysis, and experimental results is available below.

📘 **Report:** [Radix-4_Booth_Multiplier_CLA_Report.pdf](reports/Radix-4_Booth_Multiplier_CLA_Report.pdf)

# 👨‍💻 Developer

**Saabiq U A**

B.E. Electronics and Communication Engineering  
**College of Engineering Guindy (Anna University)**

### Areas of Interest

- RTL Design
- Computer Architecture
- ASIC Physical Design
- RISC-V Processor Design

---

<div align="center">

### ⭐ If you found this project interesting, consider giving it a Star!

Made with ❤️ using Verilog, OpenLane & Cadence

</div>