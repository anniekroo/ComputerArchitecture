// Adder circuit
`define AND and #50
`define OR or #50
`define XOR xor #50
`define NOT not #50

module behavioralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin,
    output xor0, and0, and1

);
    // My decoder code here
    xor xorgate(xor0,a,b);
    and andgate(and0,a,b);
    xor xorgate(sum,xor0,carryin);
    and andgate(and1,xor0,carryin);
    or orgate(carryout,and0,and1);



endmodule
