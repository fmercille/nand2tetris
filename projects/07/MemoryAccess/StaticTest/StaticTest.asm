// push constant 111
@111 // D=111
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 333
@333 // D=333
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 888
@888 // D=888
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop static 8
@SP // SP--
AM=M-1
D=M
@StaticTest.8
M=D
// pop static 3
@SP // SP--
AM=M-1
D=M
@StaticTest.3
M=D
// pop static 1
@SP // SP--
AM=M-1
D=M
@StaticTest.1
M=D
// push static 3
@StaticTest.3
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push static 1
@StaticTest.1
D=M
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
// push static 8
@StaticTest.8
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
