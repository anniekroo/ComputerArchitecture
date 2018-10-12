#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x26cf1b0 .scope module, "hw4testbenchharness" "hw4testbenchharness" 2 8;
 .timescale 0 0;
v0x26eaf90_0 .net "Clk", 0 0, v0x26ea350_0;  1 drivers
v0x26eb050_0 .net "ReadData1", 31 0, L_0x26fdde0;  1 drivers
v0x26eb110_0 .net "ReadData2", 31 0, L_0x27007f0;  1 drivers
v0x26eb1b0_0 .net "ReadRegister1", 4 0, v0x26ea5f0_0;  1 drivers
v0x26eb270_0 .net "ReadRegister2", 4 0, v0x26ea700_0;  1 drivers
v0x26eb380_0 .net "RegWrite", 0 0, v0x26ea860_0;  1 drivers
v0x26eb420_0 .net "WriteData", 31 0, v0x26ea950_0;  1 drivers
v0x26eb530_0 .net "WriteRegister", 4 0, v0x26eaa10_0;  1 drivers
v0x26eb5f0_0 .var "begintest", 0 0;
v0x26eb720_0 .net "dutpassed", 0 0, v0x26eac50_0;  1 drivers
v0x26eb7c0_0 .net "endtest", 0 0, v0x26ead10_0;  1 drivers
E_0x26bfb20 .event posedge, v0x26ead10_0;
S_0x26bff40 .scope module, "DUT" "regfile" 2 24, 3 12 0, S_0x26cf1b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x26e2b10_0 .net "Clk", 0 0, v0x26ea350_0;  alias, 1 drivers
v0x26e8cf0_0 .net "ReadData1", 31 0, L_0x26fdde0;  alias, 1 drivers
v0x26e8dc0_0 .net "ReadData2", 31 0, L_0x27007f0;  alias, 1 drivers
v0x26e8ec0_0 .net "ReadRegister1", 4 0, v0x26ea5f0_0;  alias, 1 drivers
v0x26e8f90_0 .net "ReadRegister2", 4 0, v0x26ea700_0;  alias, 1 drivers
v0x26e9030_0 .net "RegWrite", 0 0, v0x26ea860_0;  alias, 1 drivers
v0x26e9100_0 .net "WriteData", 31 0, v0x26ea950_0;  alias, 1 drivers
v0x26e91a0_0 .net "WriteRegister", 4 0, v0x26eaa10_0;  alias, 1 drivers
v0x26e9270_0 .net "decoded", 31 0, L_0x26fc8c0;  1 drivers
v0x26e93d0 .array "registers", 0 31, 31 0;
S_0x26bfc10 .scope module, "deco" "decoder1to32" 3 30, 4 4 0, S_0x26bff40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x2695220_0 .net *"_s0", 31 0, L_0x26ec760;  1 drivers
L_0x7ffb167b2018 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x26dce30_0 .net *"_s3", 30 0, L_0x7ffb167b2018;  1 drivers
v0x26dcf10_0 .net "address", 4 0, v0x26eaa10_0;  alias, 1 drivers
v0x26dd000_0 .net "enable", 0 0, v0x26ea860_0;  alias, 1 drivers
v0x26dd0c0_0 .net "out", 31 0, L_0x26fc8c0;  alias, 1 drivers
L_0x26ec760 .concat [ 1 31 0 0], v0x26ea860_0, L_0x7ffb167b2018;
L_0x26fc8c0 .shift/l 32, L_0x26ec760, v0x26eaa10_0;
S_0x26dd270 .scope generate, "genblk1[1]" "genblk1[1]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26dd460 .param/l "i" 0 3 33, +C4<01>;
E_0x26dd520 .event posedge, v0x26e2b10_0;
S_0x26dd580 .scope generate, "genblk1[2]" "genblk1[2]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26dd790 .param/l "i" 0 3 33, +C4<010>;
S_0x26dd830 .scope generate, "genblk1[3]" "genblk1[3]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26dda20 .param/l "i" 0 3 33, +C4<011>;
S_0x26ddae0 .scope generate, "genblk1[4]" "genblk1[4]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26ddd20 .param/l "i" 0 3 33, +C4<0100>;
S_0x26ddde0 .scope generate, "genblk1[5]" "genblk1[5]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26ddfd0 .param/l "i" 0 3 33, +C4<0101>;
S_0x26de090 .scope generate, "genblk1[6]" "genblk1[6]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26de280 .param/l "i" 0 3 33, +C4<0110>;
S_0x26de340 .scope generate, "genblk1[7]" "genblk1[7]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26de530 .param/l "i" 0 3 33, +C4<0111>;
S_0x26de5f0 .scope generate, "genblk1[8]" "genblk1[8]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26ddcd0 .param/l "i" 0 3 33, +C4<01000>;
S_0x26de8e0 .scope generate, "genblk1[9]" "genblk1[9]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26dead0 .param/l "i" 0 3 33, +C4<01001>;
S_0x26deb90 .scope generate, "genblk1[10]" "genblk1[10]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26ded80 .param/l "i" 0 3 33, +C4<01010>;
S_0x26dee40 .scope generate, "genblk1[11]" "genblk1[11]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26df030 .param/l "i" 0 3 33, +C4<01011>;
S_0x26df0f0 .scope generate, "genblk1[12]" "genblk1[12]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26df2e0 .param/l "i" 0 3 33, +C4<01100>;
S_0x26df3a0 .scope generate, "genblk1[13]" "genblk1[13]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26df590 .param/l "i" 0 3 33, +C4<01101>;
S_0x26df650 .scope generate, "genblk1[14]" "genblk1[14]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26df840 .param/l "i" 0 3 33, +C4<01110>;
S_0x26df900 .scope generate, "genblk1[15]" "genblk1[15]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26dfaf0 .param/l "i" 0 3 33, +C4<01111>;
S_0x26dfbb0 .scope generate, "genblk1[16]" "genblk1[16]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26de7e0 .param/l "i" 0 3 33, +C4<010000>;
S_0x26dff00 .scope generate, "genblk1[17]" "genblk1[17]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e00d0 .param/l "i" 0 3 33, +C4<010001>;
S_0x26e0190 .scope generate, "genblk1[18]" "genblk1[18]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e0380 .param/l "i" 0 3 33, +C4<010010>;
S_0x26e0440 .scope generate, "genblk1[19]" "genblk1[19]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e0630 .param/l "i" 0 3 33, +C4<010011>;
S_0x26e06f0 .scope generate, "genblk1[20]" "genblk1[20]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e08e0 .param/l "i" 0 3 33, +C4<010100>;
S_0x26e09a0 .scope generate, "genblk1[21]" "genblk1[21]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e0b90 .param/l "i" 0 3 33, +C4<010101>;
S_0x26e0c50 .scope generate, "genblk1[22]" "genblk1[22]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e0e40 .param/l "i" 0 3 33, +C4<010110>;
S_0x26e0f00 .scope generate, "genblk1[23]" "genblk1[23]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e10f0 .param/l "i" 0 3 33, +C4<010111>;
S_0x26e11b0 .scope generate, "genblk1[24]" "genblk1[24]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e13a0 .param/l "i" 0 3 33, +C4<011000>;
S_0x26e1460 .scope generate, "genblk1[25]" "genblk1[25]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e1650 .param/l "i" 0 3 33, +C4<011001>;
S_0x26e1710 .scope generate, "genblk1[26]" "genblk1[26]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e1900 .param/l "i" 0 3 33, +C4<011010>;
S_0x26e19c0 .scope generate, "genblk1[27]" "genblk1[27]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e1bb0 .param/l "i" 0 3 33, +C4<011011>;
S_0x26e1c70 .scope generate, "genblk1[28]" "genblk1[28]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e1e60 .param/l "i" 0 3 33, +C4<011100>;
S_0x26e1f20 .scope generate, "genblk1[29]" "genblk1[29]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e2110 .param/l "i" 0 3 33, +C4<011101>;
S_0x26e21d0 .scope generate, "genblk1[30]" "genblk1[30]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e23c0 .param/l "i" 0 3 33, +C4<011110>;
S_0x26e2480 .scope generate, "genblk1[31]" "genblk1[31]" 3 33, 3 33 0, S_0x26bff40;
 .timescale 0 0;
