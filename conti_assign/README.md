# Continuous Assignment Example

## Problem

Design a combinational circuit using Verilog continuous assignments.

Logic implemented:

C = A AND B  
E = C OR D  

Each gate has a propagation delay of **#5**.

----------------------------------------

## Design File

**continuous_assign.v**

Implements the logic using **continuous assignment (`assign`)** statements.

----------------------------------------

## Testbench

**tb_continuous_assign.v**

The testbench performs the following tasks:

- Generates input stimulus (A, B, D)
- Tests two cases:
  - B = 0
  - B = 1
- Displays simulation results using `$monitor`
- Ends simulation using `$finish`

-----------------------------------------

## Simulation Output

Output when B is selected as 0
Time    A B D | C E
0       1 0 0 | x x
5       1 0 0 | 0 x
10      1 0 0 | 0 0

Output when B is selected as 1
Time    A B D | C E
0       1 1 0 | x x
5       1 1 0 | 1 x
10      1 1 0 | 1 1

-----------------------------------------

## Key Concept

Continuous assignments or Concurrent statements are statements that are always ready to execute.  These are the statements that are evaluated any time and every time a signal on the right side of the statement changes. 
