// bootstrap
@256
D=A
@SP
M=D
@__bootstrap__ret__0__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@5
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Sys.init // Jump to function
0;JMP
(__bootstrap__ret__0__)
// function Game.new 0
(Game.new)
// push constant 2
@2 // D=2
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.alloc 1
@__Game__ret__1__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.alloc // Jump to function
0;JMP
(__Game__ret__1__)
// pop pointer 0
@SP // SP--
AM=M-1
D=M
@THIS // *THIS=D
M=D
// call Screen.clearScreen 0
@__Game__ret__2__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@5
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Screen.clearScreen // Jump to function
0;JMP
(__Game__ret__2__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 512
@512 // D=512
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
// sub
@SP // SP--
AM=M-1
D=M
A=A-1
M=D-M
M=-M
// call Runner.new 2
@__Game__ret__3__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.new // Jump to function
0;JMP
(__Game__ret__3__)
// pop this 0
@0 // D=THIS[0]
D=A
@THIS
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
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Game.dispose 0
(Game.dispose)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Runner.dispose 1
@__Game__ret__4__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.dispose // Jump to function
0;JMP
(__Game__ret__4__)
// pop temp 0
@0
D=A
@5
D=D+A
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
// call Memory.deAlloc 1
@__Game__ret__5__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.deAlloc // Jump to function
0;JMP
(__Game__ret__5__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Game.getInstance 0
(Game.getInstance)
// push static 0
@Game.0
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 0
@0 // D=0
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
@__EQ__TRUE_28__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_28__
0;JMP
(__EQ__TRUE_28__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_28__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// call Game.new 0
@__Game__ret__6__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@5
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Game.new // Jump to function
0;JMP
(__Game__ret__6__)
// pop static 0
@SP // SP--
AM=M-1
D=M
@Game.0
M=D
// label IF_FALSE0
(IF_FALSE0)
// push static 0
@Game.0
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Game.run 4
(Game.run)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
A=A+1
M=0 // LCL[1]
A=A+1
M=0 // LCL[2]
A=A+1
M=0 // LCL[3]
D=A+1 // Set SP
@SP
M=D
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 2
@2 // D=LCL[2]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// call Wall.initialize 0
@__Game__ret__7__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@5
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Wall.initialize // Jump to function
0;JMP
(__Game__ret__7__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 14
@14 // D=14
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.new 1
@__Game__ret__8__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.new // Jump to function
0;JMP
(__Game__ret__8__)
// push constant 84
@84 // D=84
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__9__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__9__)
// push constant 101
@101 // D=101
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__10__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__10__)
// push constant 115
@115 // D=115
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__11__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__11__)
// push constant 116
@116 // D=116
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__12__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__12__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__13__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__13__)
// push constant 102
@102 // D=102
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__14__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__14__)
// push constant 111
@111 // D=111
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__15__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__15__)
// push constant 114
@114 // D=114
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__16__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__16__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__17__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__17__)
// push constant 119
@119 // D=119
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__18__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__18__)
// push constant 97
@97 // D=97
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__19__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__19__)
// push constant 108
@108 // D=108
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__20__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__20__)
// push constant 108
@108 // D=108
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__21__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__21__)
// push constant 115
@115 // D=115
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Game__ret__22__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Game__ret__22__)
// call Course.new 1
@__Game__ret__23__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Course.new // Jump to function
0;JMP
(__Game__ret__23__)
// pop local 3
@3 // D=LCL[3]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label WHILE_EXP0
(WHILE_EXP0)
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// not
@SP
A=M-1
M=!M
// not
@SP
A=M-1
M=!M
// if-goto WHILE_END0
@SP // Pop
AM=M-1
D=M
@WHILE_END0
D;JNE
// call Keyboard.keyPressed 0
@__Game__ret__24__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@5
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Keyboard.keyPressed // Jump to function
0;JMP
(__Game__ret__24__)
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
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
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
// push constant 0
@0 // D=0
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
@__EQ__TRUE_91__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_91__
0;JMP
(__EQ__TRUE_91__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_91__)
// if-goto IF_TRUE1
@SP // Pop
AM=M-1
D=M
@IF_TRUE1
D;JNE
// goto IF_FALSE1
@IF_FALSE1
0;JMP
// label IF_TRUE1
(IF_TRUE1)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE1
(IF_FALSE1)
// goto IF_END0
@IF_END0
0;JMP
// label IF_FALSE0
(IF_FALSE0)
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
// push constant 130
@130 // D=130
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
@__EQ__TRUE_102__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_102__
0;JMP
(__EQ__TRUE_102__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_102__)
// if-goto IF_TRUE2
@SP // Pop
AM=M-1
D=M
@IF_TRUE2
D;JNE
// goto IF_FALSE2
@IF_FALSE2
0;JMP
// label IF_TRUE2
(IF_TRUE2)
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Runner.hide 1
@__Game__ret__25__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.hide // Jump to function
0;JMP
(__Game__ret__25__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 1
@1 // D=1
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Runner.move 2
@__Game__ret__26__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.move // Jump to function
0;JMP
(__Game__ret__26__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Runner.show 1
@__Game__ret__27__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.show // Jump to function
0;JMP
(__Game__ret__27__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// not
@SP
A=M-1
M=!M
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE2
(IF_FALSE2)
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
// push constant 132
@132 // D=132
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
@__EQ__TRUE_122__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_122__
0;JMP
(__EQ__TRUE_122__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_122__)
// if-goto IF_TRUE3
@SP // Pop
AM=M-1
D=M
@IF_TRUE3
D;JNE
// goto IF_FALSE3
@IF_FALSE3
0;JMP
// label IF_TRUE3
(IF_TRUE3)
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Runner.hide 1
@__Game__ret__28__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.hide // Jump to function
0;JMP
(__Game__ret__28__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 2
@2 // D=2
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Runner.move 2
@__Game__ret__29__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.move // Jump to function
0;JMP
(__Game__ret__29__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Runner.show 1
@__Game__ret__30__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.show // Jump to function
0;JMP
(__Game__ret__30__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// not
@SP
A=M-1
M=!M
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE3
(IF_FALSE3)
// label IF_END0
(IF_END0)
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
// push constant 140
@140 // D=140
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
@__EQ__TRUE_143__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_143__
0;JMP
(__EQ__TRUE_143__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_143__)
// if-goto IF_TRUE4
@SP // Pop
AM=M-1
D=M
@IF_TRUE4
D;JNE
// goto IF_FALSE4
@IF_FALSE4
0;JMP
// label IF_TRUE4
(IF_TRUE4)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// not
@SP
A=M-1
M=!M
// pop local 2
@2 // D=LCL[2]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE4
(IF_FALSE4)
// push local 3
@3 // D=3
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+3]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Course.advance 1
@__Game__ret__31__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Course.advance // Jump to function
0;JMP
(__Game__ret__31__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 10
@10 // D=10
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Sys.wait 1
@__Game__ret__32__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Sys.wait // Jump to function
0;JMP
(__Game__ret__32__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// goto WHILE_EXP0
@WHILE_EXP0
0;JMP
// label WHILE_END0
(WHILE_END0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Course.new 5
(Course.new)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
A=A+1
M=0 // LCL[1]
A=A+1
M=0 // LCL[2]
A=A+1
M=0 // LCL[3]
A=A+1
M=0 // LCL[4]
D=A+1 // Set SP
@SP
M=D
// push constant 5
@5 // D=5
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.alloc 1
@__Course__ret__33__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.alloc // Jump to function
0;JMP
(__Course__ret__33__)
// pop pointer 0
@SP // SP--
AM=M-1
D=M
@THIS // *THIS=D
M=D
// push constant 1
@1 // D=1
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop this 4
@4 // D=THIS[4]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.length 1
@__Course__ret__34__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.length // Jump to function
0;JMP
(__Course__ret__34__)
// pop this 1
@1 // D=THIS[1]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// call Wall.getNumWalls 0
@__Course__ret__35__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@5
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Wall.getNumWalls // Jump to function
0;JMP
(__Course__ret__35__)
// pop local 2
@2 // D=LCL[2]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Array.new 1
@__Course__ret__36__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Array.new // Jump to function
0;JMP
(__Course__ret__36__)
// pop this 0
@0 // D=THIS[0]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
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
// label WHILE_EXP0
(WHILE_EXP0)
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
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
@__GT__TRUE_19__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_19__
0;JMP
(__GT__TRUE_19__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_19__)
// not
@SP
A=M-1
M=!M
// if-goto WHILE_END0
@SP // Pop
AM=M-1
D=M
@WHILE_END0
D;JNE
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// call String.charAt 2
@__Course__ret__37__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.charAt // Jump to function
0;JMP
(__Course__ret__37__)
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label WHILE_EXP1
(WHILE_EXP1)
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 1
@1 // D=1
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
// gt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_31__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_31__
0;JMP
(__GT__TRUE_31__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_31__)
// not
@SP
A=M-1
M=!M
// if-goto WHILE_END1
@SP // Pop
AM=M-1
D=M
@WHILE_END1
D;JNE
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
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
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// goto WHILE_EXP1
@WHILE_EXP1
0;JMP
// label WHILE_END1
(WHILE_END1)
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
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Obstacle.new 1
@__Course__ret__38__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Obstacle.new // Jump to function
0;JMP
(__Course__ret__38__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push temp 0
@0 // D=0
D=A
@5 // A=RAM[5+D]
A=D+A
D=M // D=RAM[5+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 0
@0 // D=THAT[0]
D=A
@THAT
D=D+M
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
// push constant 1
@1 // D=1
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
// goto WHILE_EXP0
@WHILE_EXP0
0;JMP
// label WHILE_END0
(WHILE_END0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop this 3
@3 // D=THIS[3]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 1
@1 // D=1
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 4
@4 // D=LCL[4]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push local 4
@4 // D=4
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+4]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Obstacle.activate 1
@__Course__ret__39__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Obstacle.activate // Jump to function
0;JMP
(__Course__ret__39__)
// pop temp 0
@0
D=A
@5
D=D+A
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
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Course.addObstacle 1
(Course.addObstacle)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
D=A+1 // Set SP
@SP
M=D
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
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
// call Obstacle.activate 1
@__Course__ret__40__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Obstacle.activate // Jump to function
0;JMP
(__Course__ret__40__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
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
// pop this 3
@3 // D=THIS[3]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
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
// push constant 1
@1 // D=1
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
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
@__GT__TRUE_90__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_90__
0;JMP
(__GT__TRUE_90__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_90__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0 // D=0
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
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Course.advance 3
(Course.advance)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
A=A+1
M=0 // LCL[1]
A=A+1
M=0 // LCL[2]
D=A+1 // Set SP
@SP
M=D
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 2
@2 // D=LCL[2]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label WHILE_EXP0
(WHILE_EXP0)
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
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
@__GT__TRUE_107__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_107__
0;JMP
(__GT__TRUE_107__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_107__)
// not
@SP
A=M-1
M=!M
// if-goto WHILE_END0
@SP // Pop
AM=M-1
D=M
@WHILE_END0
D;JNE
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
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
// push this 4
@4 // D=4
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+4]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Obstacle.advance 2
@__Course__ret__41__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Obstacle.advance // Jump to function
0;JMP
(__Course__ret__41__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 1
@1 // D=1
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
// pop local 2
@2 // D=LCL[2]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// goto WHILE_EXP0
@WHILE_EXP0
0;JMP
// label WHILE_END0
(WHILE_END0)
// push this 3
@3 // D=3
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+3]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Obstacle.getY 1
@__Course__ret__42__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Obstacle.getY // Jump to function
0;JMP
(__Course__ret__42__)
// push constant 60
@60 // D=60
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
@__GT__TRUE_135__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_135__
0;JMP
(__GT__TRUE_135__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_135__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push pointer 0
@THIS // D=*THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Course.addObstacle 1
@__Course__ret__43__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Course.addObstacle // Jump to function
0;JMP
(__Course__ret__43__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Course.collides 3
(Course.collides)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
A=A+1
M=0 // LCL[1]
A=A+1
M=0 // LCL[2]
D=A+1 // Set SP
@SP
M=D
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 2
@2 // D=LCL[2]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label WHILE_EXP0
(WHILE_EXP0)
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
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
@__GT__TRUE_155__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_155__
0;JMP
(__GT__TRUE_155__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_155__)
// not
@SP
A=M-1
M=!M
// if-goto WHILE_END0
@SP // Pop
AM=M-1
D=M
@WHILE_END0
D;JNE
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
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
// call Obstacle.collides 2
@__Course__ret__44__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Obstacle.collides // Jump to function
0;JMP
(__Course__ret__44__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// not
@SP
A=M-1
M=!M
// pop local 2
@2 // D=LCL[2]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE0
(IF_FALSE0)
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 1
@1 // D=1
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
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// goto WHILE_EXP0
@WHILE_EXP0
0;JMP
// label WHILE_END0
(WHILE_END0)
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Obstacle.new 0
(Obstacle.new)
// push constant 2
@2 // D=2
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.alloc 1
@__Obstacle__ret__45__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.alloc // Jump to function
0;JMP
(__Obstacle__ret__45__)
// pop pointer 0
@SP // SP--
AM=M-1
D=M
@THIS // *THIS=D
M=D
// push constant 30000
@30000 // D=30000
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop this 1
@1 // D=THIS[1]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Wall.getWall 1
@__Obstacle__ret__46__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Wall.getWall // Jump to function
0;JMP
(__Obstacle__ret__46__)
// pop this 0
@0 // D=THIS[0]
D=A
@THIS
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
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Obstacle.getY 0
(Obstacle.getY)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Obstacle.collides 0
(Obstacle.collides)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// call Runner.getY 1
@__Obstacle__ret__47__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.getY // Jump to function
0;JMP
(__Obstacle__ret__47__)
// lt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_22__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_22__
0;JMP
(__GT__TRUE_22__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_22__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// label IF_FALSE0
(IF_FALSE0)
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// call Runner.getY 1
@__Obstacle__ret__48__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.getY // Jump to function
0;JMP
(__Obstacle__ret__48__)
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
// call Runner.getHeight 1
@__Obstacle__ret__49__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.getHeight // Jump to function
0;JMP
(__Obstacle__ret__49__)
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// gt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_35__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_35__
0;JMP
(__GT__TRUE_35__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_35__)
// if-goto IF_TRUE1
@SP // Pop
AM=M-1
D=M
@IF_TRUE1
D;JNE
// goto IF_FALSE1
@IF_FALSE1
0;JMP
// label IF_TRUE1
(IF_TRUE1)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// label IF_FALSE1
(IF_FALSE1)
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
// call Runner.getX 1
@__Obstacle__ret__50__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.getX // Jump to function
0;JMP
(__Obstacle__ret__50__)
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Obstacle.activate 0
(Obstacle.activate)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop this 1
@1 // D=THIS[1]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Obstacle.advance 0
(Obstacle.advance)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 260
@260 // D=260
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
@__GT__TRUE_61__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_61__
0;JMP
(__GT__TRUE_61__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_61__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// label IF_FALSE0
(IF_FALSE0)
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// pop this 1
@1 // D=THIS[1]
D=A
@THIS
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
// call Obstacle.ddraw 1
@__Obstacle__ret__51__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Obstacle.ddraw // Jump to function
0;JMP
(__Obstacle__ret__51__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Obstacle.dclear 0
(Obstacle.dclear)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 255
@255 // D=255
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
@__GT__TRUE_82__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_82__
0;JMP
(__GT__TRUE_82__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_82__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 511
@511 // D=511
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Screen.drawLine 4
@__Obstacle__ret__52__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@9
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Screen.drawLine // Jump to function
0;JMP
(__Obstacle__ret__52__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Obstacle.clear 0
(Obstacle.clear)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 255
@255 // D=255
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
@__GT__TRUE_102__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_102__
0;JMP
(__GT__TRUE_102__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_102__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Screen.setColor 1
@__Obstacle__ret__53__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Screen.setColor // Jump to function
0;JMP
(__Obstacle__ret__53__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 511
@511 // D=511
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Screen.drawLine 4
@__Obstacle__ret__54__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@9
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Screen.drawLine // Jump to function
0;JMP
(__Obstacle__ret__54__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Obstacle.ddraw 2
(Obstacle.ddraw)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
A=A+1
M=0 // LCL[1]
D=A+1 // Set SP
@SP
M=D
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 255
@255 // D=255
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
@__GT__TRUE_125__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_125__
0;JMP
(__GT__TRUE_125__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_125__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// label IF_FALSE0
(IF_FALSE0)
// push constant 16384
@16384 // D=16384
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Math.multiply 2
@__Obstacle__ret__55__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Math.multiply // Jump to function
0;JMP
(__Obstacle__ret__55__)
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label WHILE_EXP0
(WHILE_EXP0)
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
// push constant 32
@32 // D=32
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
@__GT__TRUE_141__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_141__
0;JMP
(__GT__TRUE_141__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_141__)
// not
@SP
A=M-1
M=!M
// if-goto WHILE_END0
@SP // Pop
AM=M-1
D=M
@WHILE_END0
D;JNE
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
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// if-goto IF_TRUE1
@SP // Pop
AM=M-1
D=M
@IF_TRUE1
D;JNE
// goto IF_FALSE1
@IF_FALSE1
0;JMP
// label IF_TRUE1
(IF_TRUE1)
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// push constant 1
@1 // D=1
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// neg
@SP
A=M-1
M=-M
// call Memory.poke 2
@__Obstacle__ret__56__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Obstacle__ret__56__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE1
(IF_FALSE1)
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
// push constant 1
@1 // D=1
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
// goto WHILE_EXP0
@WHILE_EXP0
0;JMP
// label WHILE_END0
(WHILE_END0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Obstacle.draw 1
(Obstacle.draw)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
D=A+1 // Set SP
@SP
M=D
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 255
@255 // D=255
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
@__GT__TRUE_173__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_173__
0;JMP
(__GT__TRUE_173__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_173__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// not
@SP
A=M-1
M=!M
// call Screen.setColor 1
@__Obstacle__ret__57__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Screen.setColor // Jump to function
0;JMP
(__Obstacle__ret__57__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label WHILE_EXP0
(WHILE_EXP0)
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
// push constant 32
@32 // D=32
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
@__GT__TRUE_187__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_187__
0;JMP
(__GT__TRUE_187__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_187__)
// not
@SP
A=M-1
M=!M
// if-goto WHILE_END0
@SP // Pop
AM=M-1
D=M
@WHILE_END0
D;JNE
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
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// if-goto IF_TRUE1
@SP // Pop
AM=M-1
D=M
@IF_TRUE1
D;JNE
// goto IF_FALSE1
@IF_FALSE1
0;JMP
// label IF_TRUE1
(IF_TRUE1)
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
// push constant 16
@16 // D=16
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Math.multiply 2
@__Obstacle__ret__58__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Math.multiply // Jump to function
0;JMP
(__Obstacle__ret__58__)
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// push constant 16
@16 // D=16
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Math.multiply 2
@__Obstacle__ret__59__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Math.multiply // Jump to function
0;JMP
(__Obstacle__ret__59__)
// push constant 15
@15 // D=15
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Screen.drawLine 4
@__Obstacle__ret__60__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@9
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Screen.drawLine // Jump to function
0;JMP
(__Obstacle__ret__60__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE1
(IF_FALSE1)
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
// push constant 1
@1 // D=1
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
// goto WHILE_EXP0
@WHILE_EXP0
0;JMP
// label WHILE_END0
(WHILE_END0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.new 0
(Runner.new)
// push constant 3
@3 // D=3
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.alloc 1
@__Runner__ret__61__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.alloc // Jump to function
0;JMP
(__Runner__ret__61__)
// pop pointer 0
@SP // SP--
AM=M-1
D=M
@THIS // *THIS=D
M=D
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop this 0
@0 // D=THIS[0]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 255
@255 // D=255
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 32
@32 // D=32
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
// pop this 1
@1 // D=THIS[1]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
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
// push pointer 0
@THIS // D=*THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Runner.show 1
@__Runner__ret__62__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.show // Jump to function
0;JMP
(__Runner__ret__62__)
// pop temp 0
@0
D=A
@5
D=D+A
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
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.dispose 0
(Runner.dispose)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push pointer 0
@THIS // D=*THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.deAlloc 1
@__Runner__ret__63__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.deAlloc // Jump to function
0;JMP
(__Runner__ret__63__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.getX 0
(Runner.getX)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.getY 0
(Runner.getY)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.getWidth 0
(Runner.getWidth)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push constant 16
@16 // D=16
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.getHeight 0
(Runner.getHeight)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push constant 16
@16 // D=16
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.move 0
(Runner.move)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push constant 1
@1 // D=1
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
@__EQ__TRUE_50__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_50__
0;JMP
(__EQ__TRUE_50__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_50__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 0
@0 // D=0
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
@__GT__TRUE_56__
D;JLT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_56__
0;JMP
(__GT__TRUE_56__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_56__)
// if-goto IF_TRUE1
@SP // Pop
AM=M-1
D=M
@IF_TRUE1
D;JNE
// goto IF_FALSE1
@IF_FALSE1
0;JMP
// label IF_TRUE1
(IF_TRUE1)
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 1
@1 // D=1
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
// pop this 0
@0 // D=THIS[0]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE1
(IF_FALSE1)
// goto IF_END0
@IF_END0
0;JMP
// label IF_FALSE0
(IF_FALSE0)
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// lt
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__GT__TRUE_69__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_69__
0;JMP
(__GT__TRUE_69__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_69__)
// if-goto IF_TRUE2
@SP // Pop
AM=M-1
D=M
@IF_TRUE2
D;JNE
// goto IF_FALSE2
@IF_FALSE2
0;JMP
// label IF_TRUE2
(IF_TRUE2)
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 1
@1 // D=1
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
// pop this 0
@0 // D=THIS[0]
D=A
@THIS
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_FALSE2
(IF_FALSE2)
// label IF_END0
(IF_END0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.show 0
(Runner.show)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Math.multiply 2
@__Runner__ret__64__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Math.multiply // Jump to function
0;JMP
(__Runner__ret__64__)
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// call Runner.draw 1
@__Runner__ret__65__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.draw // Jump to function
0;JMP
(__Runner__ret__65__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.hide 0
(Runner.hide)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push this 1
@1 // D=1
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+1]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Math.multiply 2
@__Runner__ret__66__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Math.multiply // Jump to function
0;JMP
(__Runner__ret__66__)
// push this 0
@0 // D=0
D=A
@THIS // A=THIS+D
A=D+M
D=M // D=RAM[THIS+0]
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
// call Runner.clear 1
@__Runner__ret__67__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Runner.clear // Jump to function
0;JMP
(__Runner__ret__67__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.draw 1
(Runner.draw)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
D=A+1 // Set SP
@SP
M=D
// push constant 16384
@16384 // D=16384
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push constant 0
@0 // D=0
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__68__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__68__)
// pop temp 0
@0
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
// push constant 32
@32 // D=32
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
// push constant 960
@960 // D=960
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__69__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__69__)
// pop temp 0
@0
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
// push constant 64
@64 // D=64
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
// push constant 1056
@1056 // D=1056
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__70__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__70__)
// pop temp 0
@0
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
// push constant 96
@96 // D=96
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
// push constant 2064
@2064 // D=2064
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__71__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__71__)
// pop temp 0
@0
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
// push constant 128
@128 // D=128
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
// push constant 2064
@2064 // D=2064
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__72__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__72__)
// pop temp 0
@0
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
// push constant 160
@160 // D=160
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
// push constant 1056
@1056 // D=1056
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__73__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__73__)
// pop temp 0
@0
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
// push constant 192
@192 // D=192
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
// push constant 960
@960 // D=960
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__74__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__74__)
// pop temp 0
@0
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
// push constant 224
@224 // D=224
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
// push constant 384
@384 // D=384
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__75__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__75__)
// pop temp 0
@0
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
// push constant 256
@256 // D=256
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
// push constant 6552
@6552 // D=6552
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__76__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__76__)
// pop temp 0
@0
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
// push constant 288
@288 // D=288
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
// push constant 2016
@2016 // D=2016
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__77__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__77__)
// pop temp 0
@0
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
// push constant 320
@320 // D=320
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
// push constant 384
@384 // D=384
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__78__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__78__)
// pop temp 0
@0
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
// push constant 352
@352 // D=352
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
// push constant 384
@384 // D=384
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__79__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__79__)
// pop temp 0
@0
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
// push constant 384
@384 // D=384
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
// push constant 576
@576 // D=576
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__80__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__80__)
// pop temp 0
@0
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
// push constant 416
@416 // D=416
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
// push constant 1056
@1056 // D=1056
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__81__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__81__)
// pop temp 0
@0
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
// push constant 448
@448 // D=448
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
// push constant 3120
@3120 // D=3120
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__82__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__82__)
// pop temp 0
@0
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
// push constant 480
@480 // D=480
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
// push constant 2064
@2064 // D=2064
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__83__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__83__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Runner.clear 1
(Runner.clear)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
D=A+1 // Set SP
@SP
M=D
// push constant 16384
@16384 // D=16384
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
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
// push constant 0
@0 // D=0
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__84__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__84__)
// pop temp 0
@0
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
// push constant 32
@32 // D=32
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__85__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__85__)
// pop temp 0
@0
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
// push constant 64
@64 // D=64
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__86__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__86__)
// pop temp 0
@0
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
// push constant 96
@96 // D=96
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__87__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__87__)
// pop temp 0
@0
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
// push constant 128
@128 // D=128
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__88__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__88__)
// pop temp 0
@0
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
// push constant 160
@160 // D=160
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__89__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__89__)
// pop temp 0
@0
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
// push constant 192
@192 // D=192
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__90__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__90__)
// pop temp 0
@0
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
// push constant 224
@224 // D=224
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__91__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__91__)
// pop temp 0
@0
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
// push constant 256
@256 // D=256
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__92__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__92__)
// pop temp 0
@0
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
// push constant 288
@288 // D=288
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__93__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__93__)
// pop temp 0
@0
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
// push constant 320
@320 // D=320
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__94__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__94__)
// pop temp 0
@0
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
// push constant 352
@352 // D=352
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__95__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__95__)
// pop temp 0
@0
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
// push constant 384
@384 // D=384
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__96__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__96__)
// pop temp 0
@0
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
// push constant 416
@416 // D=416
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__97__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__97__)
// pop temp 0
@0
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
// push constant 448
@448 // D=448
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__98__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__98__)
// pop temp 0
@0
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
// push constant 480
@480 // D=480
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Memory.poke 2
@__Runner__ret__99__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Memory.poke // Jump to function
0;JMP
(__Runner__ret__99__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Wall.getNumWalls 0
(Wall.getNumWalls)
// push static 1
@Wall.1
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Wall.initialize 5
(Wall.initialize)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
A=A+1
M=0 // LCL[1]
A=A+1
M=0 // LCL[2]
A=A+1
M=0 // LCL[3]
A=A+1
M=0 // LCL[4]
D=A+1 // Set SP
@SP
M=D
// push constant 4
@4 // D=4
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop static 1
@SP // SP--
AM=M-1
D=M
@Wall.1
M=D
// push static 1
@Wall.1
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Array.new 1
@__Wall__ret__100__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Array.new // Jump to function
0;JMP
(__Wall__ret__100__)
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.new 1
@__Wall__ret__101__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.new // Jump to function
0;JMP
(__Wall__ret__101__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__102__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__102__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__103__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__103__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__104__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__104__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__105__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__105__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__106__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__106__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__107__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__107__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__108__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__108__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__109__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__109__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__110__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__110__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__111__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__111__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__112__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__112__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__113__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__113__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__114__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__114__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__115__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__115__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__116__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__116__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__117__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__117__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__118__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__118__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__119__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__119__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__120__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__120__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__121__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__121__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__122__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__122__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__123__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__123__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__124__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__124__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__125__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__125__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__126__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__126__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__127__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__127__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__128__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__128__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__129__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__129__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__130__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__130__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__131__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__131__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__132__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__132__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__133__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__133__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push temp 0
@0 // D=0
D=A
@5 // A=RAM[5+D]
A=D+A
D=M // D=RAM[5+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 0
@0 // D=THAT[0]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 1
@1 // D=1
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.new 1
@__Wall__ret__134__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.new // Jump to function
0;JMP
(__Wall__ret__134__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__135__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__135__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__136__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__136__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__137__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__137__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__138__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__138__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__139__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__139__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__140__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__140__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__141__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__141__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__142__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__142__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__143__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__143__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__144__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__144__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__145__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__145__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__146__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__146__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__147__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__147__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__148__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__148__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__149__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__149__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__150__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__150__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__151__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__151__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__152__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__152__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__153__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__153__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__154__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__154__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__155__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__155__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__156__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__156__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__157__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__157__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__158__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__158__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__159__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__159__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__160__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__160__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__161__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__161__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__162__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__162__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__163__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__163__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__164__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__164__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__165__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__165__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__166__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__166__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push temp 0
@0 // D=0
D=A
@5 // A=RAM[5+D]
A=D+A
D=M // D=RAM[5+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 0
@0 // D=THAT[0]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 2
@2 // D=2
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.new 1
@__Wall__ret__167__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.new // Jump to function
0;JMP
(__Wall__ret__167__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__168__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__168__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__169__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__169__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__170__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__170__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__171__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__171__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__172__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__172__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__173__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__173__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__174__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__174__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__175__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__175__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__176__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__176__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__177__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__177__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__178__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__178__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__179__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__179__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__180__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__180__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__181__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__181__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__182__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__182__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__183__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__183__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__184__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__184__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__185__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__185__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__186__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__186__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__187__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__187__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__188__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__188__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__189__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__189__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__190__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__190__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__191__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__191__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__192__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__192__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__193__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__193__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__194__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__194__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__195__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__195__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__196__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__196__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__197__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__197__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__198__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__198__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__199__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__199__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push temp 0
@0 // D=0
D=A
@5 // A=RAM[5+D]
A=D+A
D=M // D=RAM[5+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 0
@0 // D=THAT[0]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 3
@3 // D=3
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.new 1
@__Wall__ret__200__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.new // Jump to function
0;JMP
(__Wall__ret__200__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__201__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__201__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__202__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__202__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__203__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__203__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__204__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__204__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__205__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__205__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__206__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__206__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__207__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__207__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__208__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__208__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__209__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__209__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__210__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__210__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__211__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__211__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__212__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__212__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__213__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__213__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__214__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__214__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__215__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__215__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__216__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__216__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__217__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__217__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__218__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__218__)
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__219__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__219__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__220__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__220__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__221__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__221__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__222__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__222__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__223__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__223__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__224__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__224__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__225__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__225__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__226__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__226__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__227__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__227__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__228__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__228__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__229__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__229__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__230__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__230__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__231__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__231__)
// push constant 45
@45 // D=45
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call String.appendChar 2
@__Wall__ret__232__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@7
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@String.appendChar // Jump to function
0;JMP
(__Wall__ret__232__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push temp 0
@0 // D=0
D=A
@5 // A=RAM[5+D]
A=D+A
D=M // D=RAM[5+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 0
@0 // D=THAT[0]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 2
@2 // D=LCL[2]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push static 1
@Wall.1
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Array.new 1
@__Wall__ret__233__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Array.new // Jump to function
0;JMP
(__Wall__ret__233__)
// pop static 0
@SP // SP--
AM=M-1
D=M
@Wall.0
M=D
// label WHILE_EXP0
(WHILE_EXP0)
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push static 1
@Wall.1
D=M
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
@__GT__TRUE_309__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_309__
0;JMP
(__GT__TRUE_309__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_309__)
// not
@SP
A=M-1
M=!M
// if-goto WHILE_END0
@SP // Pop
AM=M-1
D=M
@WHILE_END0
D;JNE
// push constant 32
@32 // D=32
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// call Array.new 1
@__Wall__ret__234__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Array.new // Jump to function
0;JMP
(__Wall__ret__234__)
// pop local 4
@4 // D=LCL[4]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
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
// add
@SP // SP--
AM=M-1
D=M
A=A-1
M=D+M
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 1
@1 // D=LCL[1]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop local 3
@3 // D=LCL[3]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label WHILE_EXP1
(WHILE_EXP1)
// push local 3
@3 // D=3
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+3]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 32
@32 // D=32
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
@__GT__TRUE_326__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_326__
0;JMP
(__GT__TRUE_326__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_326__)
// not
@SP
A=M-1
M=!M
// if-goto WHILE_END1
@SP // Pop
AM=M-1
D=M
@WHILE_END1
D;JNE
// push local 3
@3 // D=3
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+3]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push local 1
@1 // D=1
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+1]
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
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
// eq
@SP // SP--
AM=M-1
D=M
A=A-1
D=D-M
@__EQ__TRUE_335__
D;JEQ
@SP
A=M
A=A-1
M=0
@__EQ__NEXT_335__
0;JMP
(__EQ__TRUE_335__)
@SP
A=M
A=A-1
M=-1
(__EQ__NEXT_335__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push local 3
@3 // D=3
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+3]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push local 4
@4 // D=4
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+4]
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// not
@SP
A=M-1
M=!M
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push temp 0
@0 // D=0
D=A
@5 // A=RAM[5+D]
A=D+A
D=M // D=RAM[5+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 0
@0 // D=THAT[0]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// goto IF_END0
@IF_END0
0;JMP
// label IF_FALSE0
(IF_FALSE0)
// push local 3
@3 // D=3
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+3]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push local 4
@4 // D=4
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+4]
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
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push temp 0
@0 // D=0
D=A
@5 // A=RAM[5+D]
A=D+A
D=M // D=RAM[5+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 0
@0 // D=THAT[0]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// label IF_END0
(IF_END0)
// push local 3
@3 // D=3
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+3]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 1
@1 // D=1
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
// pop local 3
@3 // D=LCL[3]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// goto WHILE_EXP1
@WHILE_EXP1
0;JMP
// label WHILE_END1
(WHILE_END1)
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push static 0
@Wall.0
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
// push local 4
@4 // D=4
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+4]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push temp 0
@0 // D=0
D=A
@5 // A=RAM[5+D]
A=D+A
D=M // D=RAM[5+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// pop that 0
@0 // D=THAT[0]
D=A
@THAT
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push local 2
@2 // D=2
D=A
@LCL // A=LCL+D
A=D+M
D=M // D=RAM[LCL+2]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push constant 1
@1 // D=1
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
// pop local 2
@2 // D=LCL[2]
D=A
@LCL
D=D+M
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// goto WHILE_EXP0
@WHILE_EXP0
0;JMP
// label WHILE_END0
(WHILE_END0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Wall.getWall 1
(Wall.getWall)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
D=A+1 // Set SP
@SP
M=D
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push static 1
@Wall.1
D=M
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
@__GT__TRUE_384__
D;JGT
@SP
A=M
A=A-1
M=0
@__GT__NEXT_384__
0;JMP
(__GT__TRUE_384__)
@SP
A=M
A=A-1
M=-1
(__GT__NEXT_384__)
// if-goto IF_TRUE0
@SP // Pop
AM=M-1
D=M
@IF_TRUE0
D;JNE
// goto IF_FALSE0
@IF_FALSE0
0;JMP
// label IF_TRUE0
(IF_TRUE0)
// push argument 0
@0 // D=0
D=A
@ARG // A=ARG+D
A=D+M
D=M // D=RAM[ARG+0]
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push static 0
@Wall.0
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
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
// goto IF_END0
@IF_END0
0;JMP
// label IF_FALSE0
(IF_FALSE0)
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// push static 0
@Wall.0
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
// pop pointer 1
@SP // SP--
AM=M-1
D=M
@THAT // *THAT=D
M=D
// push that 0
@0 // D=0
D=A
@THAT // A=THAT+D
A=D+M
D=M // D=RAM[THAT+0]
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
// label IF_END0
(IF_END0)
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
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
// function Main.main 1
(Main.main)
// Initialize local segment
@LCL
A=M
M=0 // LCL[0]
D=A+1 // Set SP
@SP
M=D
// call Game.getInstance 0
@__Main__ret__235__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@5
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Game.getInstance // Jump to function
0;JMP
(__Main__ret__235__)
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
// call Game.run 1
@__Main__ret__236__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Game.run // Jump to function
0;JMP
(__Main__ret__236__)
// pop temp 0
@0
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
// call Game.dispose 1
@__Main__ret__237__ // Push return address
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@LCL // Push saved LCL
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@ARG // Push saved ARG
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THIS // Push saved THIS
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@THAT // Push saved THAT
D=M
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
@SP // Reposition ARG
D=M
@6
D=D-A
@ARG
M=D
@SP // Reposition LCL
D=M
@LCL
M=D
@Game.dispose // Jump to function
0;JMP
(__Main__ret__237__)
// pop temp 0
@0
D=A
@5
D=D+A
@SP // SP--
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 0
@0 // D=0
D=A
@SP // *SP=D
A=M
M=D
@SP // SP++
M=M+1
// return
@LCL // Fetch return address
D=M
@5
A=D-A
D=M
@9
M=D
@SP // Save return value to *ARG
AM=M-1
D=M
@ARG
A=M
M=D
@ARG // Reset SP
D=M+1
@SP
M=D
@1 // Reset THAT
D=A
@LCL
A=M-D
D=M
@THAT
M=D
@2 // Reset THIS
D=A
@LCL
A=M-D
D=M
@THIS
M=D
@3 // Reset ARG
D=A
@LCL
A=M-D
D=M
@ARG
M=D
@4 // Reset LCL
D=A
@LCL
A=M-D
D=M
@LCL
M=D
@9 // Goto return address that was saved in temp
A=M
0;JMP