P_0x26e2670 .param/l "i" 0 3 33, +C4<011111>;
S_0x26e2730 .scope module, "mux1" "mux32to1by32" 3 40, 5 10 0, S_0x26bff40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "input0"
    .port_info 3 /INPUT 32 "input1"
    .port_info 4 /INPUT 32 "input2"
    .port_info 5 /INPUT 32 "input3"
    .port_info 6 /INPUT 32 "input4"
    .port_info 7 /INPUT 32 "input5"
    .port_info 8 /INPUT 32 "input6"
    .port_info 9 /INPUT 32 "input7"
    .port_info 10 /INPUT 32 "input8"
    .port_info 11 /INPUT 32 "input9"
    .port_info 12 /INPUT 32 "input10"
    .port_info 13 /INPUT 32 "input11"
    .port_info 14 /INPUT 32 "input12"
    .port_info 15 /INPUT 32 "input13"
    .port_info 16 /INPUT 32 "input14"
    .port_info 17 /INPUT 32 "input15"
    .port_info 18 /INPUT 32 "input16"
    .port_info 19 /INPUT 32 "input17"
    .port_info 20 /INPUT 32 "input18"
    .port_info 21 /INPUT 32 "input19"
    .port_info 22 /INPUT 32 "input20"
    .port_info 23 /INPUT 32 "input21"
    .port_info 24 /INPUT 32 "input22"
    .port_info 25 /INPUT 32 "input23"
    .port_info 26 /INPUT 32 "input24"
    .port_info 27 /INPUT 32 "input25"
    .port_info 28 /INPUT 32 "input26"
    .port_info 29 /INPUT 32 "input27"
    .port_info 30 /INPUT 32 "input28"
    .port_info 31 /INPUT 32 "input29"
    .port_info 32 /INPUT 32 "input30"
    .port_info 33 /INPUT 32 "input31"
