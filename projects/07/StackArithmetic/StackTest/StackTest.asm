// push constant 17
@17 // D=17
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 17
@17 // D=17
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// eq
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__EQ__TRUE_2__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_2__
0;JMP
(__EQ__TRUE_2__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_2__)
// push constant 17
@17 // D=17
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 16
@16 // D=16
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// eq
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__EQ__TRUE_5__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_5__
0;JMP
(__EQ__TRUE_5__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_5__)
// push constant 16
@16 // D=16
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 17
@17 // D=17
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// eq
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__EQ__TRUE_8__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_8__
0;JMP
(__EQ__TRUE_8__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_8__)
// push constant 892
@892 // D=892
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 891
@891 // D=891
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// lt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_11__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_11__
0;JMP
(__GT__TRUE_11__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_11__)
// push constant 891
@891 // D=891
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 892
@892 // D=892
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// lt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_14__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_14__
0;JMP
(__GT__TRUE_14__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_14__)
// push constant 891
@891 // D=891
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 891
@891 // D=891
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// lt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_17__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_17__
0;JMP
(__GT__TRUE_17__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_17__)
// push constant 32767
@32767 // D=32767
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 32766
@32766 // D=32766
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// gt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_20__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_20__
0;JMP
(__GT__TRUE_20__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_20__)
// push constant 32766
@32766 // D=32766
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 32767
@32767 // D=32767
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// gt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_23__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_23__
0;JMP
(__GT__TRUE_23__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_23__)
// push constant 32766
@32766 // D=32766
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 32766
@32766 // D=32766
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// gt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_26__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_26__
0;JMP
(__GT__TRUE_26__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_26__)
// push constant 57
@57 // D=57
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 31
@31 // D=31
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 53
@53 // D=53
D=A
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
// push constant 112
@112 // D=112
D=A
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
// neg
@SP
A=M-1
M=-M
// and
@SP // SP--
AM=M-1
D=M
A=A-1
M=D&M
// push constant 82
@82 // D=82
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// or
@SP // SP--
AM=M-1
D=M
A=A-1
M=D|M
// not
@SP
A=M-1
M=!M
