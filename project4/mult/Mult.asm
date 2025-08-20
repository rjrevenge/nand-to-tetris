// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.


// n=R0
@R0
D=M
@n
M=D

// i=1, R2=0
@i
M=1
@R2
M=0

(LOOP)
@i
D=M
@n
D = D-M  // i>n
@END
D;JGT


@R1
D=M
@R2
M=M+D  // R2 = R2+R1

@i
M=M+1 // i++

@LOOP
0;JLE

(END)
@END
0;JMP