L_0x7ffb167b20a8 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x26fc9f0 .functor BUFZ 32, L_0x7ffb167b20a8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_1 .array/port v0x26e93d0, 1;
L_0x26fca60 .functor BUFZ 32, v0x26e93d0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_2 .array/port v0x26e93d0, 2;
L_0x26fcad0 .functor BUFZ 32, v0x26e93d0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_3 .array/port v0x26e93d0, 3;
L_0x26fcb40 .functor BUFZ 32, v0x26e93d0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_4 .array/port v0x26e93d0, 4;
L_0x26fcbb0 .functor BUFZ 32, v0x26e93d0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_5 .array/port v0x26e93d0, 5;
L_0x26fcc20 .functor BUFZ 32, v0x26e93d0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_6 .array/port v0x26e93d0, 6;
L_0x26fcc90 .functor BUFZ 32, v0x26e93d0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_7 .array/port v0x26e93d0, 7;
L_0x26fcd00 .functor BUFZ 32, v0x26e93d0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_8 .array/port v0x26e93d0, 8;
L_0x26fcd70 .functor BUFZ 32, v0x26e93d0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_9 .array/port v0x26e93d0, 9;
L_0x26fcde0 .functor BUFZ 32, v0x26e93d0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_10 .array/port v0x26e93d0, 10;
L_0x26fce50 .functor BUFZ 32, v0x26e93d0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_11 .array/port v0x26e93d0, 11;
L_0x26fcec0 .functor BUFZ 32, v0x26e93d0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_12 .array/port v0x26e93d0, 12;
L_0x26fcfa0 .functor BUFZ 32, v0x26e93d0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_13 .array/port v0x26e93d0, 13;
L_0x26fd010 .functor BUFZ 32, v0x26e93d0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_14 .array/port v0x26e93d0, 14;
L_0x26fcf30 .functor BUFZ 32, v0x26e93d0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_15 .array/port v0x26e93d0, 15;
L_0x26fd100 .functor BUFZ 32, v0x26e93d0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_16 .array/port v0x26e93d0, 16;
L_0x26fd200 .functor BUFZ 32, v0x26e93d0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_17 .array/port v0x26e93d0, 17;
L_0x26fd270 .functor BUFZ 32, v0x26e93d0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_18 .array/port v0x26e93d0, 18;
L_0x26fd170 .functor BUFZ 32, v0x26e93d0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_19 .array/port v0x26e93d0, 19;
L_0x26fd380 .functor BUFZ 32, v0x26e93d0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_20 .array/port v0x26e93d0, 20;
L_0x26fd2e0 .functor BUFZ 32, v0x26e93d0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_21 .array/port v0x26e93d0, 21;
L_0x26fd4a0 .functor BUFZ 32, v0x26e93d0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_22 .array/port v0x26e93d0, 22;
L_0x26fd3f0 .functor BUFZ 32, v0x26e93d0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_23 .array/port v0x26e93d0, 23;
L_0x26fd5d0 .functor BUFZ 32, v0x26e93d0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_24 .array/port v0x26e93d0, 24;
L_0x26fd510 .functor BUFZ 32, v0x26e93d0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_25 .array/port v0x26e93d0, 25;
L_0x26fd710 .functor BUFZ 32, v0x26e93d0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_26 .array/port v0x26e93d0, 26;
L_0x26fd640 .functor BUFZ 32, v0x26e93d0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_27 .array/port v0x26e93d0, 27;
L_0x26fd860 .functor BUFZ 32, v0x26e93d0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_28 .array/port v0x26e93d0, 28;
L_0x26fd780 .functor BUFZ 32, v0x26e93d0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_29 .array/port v0x26e93d0, 29;
L_0x26fd9c0 .functor BUFZ 32, v0x26e93d0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_30 .array/port v0x26e93d0, 30;
L_0x26fd8d0 .functor BUFZ 32, v0x26e93d0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x26e93d0_31 .array/port v0x26e93d0, 31;
L_0x26fdb30 .functor BUFZ 32, v0x26e93d0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fdde0 .functor BUFZ 32, L_0x26fda30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7ffb167b2060 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x26dfda0_0 .net *"_s101", 1 0, L_0x7ffb167b2060;  1 drivers
v0x26e2f70_0 .net *"_s96", 31 0, L_0x26fda30;  1 drivers
v0x26e3030_0 .net *"_s98", 6 0, L_0x26fdcb0;  1 drivers
v0x26e3110_0 .net "address", 4 0, v0x26ea5f0_0;  alias, 1 drivers
v0x26e31f0_0 .net "input0", 31 0, L_0x7ffb167b20a8;  1 drivers
v0x26e3320_0 .net "input1", 31 0, v0x26e93d0_1;  1 drivers
v0x26e3400_0 .net "input10", 31 0, v0x26e93d0_10;  1 drivers
v0x26e34e0_0 .net "input11", 31 0, v0x26e93d0_11;  1 drivers
v0x26e35c0_0 .net "input12", 31 0, v0x26e93d0_12;  1 drivers
v0x26e3730_0 .net "input13", 31 0, v0x26e93d0_13;  1 drivers
v0x26e3810_0 .net "input14", 31 0, v0x26e93d0_14;  1 drivers
v0x26e38f0_0 .net "input15", 31 0, v0x26e93d0_15;  1 drivers
v0x26e39d0_0 .net "input16", 31 0, v0x26e93d0_16;  1 drivers
v0x26e3ab0_0 .net "input17", 31 0, v0x26e93d0_17;  1 drivers
v0x26e3b90_0 .net "input18", 31 0, v0x26e93d0_18;  1 drivers
v0x26e3c70_0 .net "input19", 31 0, v0x26e93d0_19;  1 drivers
v0x26e3d50_0 .net "input2", 31 0, v0x26e93d0_2;  1 drivers
v0x26e3f00_0 .net "input20", 31 0, v0x26e93d0_20;  1 drivers
v0x26e3fa0_0 .net "input21", 31 0, v0x26e93d0_21;  1 drivers
v0x26e4080_0 .net "input22", 31 0, v0x26e93d0_22;  1 drivers
v0x26e4160_0 .net "input23", 31 0, v0x26e93d0_23;  1 drivers
v0x26e4240_0 .net "input24", 31 0, v0x26e93d0_24;  1 drivers
v0x26e4320_0 .net "input25", 31 0, v0x26e93d0_25;  1 drivers
v0x26e4400_0 .net "input26", 31 0, v0x26e93d0_26;  1 drivers
v0x26e44e0_0 .net "input27", 31 0, v0x26e93d0_27;  1 drivers
v0x26e45c0_0 .net "input28", 31 0, v0x26e93d0_28;  1 drivers
v0x26e46a0_0 .net "input29", 31 0, v0x26e93d0_29;  1 drivers
v0x26e4780_0 .net "input3", 31 0, v0x26e93d0_3;  1 drivers
v0x26e4860_0 .net "input30", 31 0, v0x26e93d0_30;  1 drivers
v0x26e4940_0 .net "input31", 31 0, v0x26e93d0_31;  1 drivers
v0x26e4a20_0 .net "input4", 31 0, v0x26e93d0_4;  1 drivers
v0x26e4b00_0 .net "input5", 31 0, v0x26e93d0_5;  1 drivers
v0x26e4be0_0 .net "input6", 31 0, v0x26e93d0_6;  1 drivers
v0x26e3e30_0 .net "input7", 31 0, v0x26e93d0_7;  1 drivers
v0x26e4eb0_0 .net "input8", 31 0, v0x26e93d0_8;  1 drivers
v0x26e4f90_0 .net "input9", 31 0, v0x26e93d0_9;  1 drivers
v0x26e5070 .array "mux", 0 31;
v0x26e5070_0 .net v0x26e5070 0, 31 0, L_0x26fc9f0; 1 drivers
v0x26e5070_1 .net v0x26e5070 1, 31 0, L_0x26fca60; 1 drivers
v0x26e5070_2 .net v0x26e5070 2, 31 0, L_0x26fcad0; 1 drivers
v0x26e5070_3 .net v0x26e5070 3, 31 0, L_0x26fcb40; 1 drivers
v0x26e5070_4 .net v0x26e5070 4, 31 0, L_0x26fcbb0; 1 drivers
v0x26e5070_5 .net v0x26e5070 5, 31 0, L_0x26fcc20; 1 drivers
v0x26e5070_6 .net v0x26e5070 6, 31 0, L_0x26fcc90; 1 drivers
v0x26e5070_7 .net v0x26e5070 7, 31 0, L_0x26fcd00; 1 drivers
v0x26e5070_8 .net v0x26e5070 8, 31 0, L_0x26fcd70; 1 drivers
v0x26e5070_9 .net v0x26e5070 9, 31 0, L_0x26fcde0; 1 drivers
v0x26e5070_10 .net v0x26e5070 10, 31 0, L_0x26fce50; 1 drivers
v0x26e5070_11 .net v0x26e5070 11, 31 0, L_0x26fcec0; 1 drivers
v0x26e5070_12 .net v0x26e5070 12, 31 0, L_0x26fcfa0; 1 drivers
v0x26e5070_13 .net v0x26e5070 13, 31 0, L_0x26fd010; 1 drivers
v0x26e5070_14 .net v0x26e5070 14, 31 0, L_0x26fcf30; 1 drivers
v0x26e5070_15 .net v0x26e5070 15, 31 0, L_0x26fd100; 1 drivers
v0x26e5070_16 .net v0x26e5070 16, 31 0, L_0x26fd200; 1 drivers
v0x26e5070_17 .net v0x26e5070 17, 31 0, L_0x26fd270; 1 drivers
v0x26e5070_18 .net v0x26e5070 18, 31 0, L_0x26fd170; 1 drivers
v0x26e5070_19 .net v0x26e5070 19, 31 0, L_0x26fd380; 1 drivers
v0x26e5070_20 .net v0x26e5070 20, 31 0, L_0x26fd2e0; 1 drivers
v0x26e5070_21 .net v0x26e5070 21, 31 0, L_0x26fd4a0; 1 drivers
v0x26e5070_22 .net v0x26e5070 22, 31 0, L_0x26fd3f0; 1 drivers
v0x26e5070_23 .net v0x26e5070 23, 31 0, L_0x26fd5d0; 1 drivers
v0x26e5070_24 .net v0x26e5070 24, 31 0, L_0x26fd510; 1 drivers
v0x26e5070_25 .net v0x26e5070 25, 31 0, L_0x26fd710; 1 drivers
v0x26e5070_26 .net v0x26e5070 26, 31 0, L_0x26fd640; 1 drivers
v0x26e5070_27 .net v0x26e5070 27, 31 0, L_0x26fd860; 1 drivers
v0x26e5070_28 .net v0x26e5070 28, 31 0, L_0x26fd780; 1 drivers
v0x26e5070_29 .net v0x26e5070 29, 31 0, L_0x26fd9c0; 1 drivers
v0x26e5070_30 .net v0x26e5070 30, 31 0, L_0x26fd8d0; 1 drivers
v0x26e5070_31 .net v0x26e5070 31, 31 0, L_0x26fdb30; 1 drivers
v0x26e5640_0 .net "out", 31 0, L_0x26fdde0;  alias, 1 drivers
L_0x26fda30 .array/port v0x26e5070, L_0x26fdcb0;
L_0x26fdcb0 .concat [ 5 2 0 0], v0x26ea5f0_0, L_0x7ffb167b2060;
S_0x26e5c80 .scope module, "mux2" "mux32to1by32" 3 41, 5 10 0, S_0x26bff40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "input0"
    .port_info 3 /INPUT 32 "input1"
    .port_info 4 /INPUT 32 "input2"
    .port_info 5 /INPUT 32 "input3"
    .port_info 6 /INPUT 32 "input4"
    .port_info 7 /INPUT 32 "input5"
    .port_info 8 /INPUT 32 "input6"
    .port_info 9 /INPUT 32 "input7"
    .port_info 10 /INPUT 32 "input8"
    .port_info 11 /INPUT 32 "input9"
    .port_info 12 /INPUT 32 "input10"
    .port_info 13 /INPUT 32 "input11"
    .port_info 14 /INPUT 32 "input12"
    .port_info 15 /INPUT 32 "input13"
    .port_info 16 /INPUT 32 "input14"
    .port_info 17 /INPUT 32 "input15"
    .port_info 18 /INPUT 32 "input16"
    .port_info 19 /INPUT 32 "input17"
    .port_info 20 /INPUT 32 "input18"
    .port_info 21 /INPUT 32 "input19"
    .port_info 22 /INPUT 32 "input20"
    .port_info 23 /INPUT 32 "input21"
    .port_info 24 /INPUT 32 "input22"
    .port_info 25 /INPUT 32 "input23"
    .port_info 26 /INPUT 32 "input24"
    .port_info 27 /INPUT 32 "input25"
    .port_info 28 /INPUT 32 "input26"
    .port_info 29 /INPUT 32 "input27"
    .port_info 30 /INPUT 32 "input28"
    .port_info 31 /INPUT 32 "input29"
    .port_info 32 /INPUT 32 "input30"
    .port_info 33 /INPUT 32 "input31"
