// push constant 3030
@3030 // D=3030
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop pointer 0
@SP // SP--
AM=M-1
D=M
@THIS // *THIS=D
M=D
// push constant 3040
@3040 // D=3040
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop this 2
@2 // D=THIS[2]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 46
@46 // D=46
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 6
@6 // D=THAT[6]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push pointer 0
@THIS // D=*THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push pointer 1
@THAT // D=*THAT
D=M
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
// push this 2
@2 // D=2
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+2]
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
// push that 6
@6 // D=6
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+6]
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
