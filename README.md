# Barrel-Shifter

# 🔄 Barrel Shifter in Verilog

This project implements a **parameterized barrel shifter** in Verilog that supports:

- Logical Shift Left (LSL)
- Logical Shift Right (LSR)
- Rotate Left (ROL)
- Rotate Right (ROR)

## 📁 File Structure

├── barrel_shifter.v # Main Verilog module
├── tb_barrel_shifter.v # Testbench to simulate and verify the design
├── README.md # This file


## 💡 Functionality

The barrel shifter takes an input word and shifts/rotates it based on control signals:

### Inputs:
- `data_in`     : Input data word (parameterized width)
- `shift_amt`   : Amount to shift/rotate (log₂WIDTH bits)
- `shift_type`  : Operation selector  
  - `00` → Logical Shift Left  
  - `01` → Logical Shift Right  
  - `10` → Rotate Left  
  - `11` → Rotate Right  

### Output:
- `data_out`    : Result after shift or rotate

## 🛠️ How It Works

A single `always_comb` block handles all 4 operations using bitwise and shift operators. Rotations are implemented using a combination of left and right shifts and bitwise OR.

Example for Rotate Right:
ROR(data, amt) = (data >> amt) | (data << (WIDTH - amt))


## ✅ Simulation

Use the testbench `tb_barrel_shifter.v` to test the design. It shows how the module behaves for all 4 shift types.

### Example Test Case
```verilog
data_in     = 8'b10110011;
shift_amt   = 3'd2;
shift_type  = 2'b10; // Rotate Left


parameter WIDTH = 8;