L_0x7ffb167b2138 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x26fdee0 .functor BUFZ 32, L_0x7ffb167b2138, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fdf50 .functor BUFZ 32, v0x26e93d0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fe050 .functor BUFZ 32, v0x26e93d0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fe180 .functor BUFZ 32, v0x26e93d0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fe2e0 .functor BUFZ 32, v0x26e93d0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fe410 .functor BUFZ 32, v0x26e93d0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fe580 .functor BUFZ 32, v0x26e93d0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fe680 .functor BUFZ 32, v0x26e93d0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fe7b0 .functor BUFZ 32, v0x26e93d0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fe8e0 .functor BUFZ 32, v0x26e93d0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fea10 .functor BUFZ 32, v0x26e93d0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26feb40 .functor BUFZ 32, v0x26e93d0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fece0 .functor BUFZ 32, v0x26e93d0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fee10 .functor BUFZ 32, v0x26e93d0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fec70 .functor BUFZ 32, v0x26e93d0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ff000 .functor BUFZ 32, v0x26e93d0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ff1c0 .functor BUFZ 32, v0x26e93d0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ff2f0 .functor BUFZ 32, v0x26e93d0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ff130 .functor BUFZ 32, v0x26e93d0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ff580 .functor BUFZ 32, v0x26e93d0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ff420 .functor BUFZ 32, v0x26e93d0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ff7f0 .functor BUFZ 32, v0x26e93d0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ff6b0 .functor BUFZ 32, v0x26e93d0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ffa70 .functor BUFZ 32, v0x26e93d0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ff920 .functor BUFZ 32, v0x26e93d0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ffd00 .functor BUFZ 32, v0x26e93d0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ffba0 .functor BUFZ 32, v0x26e93d0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26fffa0 .functor BUFZ 32, v0x26e93d0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x26ffe30 .functor BUFZ 32, v0x26e93d0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x2700220 .functor BUFZ 32, v0x26e93d0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x27000a0 .functor BUFZ 32, v0x26e93d0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x27004b0 .functor BUFZ 32, v0x26e93d0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x27007f0 .functor BUFZ 32, L_0x2700320, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7ffb167b20f0 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x26e6140_0 .net *"_s101", 1 0, L_0x7ffb167b20f0;  1 drivers
v0x26e6240_0 .net *"_s96", 31 0, L_0x2700320;  1 drivers
v0x26e6320_0 .net *"_s98", 6 0, L_0x27006c0;  1 drivers
v0x26e63e0_0 .net "address", 4 0, v0x26ea700_0;  alias, 1 drivers
v0x26e64c0_0 .net "input0", 31 0, L_0x7ffb167b2138;  1 drivers
v0x26e65f0_0 .net "input1", 31 0, v0x26e93d0_1;  alias, 1 drivers
v0x26e66b0_0 .net "input10", 31 0, v0x26e93d0_10;  alias, 1 drivers
v0x26e6750_0 .net "input11", 31 0, v0x26e93d0_11;  alias, 1 drivers
v0x26e6820_0 .net "input12", 31 0, v0x26e93d0_12;  alias, 1 drivers
v0x26e6980_0 .net "input13", 31 0, v0x26e93d0_13;  alias, 1 drivers
v0x26e6a50_0 .net "input14", 31 0, v0x26e93d0_14;  alias, 1 drivers
v0x26e6b20_0 .net "input15", 31 0, v0x26e93d0_15;  alias, 1 drivers
v0x26e6bf0_0 .net "input16", 31 0, v0x26e93d0_16;  alias, 1 drivers
v0x26e6cc0_0 .net "input17", 31 0, v0x26e93d0_17;  alias, 1 drivers
v0x26e6d90_0 .net "input18", 31 0, v0x26e93d0_18;  alias, 1 drivers
v0x26e6e60_0 .net "input19", 31 0, v0x26e93d0_19;  alias, 1 drivers
v0x26e6f30_0 .net "input2", 31 0, v0x26e93d0_2;  alias, 1 drivers
v0x26e70e0_0 .net "input20", 31 0, v0x26e93d0_20;  alias, 1 drivers
v0x26e7180_0 .net "input21", 31 0, v0x26e93d0_21;  alias, 1 drivers
v0x26e7220_0 .net "input22", 31 0, v0x26e93d0_22;  alias, 1 drivers
v0x26e72f0_0 .net "input23", 31 0, v0x26e93d0_23;  alias, 1 drivers
v0x26e73c0_0 .net "input24", 31 0, v0x26e93d0_24;  alias, 1 drivers
v0x26e7490_0 .net "input25", 31 0, v0x26e93d0_25;  alias, 1 drivers
v0x26e7560_0 .net "input26", 31 0, v0x26e93d0_26;  alias, 1 drivers
v0x26e7630_0 .net "input27", 31 0, v0x26e93d0_27;  alias, 1 drivers
v0x26e7700_0 .net "input28", 31 0, v0x26e93d0_28;  alias, 1 drivers
v0x26e77d0_0 .net "input29", 31 0, v0x26e93d0_29;  alias, 1 drivers
v0x26e78a0_0 .net "input3", 31 0, v0x26e93d0_3;  alias, 1 drivers
v0x26e7970_0 .net "input30", 31 0, v0x26e93d0_30;  alias, 1 drivers
v0x26e7a40_0 .net "input31", 31 0, v0x26e93d0_31;  alias, 1 drivers
v0x26e7b10_0 .net "input4", 31 0, v0x26e93d0_4;  alias, 1 drivers
v0x26e7be0_0 .net "input5", 31 0, v0x26e93d0_5;  alias, 1 drivers
v0x26e7cb0_0 .net "input6", 31 0, v0x26e93d0_6;  alias, 1 drivers
v0x26e7000_0 .net "input7", 31 0, v0x26e93d0_7;  alias, 1 drivers
v0x26e7f60_0 .net "input8", 31 0, v0x26e93d0_8;  alias, 1 drivers
v0x26e8030_0 .net "input9", 31 0, v0x26e93d0_9;  alias, 1 drivers
v0x26e8100 .array "mux", 0 31;
v0x26e8100_0 .net v0x26e8100 0, 31 0, L_0x26fdee0; 1 drivers
v0x26e8100_1 .net v0x26e8100 1, 31 0, L_0x26fdf50; 1 drivers
v0x26e8100_2 .net v0x26e8100 2, 31 0, L_0x26fe050; 1 drivers
v0x26e8100_3 .net v0x26e8100 3, 31 0, L_0x26fe180; 1 drivers
v0x26e8100_4 .net v0x26e8100 4, 31 0, L_0x26fe2e0; 1 drivers
v0x26e8100_5 .net v0x26e8100 5, 31 0, L_0x26fe410; 1 drivers
v0x26e8100_6 .net v0x26e8100 6, 31 0, L_0x26fe580; 1 drivers
v0x26e8100_7 .net v0x26e8100 7, 31 0, L_0x26fe680; 1 drivers
v0x26e8100_8 .net v0x26e8100 8, 31 0, L_0x26fe7b0; 1 drivers
v0x26e8100_9 .net v0x26e8100 9, 31 0, L_0x26fe8e0; 1 drivers
v0x26e8100_10 .net v0x26e8100 10, 31 0, L_0x26fea10; 1 drivers
v0x26e8100_11 .net v0x26e8100 11, 31 0, L_0x26feb40; 1 drivers
v0x26e8100_12 .net v0x26e8100 12, 31 0, L_0x26fece0; 1 drivers
v0x26e8100_13 .net v0x26e8100 13, 31 0, L_0x26fee10; 1 drivers
v0x26e8100_14 .net v0x26e8100 14, 31 0, L_0x26fec70; 1 drivers
v0x26e8100_15 .net v0x26e8100 15, 31 0, L_0x26ff000; 1 drivers
v0x26e8100_16 .net v0x26e8100 16, 31 0, L_0x26ff1c0; 1 drivers
v0x26e8100_17 .net v0x26e8100 17, 31 0, L_0x26ff2f0; 1 drivers
v0x26e8100_18 .net v0x26e8100 18, 31 0, L_0x26ff130; 1 drivers
v0x26e8100_19 .net v0x26e8100 19, 31 0, L_0x26ff580; 1 drivers
v0x26e8100_20 .net v0x26e8100 20, 31 0, L_0x26ff420; 1 drivers
v0x26e8100_21 .net v0x26e8100 21, 31 0, L_0x26ff7f0; 1 drivers
v0x26e8100_22 .net v0x26e8100 22, 31 0, L_0x26ff6b0; 1 drivers
v0x26e8100_23 .net v0x26e8100 23, 31 0, L_0x26ffa70; 1 drivers
v0x26e8100_24 .net v0x26e8100 24, 31 0, L_0x26ff920; 1 drivers
v0x26e8100_25 .net v0x26e8100 25, 31 0, L_0x26ffd00; 1 drivers
v0x26e8100_26 .net v0x26e8100 26, 31 0, L_0x26ffba0; 1 drivers
v0x26e8100_27 .net v0x26e8100 27, 31 0, L_0x26fffa0; 1 drivers
v0x26e8100_28 .net v0x26e8100 28, 31 0, L_0x26ffe30; 1 drivers
v0x26e8100_29 .net v0x26e8100 29, 31 0, L_0x2700220; 1 drivers
v0x26e8100_30 .net v0x26e8100 30, 31 0, L_0x27000a0; 1 drivers
v0x26e8100_31 .net v0x26e8100 31, 31 0, L_0x27004b0; 1 drivers
v0x26e86b0_0 .net "out", 31 0, L_0x27007f0;  alias, 1 drivers
L_0x2700320 .array/port v0x26e8100, L_0x27006c0;
L_0x27006c0 .concat [ 5 2 0 0], v0x26ea700_0, L_0x7ffb167b20f0;
S_0x26ea030 .scope module, "tester" "hw4testbench" 2 37, 2 79 0, S_0x26cf1b0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "begintest"
    .port_info 1 /OUTPUT 1 "endtest"
    .port_info 2 /OUTPUT 1 "dutpassed"
    .port_info 3 /INPUT 32 "ReadData1"
    .port_info 4 /INPUT 32 "ReadData2"
    .port_info 5 /OUTPUT 32 "WriteData"
    .port_info 6 /OUTPUT 5 "ReadRegister1"
    .port_info 7 /OUTPUT 5 "ReadRegister2"
    .port_info 8 /OUTPUT 5 "WriteRegister"
    .port_info 9 /OUTPUT 1 "RegWrite"
    .port_info 10 /OUTPUT 1 "Clk"
