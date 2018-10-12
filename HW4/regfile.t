#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x237c1b0 .scope module, "hw4testbenchharness" "hw4testbenchharness" 2 8;
 .timescale 0 0;
v0x2397f90_0 .net "Clk", 0 0, v0x2397350_0;  1 drivers
v0x2398050_0 .net "ReadData1", 31 0, L_0x23aade0;  1 drivers
v0x2398110_0 .net "ReadData2", 31 0, L_0x23ad7f0;  1 drivers
v0x23981b0_0 .net "ReadRegister1", 4 0, v0x23975f0_0;  1 drivers
v0x2398270_0 .net "ReadRegister2", 4 0, v0x2397700_0;  1 drivers
v0x2398380_0 .net "RegWrite", 0 0, v0x2397860_0;  1 drivers
v0x2398420_0 .net "WriteData", 31 0, v0x2397950_0;  1 drivers
v0x2398530_0 .net "WriteRegister", 4 0, v0x2397a10_0;  1 drivers
v0x23985f0_0 .var "begintest", 0 0;
v0x2398720_0 .net "dutpassed", 0 0, v0x2397c50_0;  1 drivers
v0x23987c0_0 .net "endtest", 0 0, v0x2397d10_0;  1 drivers
E_0x236cb20 .event posedge, v0x2397d10_0;
S_0x236cf40 .scope module, "DUT" "regfile" 2 24, 3 12 0, S_0x237c1b0;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "ReadData1"
    .port_info 1 /OUTPUT 32 "ReadData2"
    .port_info 2 /INPUT 32 "WriteData"
    .port_info 3 /INPUT 5 "ReadRegister1"
    .port_info 4 /INPUT 5 "ReadRegister2"
    .port_info 5 /INPUT 5 "WriteRegister"
    .port_info 6 /INPUT 1 "RegWrite"
    .port_info 7 /INPUT 1 "Clk"
v0x238fb10_0 .net "Clk", 0 0, v0x2397350_0;  alias, 1 drivers
v0x2395cf0_0 .net "ReadData1", 31 0, L_0x23aade0;  alias, 1 drivers
v0x2395dc0_0 .net "ReadData2", 31 0, L_0x23ad7f0;  alias, 1 drivers
v0x2395ec0_0 .net "ReadRegister1", 4 0, v0x23975f0_0;  alias, 1 drivers
v0x2395f90_0 .net "ReadRegister2", 4 0, v0x2397700_0;  alias, 1 drivers
v0x2396030_0 .net "RegWrite", 0 0, v0x2397860_0;  alias, 1 drivers
v0x2396100_0 .net "WriteData", 31 0, v0x2397950_0;  alias, 1 drivers
v0x23961a0_0 .net "WriteRegister", 4 0, v0x2397a10_0;  alias, 1 drivers
v0x2396270_0 .net "decoded", 31 0, L_0x23a98c0;  1 drivers
v0x23963d0 .array "registers", 0 31, 31 0;
S_0x236cc10 .scope module, "deco" "decoder1to32" 3 30, 4 4 0, S_0x236cf40;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "out"
    .port_info 1 /INPUT 1 "enable"
    .port_info 2 /INPUT 5 "address"
