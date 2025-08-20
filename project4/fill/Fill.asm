// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//checking for keyboard input

(CHECK)
@i
M=0
@KBD
D =M
@WHITE
D;JEQ
@BLACK
D;JNE
@CHECK
0;JMP


(BLACK)
@SCREEN
D=A
@i
D = D+M
@KBD
D = D -A
@CHECK
D;JGE

@SCREEN
D=A
@i
A = D+M
M=-1

@i
M=M+1

@BLACK
0;JMP


(WHITE)
@SCREEN
D=A
@i
D = D+M
@KBD
D = D -A
@CHECK
D;JGE

@SCREEN
D=A
@i
A = D+M
M=0

@i
M=M+1

@WHITE
0;JMP