v0x26ea350_0 .var "Clk", 0 0;
v0x26ea410_0 .net "ReadData1", 31 0, L_0x26fdde0;  alias, 1 drivers
v0x26ea500_0 .net "ReadData2", 31 0, L_0x27007f0;  alias, 1 drivers
v0x26ea5f0_0 .var "ReadRegister1", 4 0;
v0x26ea700_0 .var "ReadRegister2", 4 0;
v0x26ea860_0 .var "RegWrite", 0 0;
v0x26ea950_0 .var "WriteData", 31 0;
v0x26eaa10_0 .var "WriteRegister", 4 0;
v0x26eab00_0 .net "begintest", 0 0, v0x26eb5f0_0;  1 drivers
v0x26eac50_0 .var "dutpassed", 0 0;
v0x26ead10_0 .var "endtest", 0 0;
E_0x26e70a0 .event posedge, v0x26eab00_0;
S_0x26c0fb0 .scope module, "mux32to1by1" "mux32to1by1" 5 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7ffb167fd718 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x26eb860_0 .net "address", 4 0, o0x7ffb167fd718;  0 drivers
o0x7ffb167fd748 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x26eb900_0 .net "inputs", 31 0, o0x7ffb167fd748;  0 drivers
v0x26eb9e0_0 .net "out", 0 0, L_0x27008f0;  1 drivers
L_0x27008f0 .part/v o0x7ffb167fd748, o0x7ffb167fd718, 1;
S_0x26c0c80 .scope module, "register" "register" 6 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7ffb167fd838 .functor BUFZ 1, C4<z>; HiZ drive
v0x26ebb60_0 .net "clk", 0 0, o0x7ffb167fd838;  0 drivers
o0x7ffb167fd868 .functor BUFZ 1, C4<z>; HiZ drive
v0x26ebc40_0 .net "d", 0 0, o0x7ffb167fd868;  0 drivers
v0x26ebd00_0 .var "q", 0 0;
o0x7ffb167fd8c8 .functor BUFZ 1, C4<z>; HiZ drive
v0x26ebda0_0 .net "wrenable", 0 0, o0x7ffb167fd8c8;  0 drivers
E_0x26ebb00 .event posedge, v0x26ebb60_0;
S_0x26c05a0 .scope module, "register32" "register32" 6 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7ffb167fd9b8 .functor BUFZ 1, C4<z>; HiZ drive
v0x26ebf60_0 .net "clk", 0 0, o0x7ffb167fd9b8;  0 drivers
o0x7ffb167fd9e8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x26ec040_0 .net "d", 31 0, o0x7ffb167fd9e8;  0 drivers
v0x26ec120_0 .var "q", 31 0;
o0x7ffb167fda48 .functor BUFZ 1, C4<z>; HiZ drive
v0x26ec1e0_0 .net "wrenable", 0 0, o0x7ffb167fda48;  0 drivers
E_0x26ebee0 .event posedge, v0x26ebf60_0;
S_0x26c0270 .scope module, "register32zero" "register32zero" 6 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7ffb167fdb38 .functor BUFZ 1, C4<z>; HiZ drive
v0x26ec3a0_0 .net "clk", 0 0, o0x7ffb167fdb38;  0 drivers
o0x7ffb167fdb68 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x26ec480_0 .net "d", 31 0, o0x7ffb167fdb68;  0 drivers
v0x26ec560_0 .var "q", 31 0;
o0x7ffb167fdbc8 .functor BUFZ 1, C4<z>; HiZ drive
v0x26ec620_0 .net "wrenable", 0 0, o0x7ffb167fdbc8;  0 drivers
E_0x26ec320 .event posedge, v0x26ec3a0_0;
    .scope S_0x26dd270;