v0x2342220_0 .net *"_s0", 31 0, L_0x2399760;  1 drivers
L_0x7f87a2444018 .functor BUFT 1, C4<0000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v0x2389e30_0 .net *"_s3", 30 0, L_0x7f87a2444018;  1 drivers
v0x2389f10_0 .net "address", 4 0, v0x2397a10_0;  alias, 1 drivers
v0x238a000_0 .net "enable", 0 0, v0x2397860_0;  alias, 1 drivers
v0x238a0c0_0 .net "out", 31 0, L_0x23a98c0;  alias, 1 drivers
L_0x2399760 .concat [ 1 31 0 0], v0x2397860_0, L_0x7f87a2444018;
L_0x23a98c0 .shift/l 32, L_0x2399760, v0x2397a10_0;
S_0x238a270 .scope generate, "genblk1[1]" "genblk1[1]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238a460 .param/l "i" 0 3 33, +C4<01>;
E_0x238a520 .event posedge, v0x238fb10_0;
S_0x238a580 .scope generate, "genblk1[2]" "genblk1[2]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238a790 .param/l "i" 0 3 33, +C4<010>;
S_0x238a830 .scope generate, "genblk1[3]" "genblk1[3]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238aa20 .param/l "i" 0 3 33, +C4<011>;
S_0x238aae0 .scope generate, "genblk1[4]" "genblk1[4]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238ad20 .param/l "i" 0 3 33, +C4<0100>;
S_0x238ade0 .scope generate, "genblk1[5]" "genblk1[5]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238afd0 .param/l "i" 0 3 33, +C4<0101>;
S_0x238b090 .scope generate, "genblk1[6]" "genblk1[6]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238b280 .param/l "i" 0 3 33, +C4<0110>;
S_0x238b340 .scope generate, "genblk1[7]" "genblk1[7]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238b530 .param/l "i" 0 3 33, +C4<0111>;
S_0x238b5f0 .scope generate, "genblk1[8]" "genblk1[8]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238acd0 .param/l "i" 0 3 33, +C4<01000>;
S_0x238b8e0 .scope generate, "genblk1[9]" "genblk1[9]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238bad0 .param/l "i" 0 3 33, +C4<01001>;
S_0x238bb90 .scope generate, "genblk1[10]" "genblk1[10]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238bd80 .param/l "i" 0 3 33, +C4<01010>;
S_0x238be40 .scope generate, "genblk1[11]" "genblk1[11]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238c030 .param/l "i" 0 3 33, +C4<01011>;
S_0x238c0f0 .scope generate, "genblk1[12]" "genblk1[12]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238c2e0 .param/l "i" 0 3 33, +C4<01100>;
S_0x238c3a0 .scope generate, "genblk1[13]" "genblk1[13]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238c590 .param/l "i" 0 3 33, +C4<01101>;
S_0x238c650 .scope generate, "genblk1[14]" "genblk1[14]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238c840 .param/l "i" 0 3 33, +C4<01110>;
S_0x238c900 .scope generate, "genblk1[15]" "genblk1[15]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238caf0 .param/l "i" 0 3 33, +C4<01111>;
S_0x238cbb0 .scope generate, "genblk1[16]" "genblk1[16]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238b7e0 .param/l "i" 0 3 33, +C4<010000>;
S_0x238cf00 .scope generate, "genblk1[17]" "genblk1[17]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238d0d0 .param/l "i" 0 3 33, +C4<010001>;
S_0x238d190 .scope generate, "genblk1[18]" "genblk1[18]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238d380 .param/l "i" 0 3 33, +C4<010010>;
S_0x238d440 .scope generate, "genblk1[19]" "genblk1[19]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238d630 .param/l "i" 0 3 33, +C4<010011>;
S_0x238d6f0 .scope generate, "genblk1[20]" "genblk1[20]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238d8e0 .param/l "i" 0 3 33, +C4<010100>;
S_0x238d9a0 .scope generate, "genblk1[21]" "genblk1[21]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238db90 .param/l "i" 0 3 33, +C4<010101>;
S_0x238dc50 .scope generate, "genblk1[22]" "genblk1[22]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238de40 .param/l "i" 0 3 33, +C4<010110>;
S_0x238df00 .scope generate, "genblk1[23]" "genblk1[23]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238e0f0 .param/l "i" 0 3 33, +C4<010111>;
S_0x238e1b0 .scope generate, "genblk1[24]" "genblk1[24]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238e3a0 .param/l "i" 0 3 33, +C4<011000>;
S_0x238e460 .scope generate, "genblk1[25]" "genblk1[25]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238e650 .param/l "i" 0 3 33, +C4<011001>;
S_0x238e710 .scope generate, "genblk1[26]" "genblk1[26]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238e900 .param/l "i" 0 3 33, +C4<011010>;
S_0x238e9c0 .scope generate, "genblk1[27]" "genblk1[27]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238ebb0 .param/l "i" 0 3 33, +C4<011011>;
S_0x238ec70 .scope generate, "genblk1[28]" "genblk1[28]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238ee60 .param/l "i" 0 3 33, +C4<011100>;
S_0x238ef20 .scope generate, "genblk1[29]" "genblk1[29]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238f110 .param/l "i" 0 3 33, +C4<011101>;
S_0x238f1d0 .scope generate, "genblk1[30]" "genblk1[30]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238f3c0 .param/l "i" 0 3 33, +C4<011110>;
S_0x238f480 .scope generate, "genblk1[31]" "genblk1[31]" 3 33, 3 33 0, S_0x236cf40;
 .timescale 0 0;
