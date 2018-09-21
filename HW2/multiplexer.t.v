// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
    reg in0,in1,in2,in3;
    reg addr0,addr1;
    wire out,naddr0,naddr1,and0,and1,and2,and3;

    behavioralMultiplexer multiplexer (out,addr0,addr1,in0,in1,in2,in3);
    //structuralMultiplexer multiplexer (out,addr0,addr1,in0,in1,in2,in3,naddr0,naddr1,and0,and1,and2,and3); // Swap after testing

    initial begin
    $dumpfile("multiplexer.vcd");
    $dumpvars;

    //Proof by excessive exhaustion
    $display("i0 i1 i2 i3| A0 A1|Out| Expected Output");
    //0000
    in0=0; in1=0; in2=0; in3=0; addr0=0; addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=0;in3=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=0;in3=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=0;in3=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    //1000
    in0=1;in1=0;in2=0;in3=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=0;in3=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=0;in3=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=0;in3=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    //0100
    in0=0;in1=1;in2=0;in3=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=0;in3=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=0;in3=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=0;in3=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    //0010 00
    in0=0;in1=0;in2=1;in3=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=1;in3=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=1;in3=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=1;in3=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    //0001 00
    in0=0;in1=0;in2=0;in3=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=0;in3=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=0;in3=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=0;in3=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    //0011
    in0=0;in1=0;in2=1;in3=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=1;in3=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=1;in3=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=0;in2=1;in3=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    //0110
    in0=0;in1=1;in2=1;in3=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=1;in3=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=1;in3=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=1;in3=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    //1100
    in0=1;in1=1;in2=0;in3=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=0;in3=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=0;in3=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=0;in3=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    //1001
    in0=1;in1=0;in2=0;in3=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=0;in3=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=0;in3=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=0;in3=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    //0101
    in0=0;in1=1;in2=0;in3=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=0;in3=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=0;in3=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=0;in3=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    //1010
    in0=1;in1=0;in2=1;in3=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=1;in3=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=1;in3=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=1;in3=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    //1110
    in0=1;in1=1;in2=1;in3=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=1;in3=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=1;in3=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=1;in3=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    //1101
    in0=1;in1=1;in2=0;in3=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=0;in3=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=0;in3=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=0;in3=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    //1011
    in0=1;in1=0;in2=1;in3=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=1;in3=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=1;in3=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=0;in2=1;in3=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    //0111
    in0=0;in1=1;in2=1;in3=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | False", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=1;in3=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=1;in3=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=0;in1=1;in2=1;in3=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    //1111
    in0=1;in1=1;in2=1;in3=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=1;in3=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=1;in3=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    in0=1;in1=1;in2=1;in3=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b  %b | %b  %b | %b | True", in0, in1, in2, in3, addr0, addr1, out);
    $finish();
    end

endmodule