T_0 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_0.0 ;
    %jmp T_0;
    .thread T_0;
    .scope S_0x26dd580;
T_1 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_1.0 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x26dd830;
T_2 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_2.0 ;
    %jmp T_2;
    .thread T_2;
    .scope S_0x26ddae0;
T_3 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_3.0 ;
    %jmp T_3;
    .thread T_3;
    .scope S_0x26ddde0;
T_4 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x26de090;
T_5 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_5.0 ;
    %jmp T_5;
    .thread T_5;
    .scope S_0x26de340;
T_6 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_6.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_6.0 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0x26de5f0;
T_7 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x26de8e0;
T_8 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x26deb90;
T_9 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x26dee40;
T_10 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x26df0f0;
T_11 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x26df3a0;
T_12 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x26df650;
T_13 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x26df900;
T_14 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x26dfbb0;
T_15 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x26dff00;
T_16 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x26e0190;
T_17 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x26e0440;
T_18 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x26e06f0;
T_19 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x26e09a0;
T_20 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x26e0c50;
T_21 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x26e0f00;
T_22 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x26e11b0;
T_23 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x26e1460;
T_24 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x26e1710;
T_25 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x26e19c0;
T_26 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x26e1c70;
T_27 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x26e1f20;
T_28 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x26e21d0;
T_29 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x26e2480;
T_30 ;
    %wait E_0x26dd520;
    %load/vec4 v0x26e9270_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x26e9100_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x26e93d0, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x26ea030;