P_0x238f670 .param/l "i" 0 3 33, +C4<011111>;
S_0x238f730 .scope module, "mux1" "mux32to1by32" 3 40, 5 10 0, S_0x236cf40;
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
L_0x7f87a24440a8 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x23a99f0 .functor BUFZ 32, L_0x7f87a24440a8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_1 .array/port v0x23963d0, 1;
L_0x23a9a60 .functor BUFZ 32, v0x23963d0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_2 .array/port v0x23963d0, 2;
L_0x23a9ad0 .functor BUFZ 32, v0x23963d0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_3 .array/port v0x23963d0, 3;
L_0x23a9b40 .functor BUFZ 32, v0x23963d0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_4 .array/port v0x23963d0, 4;
L_0x23a9bb0 .functor BUFZ 32, v0x23963d0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_5 .array/port v0x23963d0, 5;
L_0x23a9c20 .functor BUFZ 32, v0x23963d0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_6 .array/port v0x23963d0, 6;
L_0x23a9c90 .functor BUFZ 32, v0x23963d0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_7 .array/port v0x23963d0, 7;
L_0x23a9d00 .functor BUFZ 32, v0x23963d0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_8 .array/port v0x23963d0, 8;
L_0x23a9d70 .functor BUFZ 32, v0x23963d0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_9 .array/port v0x23963d0, 9;
L_0x23a9de0 .functor BUFZ 32, v0x23963d0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_10 .array/port v0x23963d0, 10;
L_0x23a9e50 .functor BUFZ 32, v0x23963d0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_11 .array/port v0x23963d0, 11;
L_0x23a9ec0 .functor BUFZ 32, v0x23963d0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_12 .array/port v0x23963d0, 12;
L_0x23a9fa0 .functor BUFZ 32, v0x23963d0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_13 .array/port v0x23963d0, 13;
L_0x23aa010 .functor BUFZ 32, v0x23963d0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_14 .array/port v0x23963d0, 14;
L_0x23a9f30 .functor BUFZ 32, v0x23963d0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_15 .array/port v0x23963d0, 15;
L_0x23aa100 .functor BUFZ 32, v0x23963d0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_16 .array/port v0x23963d0, 16;
L_0x23aa200 .functor BUFZ 32, v0x23963d0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_17 .array/port v0x23963d0, 17;
L_0x23aa270 .functor BUFZ 32, v0x23963d0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_18 .array/port v0x23963d0, 18;
L_0x23aa170 .functor BUFZ 32, v0x23963d0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_19 .array/port v0x23963d0, 19;
L_0x23aa380 .functor BUFZ 32, v0x23963d0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_20 .array/port v0x23963d0, 20;
L_0x23aa2e0 .functor BUFZ 32, v0x23963d0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_21 .array/port v0x23963d0, 21;
L_0x23aa4a0 .functor BUFZ 32, v0x23963d0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_22 .array/port v0x23963d0, 22;
L_0x23aa3f0 .functor BUFZ 32, v0x23963d0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_23 .array/port v0x23963d0, 23;
L_0x23aa5d0 .functor BUFZ 32, v0x23963d0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_24 .array/port v0x23963d0, 24;
L_0x23aa510 .functor BUFZ 32, v0x23963d0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_25 .array/port v0x23963d0, 25;
L_0x23aa710 .functor BUFZ 32, v0x23963d0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_26 .array/port v0x23963d0, 26;
L_0x23aa640 .functor BUFZ 32, v0x23963d0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_27 .array/port v0x23963d0, 27;
L_0x23aa860 .functor BUFZ 32, v0x23963d0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_28 .array/port v0x23963d0, 28;
L_0x23aa780 .functor BUFZ 32, v0x23963d0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_29 .array/port v0x23963d0, 29;
L_0x23aa9c0 .functor BUFZ 32, v0x23963d0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_30 .array/port v0x23963d0, 30;
L_0x23aa8d0 .functor BUFZ 32, v0x23963d0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
v0x23963d0_31 .array/port v0x23963d0, 31;
L_0x23aab30 .functor BUFZ 32, v0x23963d0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23aade0 .functor BUFZ 32, L_0x23aaa30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f87a2444060 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x238cda0_0 .net *"_s101", 1 0, L_0x7f87a2444060;  1 drivers
v0x238ff70_0 .net *"_s96", 31 0, L_0x23aaa30;  1 drivers
v0x2390030_0 .net *"_s98", 6 0, L_0x23aacb0;  1 drivers
v0x2390110_0 .net "address", 4 0, v0x23975f0_0;  alias, 1 drivers
v0x23901f0_0 .net "input0", 31 0, L_0x7f87a24440a8;  1 drivers
v0x2390320_0 .net "input1", 31 0, v0x23963d0_1;  1 drivers
v0x2390400_0 .net "input10", 31 0, v0x23963d0_10;  1 drivers
v0x23904e0_0 .net "input11", 31 0, v0x23963d0_11;  1 drivers
v0x23905c0_0 .net "input12", 31 0, v0x23963d0_12;  1 drivers
v0x2390730_0 .net "input13", 31 0, v0x23963d0_13;  1 drivers
v0x2390810_0 .net "input14", 31 0, v0x23963d0_14;  1 drivers
v0x23908f0_0 .net "input15", 31 0, v0x23963d0_15;  1 drivers
v0x23909d0_0 .net "input16", 31 0, v0x23963d0_16;  1 drivers
v0x2390ab0_0 .net "input17", 31 0, v0x23963d0_17;  1 drivers
v0x2390b90_0 .net "input18", 31 0, v0x23963d0_18;  1 drivers
v0x2390c70_0 .net "input19", 31 0, v0x23963d0_19;  1 drivers
v0x2390d50_0 .net "input2", 31 0, v0x23963d0_2;  1 drivers
v0x2390f00_0 .net "input20", 31 0, v0x23963d0_20;  1 drivers
v0x2390fa0_0 .net "input21", 31 0, v0x23963d0_21;  1 drivers
v0x2391080_0 .net "input22", 31 0, v0x23963d0_22;  1 drivers
v0x2391160_0 .net "input23", 31 0, v0x23963d0_23;  1 drivers
v0x2391240_0 .net "input24", 31 0, v0x23963d0_24;  1 drivers
v0x2391320_0 .net "input25", 31 0, v0x23963d0_25;  1 drivers
v0x2391400_0 .net "input26", 31 0, v0x23963d0_26;  1 drivers
v0x23914e0_0 .net "input27", 31 0, v0x23963d0_27;  1 drivers
v0x23915c0_0 .net "input28", 31 0, v0x23963d0_28;  1 drivers
v0x23916a0_0 .net "input29", 31 0, v0x23963d0_29;  1 drivers
v0x2391780_0 .net "input3", 31 0, v0x23963d0_3;  1 drivers
v0x2391860_0 .net "input30", 31 0, v0x23963d0_30;  1 drivers
v0x2391940_0 .net "input31", 31 0, v0x23963d0_31;  1 drivers
v0x2391a20_0 .net "input4", 31 0, v0x23963d0_4;  1 drivers
v0x2391b00_0 .net "input5", 31 0, v0x23963d0_5;  1 drivers
v0x2391be0_0 .net "input6", 31 0, v0x23963d0_6;  1 drivers
v0x2390e30_0 .net "input7", 31 0, v0x23963d0_7;  1 drivers
v0x2391eb0_0 .net "input8", 31 0, v0x23963d0_8;  1 drivers
v0x2391f90_0 .net "input9", 31 0, v0x23963d0_9;  1 drivers
v0x2392070 .array "mux", 0 31;
v0x2392070_0 .net v0x2392070 0, 31 0, L_0x23a99f0; 1 drivers
v0x2392070_1 .net v0x2392070 1, 31 0, L_0x23a9a60; 1 drivers
v0x2392070_2 .net v0x2392070 2, 31 0, L_0x23a9ad0; 1 drivers
v0x2392070_3 .net v0x2392070 3, 31 0, L_0x23a9b40; 1 drivers
v0x2392070_4 .net v0x2392070 4, 31 0, L_0x23a9bb0; 1 drivers
v0x2392070_5 .net v0x2392070 5, 31 0, L_0x23a9c20; 1 drivers
v0x2392070_6 .net v0x2392070 6, 31 0, L_0x23a9c90; 1 drivers
v0x2392070_7 .net v0x2392070 7, 31 0, L_0x23a9d00; 1 drivers
v0x2392070_8 .net v0x2392070 8, 31 0, L_0x23a9d70; 1 drivers
v0x2392070_9 .net v0x2392070 9, 31 0, L_0x23a9de0; 1 drivers
v0x2392070_10 .net v0x2392070 10, 31 0, L_0x23a9e50; 1 drivers
v0x2392070_11 .net v0x2392070 11, 31 0, L_0x23a9ec0; 1 drivers
v0x2392070_12 .net v0x2392070 12, 31 0, L_0x23a9fa0; 1 drivers
v0x2392070_13 .net v0x2392070 13, 31 0, L_0x23aa010; 1 drivers
v0x2392070_14 .net v0x2392070 14, 31 0, L_0x23a9f30; 1 drivers
v0x2392070_15 .net v0x2392070 15, 31 0, L_0x23aa100; 1 drivers
v0x2392070_16 .net v0x2392070 16, 31 0, L_0x23aa200; 1 drivers
v0x2392070_17 .net v0x2392070 17, 31 0, L_0x23aa270; 1 drivers
v0x2392070_18 .net v0x2392070 18, 31 0, L_0x23aa170; 1 drivers
v0x2392070_19 .net v0x2392070 19, 31 0, L_0x23aa380; 1 drivers
v0x2392070_20 .net v0x2392070 20, 31 0, L_0x23aa2e0; 1 drivers
v0x2392070_21 .net v0x2392070 21, 31 0, L_0x23aa4a0; 1 drivers
v0x2392070_22 .net v0x2392070 22, 31 0, L_0x23aa3f0; 1 drivers
v0x2392070_23 .net v0x2392070 23, 31 0, L_0x23aa5d0; 1 drivers
v0x2392070_24 .net v0x2392070 24, 31 0, L_0x23aa510; 1 drivers
v0x2392070_25 .net v0x2392070 25, 31 0, L_0x23aa710; 1 drivers
v0x2392070_26 .net v0x2392070 26, 31 0, L_0x23aa640; 1 drivers
v0x2392070_27 .net v0x2392070 27, 31 0, L_0x23aa860; 1 drivers
v0x2392070_28 .net v0x2392070 28, 31 0, L_0x23aa780; 1 drivers
v0x2392070_29 .net v0x2392070 29, 31 0, L_0x23aa9c0; 1 drivers
v0x2392070_30 .net v0x2392070 30, 31 0, L_0x23aa8d0; 1 drivers
v0x2392070_31 .net v0x2392070 31, 31 0, L_0x23aab30; 1 drivers
v0x2392640_0 .net "out", 31 0, L_0x23aade0;  alias, 1 drivers
L_0x23aaa30 .array/port v0x2392070, L_0x23aacb0;
L_0x23aacb0 .concat [ 5 2 0 0], v0x23975f0_0, L_0x7f87a2444060;
S_0x2392c80 .scope module, "mux2" "mux32to1by32" 3 41, 5 10 0, S_0x236cf40;
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
L_0x7f87a2444138 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
L_0x23aaee0 .functor BUFZ 32, L_0x7f87a2444138, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23aaf50 .functor BUFZ 32, v0x23963d0_1, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ab050 .functor BUFZ 32, v0x23963d0_2, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ab180 .functor BUFZ 32, v0x23963d0_3, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ab2e0 .functor BUFZ 32, v0x23963d0_4, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ab410 .functor BUFZ 32, v0x23963d0_5, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ab580 .functor BUFZ 32, v0x23963d0_6, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ab680 .functor BUFZ 32, v0x23963d0_7, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ab7b0 .functor BUFZ 32, v0x23963d0_8, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ab8e0 .functor BUFZ 32, v0x23963d0_9, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23aba10 .functor BUFZ 32, v0x23963d0_10, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23abb40 .functor BUFZ 32, v0x23963d0_11, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23abce0 .functor BUFZ 32, v0x23963d0_12, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23abe10 .functor BUFZ 32, v0x23963d0_13, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23abc70 .functor BUFZ 32, v0x23963d0_14, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ac000 .functor BUFZ 32, v0x23963d0_15, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ac1c0 .functor BUFZ 32, v0x23963d0_16, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ac2f0 .functor BUFZ 32, v0x23963d0_17, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ac130 .functor BUFZ 32, v0x23963d0_18, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ac580 .functor BUFZ 32, v0x23963d0_19, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ac420 .functor BUFZ 32, v0x23963d0_20, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ac7f0 .functor BUFZ 32, v0x23963d0_21, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ac6b0 .functor BUFZ 32, v0x23963d0_22, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23aca70 .functor BUFZ 32, v0x23963d0_23, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ac920 .functor BUFZ 32, v0x23963d0_24, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23acd00 .functor BUFZ 32, v0x23963d0_25, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23acba0 .functor BUFZ 32, v0x23963d0_26, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23acfa0 .functor BUFZ 32, v0x23963d0_27, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ace30 .functor BUFZ 32, v0x23963d0_28, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ad220 .functor BUFZ 32, v0x23963d0_29, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ad0a0 .functor BUFZ 32, v0x23963d0_30, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ad4b0 .functor BUFZ 32, v0x23963d0_31, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x23ad7f0 .functor BUFZ 32, L_0x23ad320, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7f87a24440f0 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x2393140_0 .net *"_s101", 1 0, L_0x7f87a24440f0;  1 drivers
v0x2393240_0 .net *"_s96", 31 0, L_0x23ad320;  1 drivers
v0x2393320_0 .net *"_s98", 6 0, L_0x23ad6c0;  1 drivers
v0x23933e0_0 .net "address", 4 0, v0x2397700_0;  alias, 1 drivers
v0x23934c0_0 .net "input0", 31 0, L_0x7f87a2444138;  1 drivers
v0x23935f0_0 .net "input1", 31 0, v0x23963d0_1;  alias, 1 drivers
v0x23936b0_0 .net "input10", 31 0, v0x23963d0_10;  alias, 1 drivers
v0x2393750_0 .net "input11", 31 0, v0x23963d0_11;  alias, 1 drivers
v0x2393820_0 .net "input12", 31 0, v0x23963d0_12;  alias, 1 drivers
v0x2393980_0 .net "input13", 31 0, v0x23963d0_13;  alias, 1 drivers
v0x2393a50_0 .net "input14", 31 0, v0x23963d0_14;  alias, 1 drivers
v0x2393b20_0 .net "input15", 31 0, v0x23963d0_15;  alias, 1 drivers
v0x2393bf0_0 .net "input16", 31 0, v0x23963d0_16;  alias, 1 drivers
v0x2393cc0_0 .net "input17", 31 0, v0x23963d0_17;  alias, 1 drivers
v0x2393d90_0 .net "input18", 31 0, v0x23963d0_18;  alias, 1 drivers
v0x2393e60_0 .net "input19", 31 0, v0x23963d0_19;  alias, 1 drivers
v0x2393f30_0 .net "input2", 31 0, v0x23963d0_2;  alias, 1 drivers
v0x23940e0_0 .net "input20", 31 0, v0x23963d0_20;  alias, 1 drivers
v0x2394180_0 .net "input21", 31 0, v0x23963d0_21;  alias, 1 drivers
v0x2394220_0 .net "input22", 31 0, v0x23963d0_22;  alias, 1 drivers
v0x23942f0_0 .net "input23", 31 0, v0x23963d0_23;  alias, 1 drivers
v0x23943c0_0 .net "input24", 31 0, v0x23963d0_24;  alias, 1 drivers
v0x2394490_0 .net "input25", 31 0, v0x23963d0_25;  alias, 1 drivers
v0x2394560_0 .net "input26", 31 0, v0x23963d0_26;  alias, 1 drivers
v0x2394630_0 .net "input27", 31 0, v0x23963d0_27;  alias, 1 drivers
v0x2394700_0 .net "input28", 31 0, v0x23963d0_28;  alias, 1 drivers
v0x23947d0_0 .net "input29", 31 0, v0x23963d0_29;  alias, 1 drivers
v0x23948a0_0 .net "input3", 31 0, v0x23963d0_3;  alias, 1 drivers
v0x2394970_0 .net "input30", 31 0, v0x23963d0_30;  alias, 1 drivers
v0x2394a40_0 .net "input31", 31 0, v0x23963d0_31;  alias, 1 drivers
v0x2394b10_0 .net "input4", 31 0, v0x23963d0_4;  alias, 1 drivers
v0x2394be0_0 .net "input5", 31 0, v0x23963d0_5;  alias, 1 drivers
v0x2394cb0_0 .net "input6", 31 0, v0x23963d0_6;  alias, 1 drivers
v0x2394000_0 .net "input7", 31 0, v0x23963d0_7;  alias, 1 drivers
v0x2394f60_0 .net "input8", 31 0, v0x23963d0_8;  alias, 1 drivers
v0x2395030_0 .net "input9", 31 0, v0x23963d0_9;  alias, 1 drivers
v0x2395100 .array "mux", 0 31;
v0x2395100_0 .net v0x2395100 0, 31 0, L_0x23aaee0; 1 drivers
v0x2395100_1 .net v0x2395100 1, 31 0, L_0x23aaf50; 1 drivers
v0x2395100_2 .net v0x2395100 2, 31 0, L_0x23ab050; 1 drivers
v0x2395100_3 .net v0x2395100 3, 31 0, L_0x23ab180; 1 drivers
v0x2395100_4 .net v0x2395100 4, 31 0, L_0x23ab2e0; 1 drivers
v0x2395100_5 .net v0x2395100 5, 31 0, L_0x23ab410; 1 drivers
v0x2395100_6 .net v0x2395100 6, 31 0, L_0x23ab580; 1 drivers
v0x2395100_7 .net v0x2395100 7, 31 0, L_0x23ab680; 1 drivers
v0x2395100_8 .net v0x2395100 8, 31 0, L_0x23ab7b0; 1 drivers
v0x2395100_9 .net v0x2395100 9, 31 0, L_0x23ab8e0; 1 drivers
v0x2395100_10 .net v0x2395100 10, 31 0, L_0x23aba10; 1 drivers
v0x2395100_11 .net v0x2395100 11, 31 0, L_0x23abb40; 1 drivers
v0x2395100_12 .net v0x2395100 12, 31 0, L_0x23abce0; 1 drivers
v0x2395100_13 .net v0x2395100 13, 31 0, L_0x23abe10; 1 drivers
v0x2395100_14 .net v0x2395100 14, 31 0, L_0x23abc70; 1 drivers
v0x2395100_15 .net v0x2395100 15, 31 0, L_0x23ac000; 1 drivers
v0x2395100_16 .net v0x2395100 16, 31 0, L_0x23ac1c0; 1 drivers
v0x2395100_17 .net v0x2395100 17, 31 0, L_0x23ac2f0; 1 drivers
v0x2395100_18 .net v0x2395100 18, 31 0, L_0x23ac130; 1 drivers
v0x2395100_19 .net v0x2395100 19, 31 0, L_0x23ac580; 1 drivers
v0x2395100_20 .net v0x2395100 20, 31 0, L_0x23ac420; 1 drivers
v0x2395100_21 .net v0x2395100 21, 31 0, L_0x23ac7f0; 1 drivers
v0x2395100_22 .net v0x2395100 22, 31 0, L_0x23ac6b0; 1 drivers
v0x2395100_23 .net v0x2395100 23, 31 0, L_0x23aca70; 1 drivers
v0x2395100_24 .net v0x2395100 24, 31 0, L_0x23ac920; 1 drivers
v0x2395100_25 .net v0x2395100 25, 31 0, L_0x23acd00; 1 drivers
v0x2395100_26 .net v0x2395100 26, 31 0, L_0x23acba0; 1 drivers
v0x2395100_27 .net v0x2395100 27, 31 0, L_0x23acfa0; 1 drivers
v0x2395100_28 .net v0x2395100 28, 31 0, L_0x23ace30; 1 drivers
v0x2395100_29 .net v0x2395100 29, 31 0, L_0x23ad220; 1 drivers
v0x2395100_30 .net v0x2395100 30, 31 0, L_0x23ad0a0; 1 drivers
v0x2395100_31 .net v0x2395100 31, 31 0, L_0x23ad4b0; 1 drivers
v0x23956b0_0 .net "out", 31 0, L_0x23ad7f0;  alias, 1 drivers
L_0x23ad320 .array/port v0x2395100, L_0x23ad6c0;
L_0x23ad6c0 .concat [ 5 2 0 0], v0x2397700_0, L_0x7f87a24440f0;
S_0x2397030 .scope module, "tester" "hw4testbench" 2 37, 2 79 0, S_0x237c1b0;
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
v0x2397350_0 .var "Clk", 0 0;
v0x2397410_0 .net "ReadData1", 31 0, L_0x23aade0;  alias, 1 drivers
v0x2397500_0 .net "ReadData2", 31 0, L_0x23ad7f0;  alias, 1 drivers
v0x23975f0_0 .var "ReadRegister1", 4 0;
v0x2397700_0 .var "ReadRegister2", 4 0;
v0x2397860_0 .var "RegWrite", 0 0;
v0x2397950_0 .var "WriteData", 31 0;
v0x2397a10_0 .var "WriteRegister", 4 0;
v0x2397b00_0 .net "begintest", 0 0, v0x23985f0_0;  1 drivers
v0x2397c50_0 .var "dutpassed", 0 0;
v0x2397d10_0 .var "endtest", 0 0;
E_0x23940a0 .event posedge, v0x2397b00_0;
S_0x236dfb0 .scope module, "mux32to1by1" "mux32to1by1" 5 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7f87a248f718 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x2398860_0 .net "address", 4 0, o0x7f87a248f718;  0 drivers
o0x7f87a248f748 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x2398900_0 .net "inputs", 31 0, o0x7f87a248f748;  0 drivers
v0x23989e0_0 .net "out", 0 0, L_0x23ad8f0;  1 drivers
L_0x23ad8f0 .part/v o0x7f87a248f748, o0x7f87a248f718, 1;
S_0x236dc80 .scope module, "register" "register" 6 3;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "q"
    .port_info 1 /INPUT 1 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f87a248f838 .functor BUFZ 1, C4<z>; HiZ drive
