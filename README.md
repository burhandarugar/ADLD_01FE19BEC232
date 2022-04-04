# ADLD_01FE19BEC232
## Examples in Verilog
### 1. Greatest Common Divisor
### 2. Multiplication of Two Numbers using addition
### 3. Pipeling of Instructions
### 4. Tic_Tac_Toe Game
### 5. Simple RAM with [ W and R]
### 6. Sequence detection
### 7. SR Flip flop
### 8. Half Adder
## Assignment
###  1. Parking System
###### In the entrance of the parking system, there is a sensor which is activated to detect a vehicle coming. Once the sensor is triggered,
###### a password is requested to open  the gate. If the entered password is correct, the gate would open to let the vehicle get in.
###### Otherwise, the gate is still locked. If the current car is getting in the car park being detected by the exit sensor and another
###### the car comes, the door will be locked and requires the coming car to enter passwords.
###  2. 4-STAGE Pipeline 
###### Input - (rs1 , rs2 and rd) - Register addresses , ALU Function and (addr) - Memory addresses 
###### STAGE 1 - A = LOAD(@rs1) and B = LOAD(@rs2)
###### STAGE 2 - Z = ALU(A,B,S)
###### STAGE 3 - STORE(@rd) = Z
###### STAGE 4 - MEMORY(@addr) = Z
## COURSE PROJECT
### STATEMENT - Parallel Multiplier–Accumulator Based on Radix-2 Modified Booth Algorithm
### BOOTH
#### -->  Booth algorithm gives a procedure for multiplying binary integers in signed 2’s complement representation in efficient way, i.e., less number of additions/subtractions required. It operates on the fact that strings of 0’s in the multiplier require no addition but just shifting and a string of 1’s in the multiplier from bit weight 2^k to weight 2^m can be treated as 2^(k+1 ) to 2^m.
#### -->  As in all multiplication schemes, booth algorithm requires examination of the multiplier bits and shifting of the partial product. Prior to the shifting, the multiplicand may be added to the partial product, subtracted from the partial product, or left unchanged according to following rules:
#### 1. The multiplicand is subtracted from the partial product upon encountering the first least significant 1 in a string of 1’s in the multiplier
#### 2. The multiplicand is added to the partial product upon encountering the first 0 (provided that there was a previous ‘1’) in a string of 0’s in the multiplier.
#### 3. The partial product does not change when the multiplier bit is identical to the previous multiplier bit.
### MODIFIED BOOTH