T_31 ;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x26ea950_0, 0, 32;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x26ea5f0_0, 0, 5;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x26ea700_0, 0, 5;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x26eaa10_0, 0, 5;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea860_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %end;
    .thread T_31;
    .scope S_0x26ea030;
T_32 ;
    %wait E_0x26e70a0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ead10_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26eac50_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x26eaa10_0, 0, 5;
    %pushi/vec4 42, 0, 32;
    %store/vec4 v0x26ea950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea860_0, 0, 1;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x26ea5f0_0, 0, 5;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x26ea700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %load/vec4 v0x26ea410_0;
    %cmpi/ne 42, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x26ea500_0;
    %cmpi/ne 42, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.0, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26eac50_0, 0, 1;
    %vpi_call 2 125 "$display", "Test Case 1 Failed" {0 0 0};
T_32.0 ;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x26eaa10_0, 0, 5;
    %pushi/vec4 15, 0, 32;
    %store/vec4 v0x26ea950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea860_0, 0, 1;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x26ea5f0_0, 0, 5;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x26ea700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %load/vec4 v0x26ea410_0;
    %cmpi/ne 15, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x26ea500_0;
    %cmpi/ne 15, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.2, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26eac50_0, 0, 1;
    %vpi_call 2 139 "$display", "Test Case 2 Failed" {0 0 0};
