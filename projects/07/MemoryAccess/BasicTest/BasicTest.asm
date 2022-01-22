// push constant 10
@10 // D=10
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 0
@0 // D=LCL[0]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 21
@21 // D=21
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 22
@22 // D=22
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop argument 2
@2 // D=ARG[2]
D=A
@ARG
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop argument 1
@1 // D=ARG[1]
D=A
@ARG
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 36
@36 // D=36
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop this 6
@6 // D=THIS[6]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 42
@42 // D=42
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 5
@5 // D=THAT[5]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop that 2
@2 // D=THAT[2]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 510
@510 // D=510
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop temp 6
@6
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push local 0
@0 // D=0
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push that 5
@5 // D=5
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+5]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// push argument 1
@1 // D=1
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// sub
@SP // SP--
AM=M-1
D=M
A=A-1
M=D-M
M=-M
// push this 6
@6 // D=6
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+6]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 6
@6 // D=6
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+6]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// sub
@SP // SP--
AM=M-1
D=M
A=A-1
M=D-M
M=-M
// push temp 6
@6 // D=6
D=A
@5 // A=RAM[5+D]
A=D+A
D=M // D=RAM[5+6]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
