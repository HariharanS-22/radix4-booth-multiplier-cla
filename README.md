<div align="center">

# Radix-4 Modified Booth Multiplier with 16-bit Carry Lookahead Adder

### High-Speed Signed Multiplier | Verilog HDL | FPGA & ASIC Implementation

![Verilog](https://img.shields.io/badge/Verilog-HDL-blue)
![Vivado](https://img.shields.io/badge/Xilinx-Vivado-orange)
![OpenLane](https://img.shields.io/badge/OpenLane-Sky130-success)
![Yosys](https://img.shields.io/badge/Yosys-Synthesis-lightgrey)
![Cadence](https://img.shields.io/badge/Cadence-Genus%20%26%20Innovus-red)
![License](https://img.shields.io/badge/License-MIT-green)

</div>

---

# 📖 Overview

This project implements an **8-bit signed Radix-4 Modified Booth Multiplier** integrated with a **16-bit Carry Lookahead Adder (CLA)** to achieve high-speed multiplication.

The multiplier was designed in **Verilog HDL**, functionally verified using **Vivado**, synthesized on FPGA, and implemented through a complete **RTL-to-GDSII ASIC design flow** using both **OpenLane (Sky130)** and **Cadence Genus & Innovus (45 nm)**.

The project demonstrates the complete digital IC design flow—from RTL design to physical layout—while analyzing timing, area, and power across FPGA and ASIC implementations.

---

# ✨ Features

- ✔ 8-bit Signed Multiplication
- ✔ Radix-4 Modified Booth Encoding
- ✔ Partial Product Generation
- ✔ Carry Save Adder (CSA) Reduction
- ✔ 16-bit Carry Lookahead Adder (CLA)
- ✔ Functional Verification
- ✔ FPGA Synthesis using Vivado
- ✔ Timing & Power Analysis
- ✔ RTL-to-GDSII using OpenLane (Sky130)
- ✔ ASIC Implementation using Cadence Genus & Innovus

---

# 🏗 Architecture

```
                 Multiplier Inputs (X,Y)
                         │
                         ▼
              Radix-4 Booth Encoder
                         │
                         ▼
          Partial Product Generator (PPG)
                         │
                         ▼
               Carry Save Adder Stage 1
                         │
                         ▼
               Carry Save Adder Stage 2
                         │
                         ▼
          16-bit Carry Lookahead Adder
                         │
                         ▼
                  16-bit Product
```

> **Add your architecture image here**

```md
<p align="center">
<img src="docs/Architecture.png" width="700">
</p>
```

---

# 📂 Repository Structure

```
radix4-booth-multiplier-cla
│
├── rtl/
│   ├── booth_4.v
│   ├── ppg.v
│   ├── csa.v
│   ├── cla_16.v
│   └── Booth_CLA_Top.v
│
├── testbench/
│   └── Booth_CLA_Top_tb.v
│
├── docs/
│   ├── Architecture.png
│   ├── Simulation.png
│   ├── Floorplan.png
│   ├── Placement.png
│   ├── Routing.png
│   ├── GDSII.png
│
├── reports/
│   ├── Vivado_Report.pdf
│   ├── OpenLane_Report.pdf
│
└── README.md
```

---

# ⚙ Design Flow

```
RTL Design
     │
     ▼
Functional Verification
     │
     ▼
Vivado Synthesis
     │
     ▼
Timing & Power Analysis
     │
     ▼
Yosys Synthesis
     │
     ▼
OpenLane Floorplanning
     │
     ▼
Placement
     │
     ▼
Clock Tree Synthesis
     │
     ▼
Routing
     │
     ▼
Magic Layout
     │
     ▼
DRC / LVS
```

---

# 🔩 Module Description

| Module | Function |
|---------|----------|
| Booth Encoder | Generates Booth control signals |
| Partial Product Generator | Produces signed partial products |
| Carry Save Adder | Compresses multiple partial products |
| Carry Lookahead Adder | Performs final high-speed addition |
| Top Module | Integrates the complete datapath |

---

# 🧪 Functional Verification

The design was verified using a Verilog testbench in **Vivado**.

### Verified Test Cases

| X | Y | Product |
|---:|---:|--------:|
| 5 | 3 | 15 |
| -5 | 3 | -15 |
| 127 | 127 | 16129 |
| -128 | -128 | 16384 |
| -128 | 127 | -16256 |

---

### Simulation Waveform

```md
<p align="center">
<img src="docs/Simulation.png" width="900">
</p>
```

---

# 📊 FPGA Implementation (Vivado)

| Parameter | Result |
|-----------|--------|
| LUT Utilization | 93 LUTs (0.45%) |
| Worst Negative Slack | 6.075 ns |
| Total Negative Slack | 0 ns |
| Critical Path Delay | 13.925 ns |
| Total Power | 0.078 W |

---

# 🏭 ASIC Implementation (OpenLane + Sky130)

## Synthesis

| Parameter | Value |
|-----------|------|
| Standard Cells | 505 |
| Cell Area | 3968.81 μm² |

---

## Floorplanning

| Parameter | Value |
|-----------|------|
| Die Size | 126.06 × 136.78 μm |
| Die Area | 17241.4 μm² |

---

## Placement

| Parameter | Value |
|-----------|------|
| Core Utilization | 31.49% |
| Total Instances | 765 |

---

## Routing

| Parameter | Value |
|-----------|------|
| Metal Layers | M1–M3 |
| Total Wire Length | 12842 μm |
| Total Vias | 3553 |
| DRC Violations | 0 |

---

## Timing

| Stage | Delay |
|-------|-------|
| Post-Synthesis | 12.84 ns |
| Post-Placement | 11.68 ns |
| Post-Routing | 11.96 ns |

---

# 🏭 ASIC Implementation (Cadence)

| Parameter | Value |
|-----------|------|
| Technology | 45 nm |
| Cell Count | 195 |
| Total Area | 1073.284 μm² |
| Critical Path Delay | 1.278 ns |
| Slack | 8.722 ns |

---

# 📈 Performance Comparison

| Implementation | Delay | Area |
|---------------|-------|------|
| Vivado FPGA | 13.925 ns | 93 LUTs |
| OpenLane Sky130 | 11.96 ns | 3968.81 μm² |
| Cadence 45 nm | 1.278 ns | 374.49 μm² |

---

# 📷 Physical Design Results

## Floorplan

```md
<img src="docs/Floorplan.png">
```

---

## Placement

```md
<img src="docs/Placement.png">
```

---

## Routing

```md
<img src="docs/Routing.png">
```

---

## Final GDSII Layout

```md
<img src="docs/GDSII.png">
```

---

# 🚀 Future Improvements

- 16-bit & 32-bit Booth Multiplier
- Wallace Tree Compression
- Radix-8 Booth Encoding
- Pipelined Architecture
- Low-Power Optimizations
- STA Optimization

---

# 📚 Tools Used

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

# 👨‍💻 Author

**Saabiq U A**

Electronics and Communication Engineering  
College of Engineering Guindy, Anna University

Interested in **RTL Design • Computer Architecture • ASIC Design • RISC-V**

---

⭐ If you found this project interesting, consider giving it a **star**!