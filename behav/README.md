# Excess-3 Code Converter - Behavioral Modeling(FSM)

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description

This project implements an **Excess-3 Code Converter** using a **Behavioral Modeling** in Verilog.

The design reads a **serial binary input stream** and produces an output corresponding to the **Excess-3 coded representation**.  

This design is implemented as a **Mealy Finite State Machine Machine**, the **output depends on both the current state and the input**, and state transitions occur on the **rising edge of the clock**.

---

## FSM Characteristics

- FSM Type: **Mealy Machine**
- Clock Edge: **Positive Edge Triggered**
- Number of States: **7 (0 – 6)**
- State Register Width: **3 bits**

---
## FSM Structure

The design consists of two main blocks.

### 1. Combinational Logic

Calculates:
- Next state (`Nextstate`)
- Output (`Z`)

```verilog
always @(State or X)
```

---

### 2. State Register

Updates the current state on the rising edge of the clock.

```verilog
always @(posedge CLK)
begin
    State <= Nextstate;
end
```

---

## Files

- `code_converter.v` → Verilog RTL design  
- `tb_code_converter.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Project documentation
---

## Simulation Output Signals

| Signal | Description |
|------|-------------|
| CLK | Clock signal |
| X | Serial input |
| STATE | Current FSM state |
| NEXTSTATE | Next FSM state |
| Z | Output bit |

---

## FSM Implementation Notes

- The FSM uses a **case statement** to describe state transitions.
- A **default case** is included for safety in case of invalid states.
- State transitions occur only on the **positive edge of the clock**.

---

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
