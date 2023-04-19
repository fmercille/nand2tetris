// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(POLL)
// Check whether a key is pressed
@KBD
D=M

// No keys pressed, clear the screen
@CLEARSCREEN
D;JEQ

// Key is pressed, fill the screen
@FILLSCREEN
0;JMP


(CLEARSCREEN)
// Check if the screen is already cleared, and skip if it is
@SCREEN
D=M
@POLL
D;JEQ

// Screen is not already cleared, we need to clear it
// The screen has 512 16-bits registers
@SCREEN
D=A
@screenpointer
M=D

@8192
D=A
@i
M=D

(LOOPCLEAR)
@screenpointer
A=M
M=0
D=A+1
@screenpointer
M=D
@i
M=M-1
D=M
@LOOPCLEAR
D;JNE

// Go back to polling
@POLL
0;JMP



(FILLSCREEN)
// Check if the screen is already filled, and skip if it is
@SCREEN
D=M
@POLL
D;JNE

// Screen is not already filled, we need to fill it
@SCREEN
D=A
@screenpointer
M=D

@8192
D=A
@i
M=D

(LOOPFILL)
@screenpointer
A=M
M=-1
D=A+1
@screenpointer
M=D
@i
M=M-1
D=M
@LOOPFILL
D;JNE


// Go back to polling
@POLL
0;JMP

