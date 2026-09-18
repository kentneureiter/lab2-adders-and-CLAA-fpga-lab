ECE 128 Lab 2: Adders

Verilog code for a 1-bit full adder and two 4-bit adders (ripple carry and carry look ahead), run on the Basys3 board.

What it does
Full adder: adds A, B, and carry in (CI). Gives SUM and carry out (CO).
Ripple carry adder: 4 full adders chained together. Slower because the carry passes through each one.
Carry look ahead adder: same thing, but it figures out the carries all at once. Faster, uses more logic.

Inputs are A[3:0], B[3:0], and CI. Outputs are SUM[3:0] and CO.

Simulate it:
Make a new project in Vivado (Basys3 board).
Add the design files and the testbench files.
Set the testbench as top.
Click Run Simulation > Run Behavioral Simulation.
Check that the waveforms look right.
Run it on the board
Add the .xdc file.
Click Run Synthesis, Run Implementation, then Generate Bitstream.
Plug in the Basys3 and open Hardware Manager.
Click Program Device.
Use the switches to set A, B, and CI. The sum shows on the board.