T_32.2 ;
    %pushi/vec4 31, 0, 5;
    %store/vec4 v0x26eaa10_0, 0, 5;
    %pushi/vec4 2147483647, 0, 32;
    %store/vec4 v0x26ea950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea860_0, 0, 1;
    %pushi/vec4 31, 0, 5;
    %store/vec4 v0x26ea5f0_0, 0, 5;
    %pushi/vec4 31, 0, 5;
    %store/vec4 v0x26ea700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %load/vec4 v0x26ea410_0;
    %cmpi/ne 2147483647, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x26ea500_0;
    %cmpi/ne 2147483647, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.4, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26eac50_0, 0, 1;
    %vpi_call 2 153 "$display", "Test Case 3 Failed" {0 0 0};
T_32.4 ;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x26ea5f0_0, 0, 5;
    %pushi/vec4 31, 0, 5;
    %store/vec4 v0x26ea700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %load/vec4 v0x26ea410_0;
    %cmpi/ne 15, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x26ea500_0;
    %cmpi/ne 2147483647, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.6, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26eac50_0, 0, 1;
    %vpi_call 2 164 "$display", "Test Case 4 Failed: Check decoder, may be writing to all ports or check read ports for stuck port." {0 0 0};
T_32.6 ;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x26eaa10_0, 0, 5;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x26ea950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea860_0, 0, 1;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x26ea5f0_0, 0, 5;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x26ea700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %load/vec4 v0x26ea410_0;
    %cmpi/ne 0, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x26ea500_0;
    %cmpi/ne 0, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.8, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26eac50_0, 0, 1;
    %vpi_call 2 178 "$display", "Test Case 5 Failed" {0 0 0};
T_32.8 ;
    %pushi/vec4 3, 0, 5;
    %store/vec4 v0x26eaa10_0, 0, 5;
    %pushi/vec4 4294967295, 0, 32;
    %store/vec4 v0x26ea950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea860_0, 0, 1;
    %pushi/vec4 3, 0, 5;
    %store/vec4 v0x26ea5f0_0, 0, 5;
    %pushi/vec4 3, 0, 5;
    %store/vec4 v0x26ea700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %load/vec4 v0x26ea410_0;
    %pad/u 33;
    %cmpi/ne 4294967295, 0, 33;
    %flag_mov 8, 6;
    %load/vec4 v0x26ea500_0;
    %pad/u 33;
    %cmpi/ne 4294967295, 0, 33;
    %flag_or 6, 8;
    %jmp/0xz  T_32.10, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26eac50_0, 0, 1;
    %vpi_call 2 192 "$display", "Test Case 6 Failed" {0 0 0};
T_32.10 ;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x26eaa10_0, 0, 5;
    %pushi/vec4 72, 0, 32;
    %store/vec4 v0x26ea950_0, 0, 32;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea860_0, 0, 1;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x26ea5f0_0, 0, 5;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x26ea700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %load/vec4 v0x26ea410_0;
    %cmpi/ne 0, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x26ea500_0;
    %cmpi/ne 0, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.12, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26eac50_0, 0, 1;
    %vpi_call 2 206 "$display", "Test Case 7 Failed: Check Write Enable, may not be disabling writing to register." {0 0 0};
T_32.12 ;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x26eaa10_0, 0, 5;
    %pushi/vec4 512, 0, 32;
    %store/vec4 v0x26ea950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea860_0, 0, 1;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x26ea5f0_0, 0, 5;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x26ea700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26ea350_0, 0, 1;
    %load/vec4 v0x26ea410_0;
    %cmpi/ne 0, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x26ea500_0;
    %cmpi/ne 0, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.14, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26eac50_0, 0, 1;
    %vpi_call 2 219 "$display", "Test Case 8 Failed: Register 0 not reading 0." {0 0 0};
T_32.14 ;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26ead10_0, 0, 1;
    %jmp T_32;
    .thread T_32;
    .scope S_0x26cf1b0;
T_33 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x26eb5f0_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x26eb5f0_0, 0, 1;
    %delay 1000, 0;
    %end;
    .thread T_33;
    .scope S_0x26cf1b0;
T_34 ;
    %wait E_0x26bfb20;
    %vpi_call 2 62 "$display", "DUT passed?: %b", v0x26eb720_0 {0 0 0};
    %jmp T_34;
    .thread T_34;
    .scope S_0x26c0c80;
T_35 ;
    %wait E_0x26ebb00;
    %load/vec4 v0x26ebda0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x26ebc40_0;
    %assign/vec4 v0x26ebd00_0, 0;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x26c05a0;
T_36 ;
    %wait E_0x26ebee0;
    %load/vec4 v0x26ec1e0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x26ec040_0;
    %assign/vec4 v0x26ec120_0, 0;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x26c0270;
T_37 ;
    %wait E_0x26ec320;
    %load/vec4 v0x26ec620_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x26ec560_0, 0;
T_37.0 ;
    %jmp T_37;
    .thread T_37;
# The file index is used to find the file name in the following table.
:file_names 7;
    "N/A";
    "<interactive>";
    "regfile.t.v";
    "./regfile.v";
    "./decoders.v";
    "./mux.v";
    "./register.v";
