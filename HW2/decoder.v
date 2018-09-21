// Decoder circuit
`define AND and #50
`define NOT not #50

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable

);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable,
    output naddress0,         // Output intermediate complemented inputs
    output naddress1
);
    // My decoder code here
    wire naddress0;
    wire naddress1;
    not A0inv(naddress0, address0);  	// Top inverter is named A0inv, takes signal A0 as input and produces signal nA0
    not A1inv(naddress1, address1);
    and andgate(out0,naddress0,naddress1,enable);   // AND gate produces out0 from naddress0 and naddress1 inputs
    and andgate(out1,address0,naddress1,enable);   // AND gate produces out1 from naddress0 and address1 inputs
    and andgate(out2,naddress0,address1,enable);   // AND gate produces out2 from address0 and naddress1 inputs
    and andgate(out3,address0,address1,enable);   // AND gate produces out3 from address0 and address1 inputs
endmodule
