# ELD-LABS
End-to-end FPGA and Embedded Systems implementation on Xilinx Zynq SoC, featuring Verilog-based digital circuits, FSM design, AXI protocols, FFT signal processing, DMA integration, ARM-FPGA co-design, and hardware acceleration with performance benchmarking and ILA-based debugging.
# Embedded Logic Design (ELD) Labs - Xilinx Zynq SoC

This repository contains the laboratory work completed as part of the Embedded Logic Design (ELD) course. The projects cover digital circuit design, finite state machines (FSMs), clock generation, AXI protocols, floating-point arithmetic, FFT processing, DMA-based data transfer, ARM Cortex-A9 programming, and hardware-software co-design on the Xilinx Zynq-7000 platform.

## Technologies Used

- Verilog HDL
- Xilinx Vivado
- Xilinx Vitis / SDK
- Zynq-7000 SoC
- ARM Cortex-A9
- AXI4-Stream
- AXI4-Lite
- AXI DMA
- FFT IP Core
- Floating Point IP Cores
- Integrated Logic Analyzer (ILA)
- Virtual Input Output (VIO)

## Learning Outcomes

- Digital Design using Verilog HDL
- FSM Design (Moore and Mealy)
- Clock Division and Timing Design
- AXI-Based System Integration
- FPGA Signal Processing
- Embedded C Programming
- Hardware-Software Co-Design
- Performance Analysis of PS and PL
## Repository Structure

| Lab No. | Experiment |
|----------|------------|
| Lab 1 | 4-Bit Full Adder with Overflow Detection |
| Lab 2 | 8-Bit Up Counter |
| Lab 3 | Clock Divider and Counter Integration |
| Lab 4 | Digital Clock (Minutes and Seconds) |
| Lab 5 | Moore FSM Sequence Detector |
| Lab 6 | AXI-Based Floating Point Arithmetic |
| Lab 7 | Floating Point FFT using AXI-FFT IP |
| Lab 8 | ARM Cortex-A9 Programming on Zynq |
| Lab 9 | FFT Hardware-Software Co-Design |
| Lab 10 | PS vs PL FFT Performance Comparison |
| Lab 11 | FFT + IFFT with DMA and ILA Verification |

## Directory Layout

```text
ELD-Labs/
│
├── Lab01_Full_Adder/
├── Lab02_8bit_Counter/
├── Lab03_Clock_Divider/
├── Lab04_Digital_Clock/
├── Lab05_FSM_Sequence_Detector/
├── Lab06_AXI_Floating_Point/
├── Lab07_AXI_FFT/
├── Lab08_ARM_Programming/
├── Lab09_FFT_HW_SW_Codesign/
├── Lab10_PS_PL_Comparison/
├── Lab11_FFT_IFFT_DMA/
│
└── README.md
```
## Lab Summaries

### Lab 1 - 4-Bit Full Adder
Designed a 4-bit ripple carry adder using Verilog and verified its functionality through simulation. Implemented overflow detection for unsigned arithmetic operations.

### Lab 2 - 8-Bit Counter
Designed an 8-bit up counter using behavioral modeling and verified its operation using a testbench. Explored sequential circuit design concepts.

### Lab 3 - Clock Divider and Counter
Implemented a clock divider to generate a low-frequency clock from a high-frequency FPGA clock and integrated it with the 8-bit counter.

### Lab 4 - Digital Clock
Developed a digital clock displaying seconds and minutes using cascaded counters. Verified functionality using VIO and ILA.

### Lab 5 - FSM Sequence Detector
Implemented a Moore FSM-based sequence detector for binary pattern detection. Designed state transition and output logic in Verilog.

### Lab 6 - AXI Floating Point Arithmetic
Integrated Floating Point IP cores using AXI4-Stream interfaces to perform logarithmic and reciprocal operations in hardware.

### Lab 7 - FFT using AXI FFT IP
Designed and verified an 8-point floating-point FFT system using AXI-Stream interfaces and FFT IP cores in Vivado.

### Lab 8 - ARM Cortex-A9 Programming
Developed embedded C applications on the ARM Cortex-A9 processor and executed mathematical computations on the Zynq platform.

### Lab 9 - FFT Hardware-Software Co-Design
Implemented FFT on both ARM Processor (PS) and FPGA (PL) and explored DMA-based communication between software and hardware.

### Lab 10 - PS vs PL Performance Analysis
Compared FFT execution times on the ARM processor and FPGA hardware, demonstrating the benefits of hardware acceleration.

### Lab 11 - FFT + IFFT with ILA Verification
Implemented FFT followed by IFFT on both PS and PL, verified AXI transactions using ILA, and analyzed execution-time differences.
## Key Concepts Demonstrated

Throughout these labs, the following FPGA and Embedded Systems concepts were explored:

- Digital Design using Verilog HDL
- Combinational and Sequential Circuits
- Ripple Carry Adders and Overflow Detection
- Counters and Clock Division
- Finite State Machines (Moore & Mealy)
- AXI4-Stream Protocol
- AXI4-Lite Interface
- AXI DMA Data Transfer
- Floating Point Arithmetic IPs
- Fast Fourier Transform (FFT)
- Inverse Fast Fourier Transform (IFFT)
- ARM Cortex-A9 Programming
- Hardware-Software Co-Design
- Processor System (PS) and Programmable Logic (PL) Interaction
- Vivado IP Integrator
- Integrated Logic Analyzer (ILA)
- Virtual Input Output (VIO)
- FPGA-Based Signal Processing
- Performance Benchmarking and Optimization
## Tools & Hardware Platform

### Hardware
- Xilinx Zynq-7000 SoC Development Board
- ARM Cortex-A9 Processor
- FPGA Programmable Logic (PL)

### Software
- Xilinx Vivado Design Suite
- Xilinx Vitis / SDK
- Verilog HDL
- Embedded C

### IP Cores Used
- AXI DMA
- AXI FFT IP
- Floating Point IP
- Clock Management IP
- AXI SmartConnect
- AXI Interconnect
- Integrated Logic Analyzer (ILA)
- Virtual Input Output (VIO)

### Communication Interfaces
- AXI4-Stream
- AXI4-Lite
- DMA-Based PS-PL Communication
## Results & Highlights

- Successfully implemented and verified all digital designs on FPGA.
- Designed and tested FSM, counters, clock generation, and arithmetic circuits using Verilog.
- Integrated FFT and Floating Point IP cores through AXI interfaces.
- Established communication between ARM Cortex-A9 (PS) and FPGA Logic (PL) using AXI DMA.
- Verified AXI transactions and internal signals using Vivado ILA.
- Demonstrated lower execution time for FFT processing on FPGA compared to software execution on ARM.
- Gained hands-on experience in FPGA-based signal processing and hardware-software co-design.
## Acknowledgements

This repository was developed as part of the **Embedded Logic Design (ELD)** coursework. The labs were performed using the Xilinx Zynq-7000 platform to gain practical experience in FPGA design, embedded systems, AXI-based communication, signal processing, and hardware-software co-design.

Special thanks to the course instructors and teaching assistants for providing the lab infrastructure and guidance throughout the course.