v0x2398b60_0 .net "clk", 0 0, o0x7f87a248f838;  0 drivers
o0x7f87a248f868 .functor BUFZ 1, C4<z>; HiZ drive
v0x2398c40_0 .net "d", 0 0, o0x7f87a248f868;  0 drivers
v0x2398d00_0 .var "q", 0 0;
o0x7f87a248f8c8 .functor BUFZ 1, C4<z>; HiZ drive
v0x2398da0_0 .net "wrenable", 0 0, o0x7f87a248f8c8;  0 drivers
E_0x2398b00 .event posedge, v0x2398b60_0;
S_0x236d5a0 .scope module, "register32" "register32" 6 21;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f87a248f9b8 .functor BUFZ 1, C4<z>; HiZ drive
v0x2398f60_0 .net "clk", 0 0, o0x7f87a248f9b8;  0 drivers
o0x7f87a248f9e8 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x2399040_0 .net "d", 31 0, o0x7f87a248f9e8;  0 drivers
v0x2399120_0 .var "q", 31 0;
o0x7f87a248fa48 .functor BUFZ 1, C4<z>; HiZ drive
v0x23991e0_0 .net "wrenable", 0 0, o0x7f87a248fa48;  0 drivers
E_0x2398ee0 .event posedge, v0x2398f60_0;
S_0x236d270 .scope module, "register32zero" "register32zero" 6 38;
 .timescale 0 0;
    .port_info 0 /OUTPUT 32 "q"
    .port_info 1 /INPUT 32 "d"
    .port_info 2 /INPUT 1 "wrenable"
    .port_info 3 /INPUT 1 "clk"
