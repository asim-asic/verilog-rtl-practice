# Parity Generator using LUT(Array) Method 

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description
This project implements a *4-bit Odd Parity Generator* using a *Look-Up Table (LUT)* approach in Verilog. It takes a 4-bit input X[3:0] and produces a 5-bit output Y[4:0] where the last bit ensures the total number of 1’s in the output is always odd.
---

## Design Approach

Uses a LUT (array-based method) instead of logic gates. All parity values are precomputed and stored, input acts as an index, and output is fetched directly: assign ParityBit = Out_T[X]; assign Y = {X, ParityBit};
---

## Parity Logic

Even number of 1’s → Parity bit = 1 
Odd number of 1’s → Parity bit = 0 
Ensures output always has odd parity.

## Files

- `parity_gen.v` → Design  
- `tb_parity_gen.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Project documentation
---

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
