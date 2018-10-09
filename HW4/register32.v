`include "register.v"
module resiter32
(
output reg[31:0]	q,
input[31:0]		d,
input 	wrenable,
input		clk
);
