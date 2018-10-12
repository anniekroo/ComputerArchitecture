#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x24b9a00 .scope module, "register" "register" 2 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7ffb03d0b018 .functor BUFZ 1, C4<z>; HiZ drive
v0x24bb620_0 .net "clk", 0 0, o0x7ffb03d0b018;  0 drivers
o0x7ffb03d0b048 .functor BUFZ 1, C4<z>; HiZ drive
v0x24cafe0_0 .net "d", 0 0, o0x7ffb03d0b048;  0 drivers
v0x24cb0a0_0 .var "q", 0 0;
o0x7ffb03d0b0a8 .functor BUFZ 1, C4<z>; HiZ drive
v0x24cb170_0 .net "wrenable", 0 0, o0x7ffb03d0b0a8;  0 drivers
E_0x24bc140 .event posedge, v0x24bb620_0;
S_0x24b9b80 .scope module, "register32" "register32" 2 20;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7ffb03d0b198 .functor BUFZ 1, C4<z>; HiZ drive
v0x24cb360_0 .net "clk", 0 0, o0x7ffb03d0b198;  0 drivers
o0x7ffb03d0b1c8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x24cb440_0 .net "d", 31 0, o0x7ffb03d0b1c8;  0 drivers
v0x24cb520_0 .var "q", 31 0;
o0x7ffb03d0b228 .functor BUFZ 1, C4<z>; HiZ drive
v0x24cb5e0_0 .net "wrenable", 0 0, o0x7ffb03d0b228;  0 drivers
E_0x24cb2e0 .event posedge, v0x24cb360_0;
S_0x24bb3d0 .scope module, "register32zero" "register32zero" 2 37;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7ffb03d0b318 .functor BUFZ 1, C4<z>; HiZ drive
v0x24cb790_0 .net "clk", 0 0, o0x7ffb03d0b318;  0 drivers
o0x7ffb03d0b348 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x24cb870_0 .net "d", 31 0, o0x7ffb03d0b348;  0 drivers
v0x24cb950_0 .var "q", 31 0;
o0x7ffb03d0b3a8 .functor BUFZ 1, C4<z>; HiZ drive
v0x24cba40_0 .net "wrenable", 0 0, o0x7ffb03d0b3a8;  0 drivers
E_0x24bbb20 .event posedge, v0x24cb790_0;
    .scope S_0x24b9a00;
T_0 ;
    %wait E_0x24bc140;
    %load/vec4 v0x24cb170_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %load/vec4 v0x24cafe0_0;
    %assign/vec4 v0x24cb0a0_0, 0;
T_0.0 ;
    %jmp T_0;
    .thread T_0;
    .scope S_0x24b9b80;
T_1 ;
    %wait E_0x24cb2e0;
    %load/vec4 v0x24cb5e0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.0, 8;
    %load/vec4 v0x24cb440_0;
    %assign/vec4 v0x24cb520_0, 0;
T_1.0 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x24bb3d0;
T_2 ;
    %wait E_0x24bbb20;
    %load/vec4 v0x24cba40_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x24cb950_0, 0;
T_2.0 ;
    %jmp T_2;
    .thread T_2;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "register.v";