o0x7f87a248fb38 .functor BUFZ 1, C4<z>; HiZ drive
v0x23993a0_0 .net "clk", 0 0, o0x7f87a248fb38;  0 drivers
o0x7f87a248fb68 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x2399480_0 .net "d", 31 0, o0x7f87a248fb68;  0 drivers
v0x2399560_0 .var "q", 31 0;
o0x7f87a248fbc8 .functor BUFZ 1, C4<z>; HiZ drive
v0x2399620_0 .net "wrenable", 0 0, o0x7f87a248fbc8;  0 drivers
E_0x2399320 .event posedge, v0x23993a0_0;
    .scope S_0x238a270;
T_0 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 1, 2;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 1, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_0.0 ;
    %jmp T_0;
    .thread T_0;
    .scope S_0x238a580;
T_1 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 2, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 2, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_1.0 ;
    %jmp T_1;
    .thread T_1;
    .scope S_0x238a830;
T_2 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 3, 3;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 3, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_2.0 ;
    %jmp T_2;
    .thread T_2;
    .scope S_0x238aae0;
T_3 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 4, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_3.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 4, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_3.0 ;
    %jmp T_3;
    .thread T_3;
    .scope S_0x238ade0;
T_4 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 5, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_4.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 5, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_4.0 ;
    %jmp T_4;
    .thread T_4;
    .scope S_0x238b090;
