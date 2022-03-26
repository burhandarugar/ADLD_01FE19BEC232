# ADLD_01FE19BEC232
## Examples in Verilog
### 1. Greatest Common Divisor
### 2. Multiplication of Two Numbers using addition
### 3. Pipeling of Instructions
### 4. Tic_Tac_Toe Game
### 5. Simple RAM with [ W and R]
### 6. Sequence detection
## Assignment
###  1. Parking System
###### In the entrance of the parking system, there is a sensor which is activated to detect a vehicle coming. Once the sensor is triggered, a password is requested to open 
###### the gate. If the entered password is correct, the gate would open to let the vehicle get in. Otherwise, the gate is still locked. If the current car is getting in the car 
###### park being detected by the exit sensor and another the car comes, the door will be locked and requires the coming car to enter passwords.
###  2. 4-Stage Pipeline 
###### Input - (rs1 , rs2 and rd) - Register addresses , ALU Function and (addr) - Memory addresses 
###### STAGE 1 - A = LOAD(@rs1) and B = LOAD(@rs2)
###### STAGE 2 - Z = ALU(A,B,S)
###### STAGE 3 - STORE(@rd) = Z
###### STAGE 4 - MEMORY(@addr) = Z
