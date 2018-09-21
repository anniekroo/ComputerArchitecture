// Multiplexer circuit
`define AND and #50
`define OR or #50
`define NOT not #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3,
    output naddress0,         // Output intermediate complemented inputs
    output naddress1,
    output and0,and1,and2,and3
);
    // My decoder code here
    wire naddress0;
    wire naddress1;
    not A0inv(naddress0, address0);  	// Top inverter is named A0inv, takes signal A0 as input and produces signal nA0
    not A1inv(naddress1, address1);
    and andgate(and0,naddress0,naddress1,in0);
    and andgate(and1,address0,naddress1,in1);
    and andgate(and2,naddress0,address1,in2);
    and andgate(and3,address0,address1,in3);
    or orgate(out,and0,and1,and2,and3);

endmodule