T_5 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 6, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 6, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_5.0 ;
    %jmp T_5;
    .thread T_5;
    .scope S_0x238b340;
T_6 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 7, 4;
    %flag_set/vec4 8;
    %jmp/0xz  T_6.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 7, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_6.0 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0x238b5f0;
T_7 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 8, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_7.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 8, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_7.0 ;
    %jmp T_7;
    .thread T_7;
    .scope S_0x238b8e0;
T_8 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 9, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_8.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 9, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_8.0 ;
    %jmp T_8;
    .thread T_8;
    .scope S_0x238bb90;
T_9 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 10, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_9.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 10, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_9.0 ;
    %jmp T_9;
    .thread T_9;
    .scope S_0x238be40;
T_10 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 11, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_10.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 11, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_10.0 ;
    %jmp T_10;
    .thread T_10;
    .scope S_0x238c0f0;
T_11 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 12, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_11.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 12, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_11.0 ;
    %jmp T_11;
    .thread T_11;
    .scope S_0x238c3a0;
T_12 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 13, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_12.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 13, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_12.0 ;
    %jmp T_12;
    .thread T_12;
    .scope S_0x238c650;
T_13 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 14, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_13.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 14, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_13.0 ;
    %jmp T_13;
    .thread T_13;
    .scope S_0x238c900;
