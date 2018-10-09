#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x2441dc0 .scope module, "register32zero" "register32zero" 2 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f36662df018 .functor BUFZ 1, C4<z>; HiZ drive
v0x2441fd0_0 .net "clk", 0 0, o0x7f36662df018;  0 drivers
o0x7f36662df048 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x2484560_0 .net "d", 31 0, o0x7f36662df048;  0 drivers
v0x2484640_0 .var "q", 31 0;
o0x7f36662df0a8 .functor BUFZ 1, C4<z>; HiZ drive
v0x2484730_0 .net "wrenable", 0 0, o0x7f36662df0a8;  0 drivers
E_0x24422e0 .event posedge, v0x2441fd0_0;
    .scope S_0x2441dc0;
T_0 ;
    %wait E_0x24422e0;
    %load/vec4 v0x2484730_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x2484640_0, 0;
T_0.0 ;
    %jmp T_0;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "register32zero.v";
