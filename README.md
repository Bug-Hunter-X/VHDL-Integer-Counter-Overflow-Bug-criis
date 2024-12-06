# VHDL Integer Counter Overflow Bug

This repository demonstrates a common but subtle bug in VHDL: integer overflow in a counter.  The provided VHDL code implements a simple counter, but the use of the `integer` type can lead to unexpected behavior.  The solution illustrates a more robust approach using `std_logic_vector` to avoid overflow and improve efficiency.

## Bug Description

The original VHDL code utilizes an `integer` data type for the counter. While functional, it's prone to unexpected behavior when the counter reaches its maximum value (15 in this case). Integer overflow will occur, resetting the counter to 0, this may not be expected behavior.  This is less efficient than the alternative `std_logic_vector` implementation.

## Solution

The solution replaces the `integer` type with a `std_logic_vector`. This not only prevents unexpected overflow but also provides a more efficient implementation for counters in VHDL.