T_14 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 15, 5;
    %flag_set/vec4 8;
    %jmp/0xz  T_14.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 15, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_14.0 ;
    %jmp T_14;
    .thread T_14;
    .scope S_0x238cbb0;
T_15 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 16, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_15.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 16, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_15.0 ;
    %jmp T_15;
    .thread T_15;
    .scope S_0x238cf00;
T_16 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 17, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_16.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 17, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_16.0 ;
    %jmp T_16;
    .thread T_16;
    .scope S_0x238d190;
T_17 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 18, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_17.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 18, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_17.0 ;
    %jmp T_17;
    .thread T_17;
    .scope S_0x238d440;
T_18 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 19, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_18.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 19, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_18.0 ;
    %jmp T_18;
    .thread T_18;
    .scope S_0x238d6f0;
T_19 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 20, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_19.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 20, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_19.0 ;
    %jmp T_19;
    .thread T_19;
    .scope S_0x238d9a0;
T_20 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 21, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_20.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 21, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_20.0 ;
    %jmp T_20;
    .thread T_20;
    .scope S_0x238dc50;
T_21 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 22, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_21.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 22, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_21.0 ;
    %jmp T_21;
    .thread T_21;
    .scope S_0x238df00;
T_22 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 23, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_22.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 23, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_22.0 ;
    %jmp T_22;
    .thread T_22;
    .scope S_0x238e1b0;
T_23 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 24, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_23.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 24, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_23.0 ;
    %jmp T_23;
    .thread T_23;
    .scope S_0x238e460;
T_24 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 25, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_24.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 25, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_24.0 ;
    %jmp T_24;
    .thread T_24;
    .scope S_0x238e710;
T_25 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 26, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_25.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 26, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_25.0 ;
    %jmp T_25;
    .thread T_25;
    .scope S_0x238e9c0;
T_26 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 27, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_26.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 27, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_26.0 ;
    %jmp T_26;
    .thread T_26;
    .scope S_0x238ec70;
T_27 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 28, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_27.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 28, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_27.0 ;
    %jmp T_27;
    .thread T_27;
    .scope S_0x238ef20;
T_28 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 29, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_28.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 29, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_28.0 ;
    %jmp T_28;
    .thread T_28;
    .scope S_0x238f1d0;
T_29 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 30, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_29.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 30, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_29.0 ;
    %jmp T_29;
    .thread T_29;
    .scope S_0x238f480;
T_30 ;
    %wait E_0x238a520;
    %load/vec4 v0x2396270_0;
    %parti/s 1, 31, 6;
    %flag_set/vec4 8;
    %jmp/0xz  T_30.0, 8;
    %load/vec4 v0x2396100_0;
    %ix/load 3, 31, 0;
    %flag_set/imm 4, 0;
    %ix/load 4, 0, 0; Constant delay
    %assign/vec4/a/d v0x23963d0, 0, 4;
T_30.0 ;
    %jmp T_30;
    .thread T_30;
    .scope S_0x2397030;
T_31 ;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x2397950_0, 0, 32;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x23975f0_0, 0, 5;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x2397700_0, 0, 5;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x2397a10_0, 0, 5;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397860_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %end;
    .thread T_31;
    .scope S_0x2397030;
T_32 ;
    %wait E_0x23940a0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397d10_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397c50_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x2397a10_0, 0, 5;
    %pushi/vec4 42, 0, 32;
    %store/vec4 v0x2397950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397860_0, 0, 1;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x23975f0_0, 0, 5;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x2397700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %load/vec4 v0x2397410_0;
    %cmpi/ne 42, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x2397500_0;
    %cmpi/ne 42, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.0, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397c50_0, 0, 1;
    %vpi_call 2 125 "$display", "Test Case 1 Failed" {0 0 0};
