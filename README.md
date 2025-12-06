<h1 align="center">🛠️ PLC-Based Hydraulic Press Automation System</h1>
<p align="center"> A complete PLC automation project using Ladder Logic (LD), Timers, and Sequential Control — Designed & Simulated in RSLogix / OpenPLC. </p>

<h2>📌 Project Overview</h2>

This project demonstrates the design and simulation of an automated hydraulic press system using a Programmable Logic Controller (PLC).
The system is programmed in Ladder Logic (LD) and simulated using RSLogix/OpenPLC.

The goal is to automatically control the press sequence:

1.Press Start

2.Delay

3.Forward stroke

4.Hold

5.Retract

6.Stop safely

This improves safety, repeatability, and efficiency in industrial operations.

<h2>🎯 Objectives</h2>

✔ Implement Start/Stop control using PLC inputs

✔ Control Forward → Hold → Retract sequence

✔ Use TON timers for precise timing

✔ Build a Latch Circuit for safe operation

✔ Simulate the system using RSLogix/OpenPLC

<h2>🧰 PLC Inputs, Outputs & Timers</h2>

Input/Output Table

| Variable    | Type             | Description                  |
| ----------- | ---------------- | ---------------------------- |
| **Start**   | BOOL (Input)     | Initiates the press cycle    |
| **Stop**    | BOOL (Input, NC) | Emergency stop / reset       |
| **M_0**     | BOOL (Memory)    | Latching bit for cycle       |
| **Press_A** | BOOL (Output)    | Forward stroke (piston down) |
| **Press_B** | BOOL (Output)    | Hold press position          |
| **Press_C** | BOOL (Output)    | Retract piston               |

Timer Table

| Timer    | Duration   | Purpose                     |
| -------- | ---------- | --------------------------- |
| **TON0** | 5 seconds  | Delay before forward motion |
| **TON1** | 7 seconds  | Hold press duration         |
| **TON2** | 10 seconds | Retraction period           |

<h2>📟 Ladder Logic Explanation</h2>
🔹 Rung 1: Start/Stop Latching

   • Start energizes M_0 (latching bit)

   • Stop immediately resets the cycle

   • Ensures safe start/stop control

🔹 Rung 2: Forward Stroke Activation

   • When M_0 is ON → TON0 timer starts (5s)

   • After 5 seconds → Press_A = ON

   • Piston begins downward motion

🔹 Rung 3: Press Hold Activation

   • Once Press_A completes, TON1 begins (7s)

   • Press_B = ON

   • Piston holds pressure on the workpiece

🔹 Rung 4: Retraction

   • After hold time, TON2 runs (10s)

   • Press_C = ON

   • Piston retracts to home position

<h2>🧪 Simulation Results</h2>

The press cycle follows this automatic sequence:

1.Start pressed → Cycle begins (M_0 = ON)

2.After 5s → Forward stroke (Press_A = 1)

3.After 7s → Hold (Press_B = 1)

4.After 10s → Retract (Press_C = 1)

5.Stop pressed anytime → All outputs OFF

This was verified in OpenPLC/RSLogix simulation.

<h2>📂 Folder Structure</h2>

```
plc-based-hydraulic-press-automation/
│
├─ ladder_logic/
│   └─ program.xml                 # PLCOpen XML ladder code
│
├─ documentation/
│   ├─ Report.pdf                  # Full project report
│   ├─ simulation_screenshots/     # Simulation results
│   └─ input_output_table.png
│
├─ diagrams/
│   └─ hydraulic_press_flowchart.png
│
└─ README.md                       # This file
```
<h2>📝 Observations</h2>

• Timers ensure accurate, repeatable machine operation

• Latch logic makes system safe and reliable

• Outputs activate sequentially without conflict

• System can be expanded using sensors and interlocks

<h2>🏁 Conclusion</h2>

The project successfully:

• Automated a Hydraulic Press Cycle

• Used PLC Ladder Logic for real-time control

• Demonstrated proper use of timers, coils, latches

• Simulated complete system using RSLogix/OpenPLC

• Improved safety and repeatability over manual operation

This can be applied in industries such as metal forming, sheet pressing, molding, stamping, etc.


## 📸 Simulation & Ladder Logic Screenshots

### 🔹 Hydraulic Press Ladder Logic
<p align="center">
  <img src="Screenshots/Screenshot 2025-12-06 231842.png" width="700">
</p>

---

### 🔹 Simulation Results 

<p align="center">
  <img src="Screenshots/WhatsApp Image 2025-12-06 at 23.01.15_f589d0ee.jpg" width="600">
</p>

---

### 🔹 Timer Operation (TON0, TON1, TON2)
<p align="center">
  <img src="Screenshots/WhatsApp Image 2025-12-06 at 23.01.16_611d295f.jpg" width="600">
</p>

<p align="center">
  <img src="Screenshots/WhatsApp Image 2025-12-06 at 23.01.16_f56d4b11.jpg" width="600">
</p>



<h2>🚀 Future Improvements</h2>

• Add limit switches for precise piston travel

• Add pressure sensors for load-based control

• Convert into a HMI-based control panel

• Implement safety interlocks and alarms

<h2>👤 Developer</h2>

Rushikesh Sable

PRN: 202201070107

rushikeshsable9850@gmail.com

Course: Process Automation

Programming Language: Ladder Diagram (LD)

Simulation Tools: RSLogix / OpenPLC
