# Full Adder – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

## Overview

This example demonstrates the behavioral difference between blocking ("=") and non-blocking ("<=") assignments in sequential logic using Verilog.

Understanding the difference between these two assignment types is essential when designing synchronous digital circuits, especially when working with registers and clocked logic.

---

## Design Description

The module "sequential_module" contains two "always" blocks triggered on the positive edge of the clock.

Blocking Assignment
```
A = B;
B = A;
```
Blocking assignments execute sequentially within the procedural block.
The second statement uses the updated value from the first statement.

---

Non-Blocking Assignment
```
C <= D;
D <= C;
```
Non-blocking assignments update concurrently at the clock edge.
All right-hand side expressions are evaluated first, and updates occur simultaneously.

---
## Key Concept

| Assignment Type | Operator | Execution Behavior |
|-----------------|----------|--------------------|
| Blocking        | `=`      | Executes sequentially within the block |
| Non-Blocking    | `<=`     | Updates occur concurrently at the clock edge |

## Design rule used in RTL design:

- Use blocking assignments ("=") for combinational logic
- Use non-blocking assignments ("<=") for sequential logic

----

## Learning Objective

This example is intended for educational purposes to illustrate how assignment types affect execution order and behavior in sequential logic.

## Files

- `sequential_module.v` → Verilog design
- `README.md` → Project Documentation

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