T_32.0 ;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x2397a10_0, 0, 5;
    %pushi/vec4 15, 0, 32;
    %store/vec4 v0x2397950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397860_0, 0, 1;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x23975f0_0, 0, 5;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x2397700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %load/vec4 v0x2397410_0;
    %cmpi/ne 15, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x2397500_0;
    %cmpi/ne 15, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.2, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397c50_0, 0, 1;
    %vpi_call 2 139 "$display", "Test Case 2 Failed" {0 0 0};
T_32.2 ;
    %pushi/vec4 31, 0, 5;
    %store/vec4 v0x2397a10_0, 0, 5;
    %pushi/vec4 2147483647, 0, 32;
    %store/vec4 v0x2397950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397860_0, 0, 1;
    %pushi/vec4 31, 0, 5;
    %store/vec4 v0x23975f0_0, 0, 5;
    %pushi/vec4 31, 0, 5;
    %store/vec4 v0x2397700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %load/vec4 v0x2397410_0;
    %cmpi/ne 2147483647, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x2397500_0;
    %cmpi/ne 2147483647, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.4, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397c50_0, 0, 1;
    %vpi_call 2 153 "$display", "Test Case 3 Failed" {0 0 0};
T_32.4 ;
    %pushi/vec4 2, 0, 5;
    %store/vec4 v0x23975f0_0, 0, 5;
    %pushi/vec4 31, 0, 5;
    %store/vec4 v0x2397700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %load/vec4 v0x2397410_0;
    %cmpi/ne 15, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x2397500_0;
    %cmpi/ne 2147483647, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.6, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397c50_0, 0, 1;
    %vpi_call 2 164 "$display", "Test Case 4 Failed: Check decoder, may be writing to all ports or check read ports for stuck port." {0 0 0};
T_32.6 ;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x2397a10_0, 0, 5;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x2397950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397860_0, 0, 1;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x23975f0_0, 0, 5;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x2397700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %load/vec4 v0x2397410_0;
    %cmpi/ne 0, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x2397500_0;
    %cmpi/ne 0, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.8, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397c50_0, 0, 1;
    %vpi_call 2 178 "$display", "Test Case 5 Failed" {0 0 0};
T_32.8 ;
    %pushi/vec4 3, 0, 5;
    %store/vec4 v0x2397a10_0, 0, 5;
    %pushi/vec4 4294967295, 0, 32;
    %store/vec4 v0x2397950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397860_0, 0, 1;
    %pushi/vec4 3, 0, 5;
    %store/vec4 v0x23975f0_0, 0, 5;
    %pushi/vec4 3, 0, 5;
    %store/vec4 v0x2397700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %load/vec4 v0x2397410_0;
    %pad/u 33;
    %cmpi/ne 4294967295, 0, 33;
    %flag_mov 8, 6;
    %load/vec4 v0x2397500_0;
    %pad/u 33;
    %cmpi/ne 4294967295, 0, 33;
    %flag_or 6, 8;
    %jmp/0xz  T_32.10, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397c50_0, 0, 1;
    %vpi_call 2 192 "$display", "Test Case 6 Failed" {0 0 0};
T_32.10 ;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x2397a10_0, 0, 5;
    %pushi/vec4 72, 0, 32;
    %store/vec4 v0x2397950_0, 0, 32;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397860_0, 0, 1;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x23975f0_0, 0, 5;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x2397700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %load/vec4 v0x2397410_0;
    %cmpi/ne 0, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x2397500_0;
    %cmpi/ne 0, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.12, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397c50_0, 0, 1;
    %vpi_call 2 206 "$display", "Test Case 7 Failed: Check Write Enable, may not be disabling writing to register." {0 0 0};
T_32.12 ;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x2397a10_0, 0, 5;
    %pushi/vec4 512, 0, 32;
    %store/vec4 v0x2397950_0, 0, 32;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397860_0, 0, 1;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x23975f0_0, 0, 5;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x2397700_0, 0, 5;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397350_0, 0, 1;
    %load/vec4 v0x2397410_0;
    %cmpi/ne 0, 0, 32;
    %flag_mov 8, 6;
    %load/vec4 v0x2397500_0;
    %cmpi/ne 0, 0, 32;
    %flag_or 6, 8;
    %jmp/0xz  T_32.14, 6;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x2397c50_0, 0, 1;
    %vpi_call 2 219 "$display", "Test Case 8 Failed: Register 0 not reading 0." {0 0 0};
T_32.14 ;
    %delay 5, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x2397d10_0, 0, 1;
    %jmp T_32;
    .thread T_32;
    .scope S_0x237c1b0;
T_33 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x23985f0_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x23985f0_0, 0, 1;
    %delay 1000, 0;
    %end;
    .thread T_33;
    .scope S_0x237c1b0;
T_34 ;
    %wait E_0x236cb20;
    %vpi_call 2 62 "$display", "DUT passed?: %b", v0x2398720_0 {0 0 0};
    %jmp T_34;
    .thread T_34;
    .scope S_0x236dc80;
T_35 ;
    %wait E_0x2398b00;
    %load/vec4 v0x2398da0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_35.0, 8;
    %load/vec4 v0x2398c40_0;
    %assign/vec4 v0x2398d00_0, 0;
T_35.0 ;
    %jmp T_35;
    .thread T_35;
    .scope S_0x236d5a0;
T_36 ;
    %wait E_0x2398ee0;
    %load/vec4 v0x23991e0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_36.0, 8;
    %load/vec4 v0x2399040_0;
    %assign/vec4 v0x2399120_0, 0;
T_36.0 ;
    %jmp T_36;
    .thread T_36;
    .scope S_0x236d270;
T_37 ;
    %wait E_0x2399320;
    %load/vec4 v0x2399620_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_37.0, 8;
    %pushi/vec4 0, 0, 32;
    %assign/vec4 v0x2399560_0, 0;
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
