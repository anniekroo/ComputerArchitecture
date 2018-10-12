#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1debd30 .scope module, "mux32to1by1" "mux32to1by1" 2 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7fa7d8889018 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x1df5320_0 .net "address", 4 0, o0x7fa7d8889018;  0 drivers
o0x7fa7d8889048 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1e31720_0 .net "inputs", 31 0, o0x7fa7d8889048;  0 drivers
v0x1e31800_0 .net "out", 0 0, L_0x1e36a50;  1 drivers
L_0x1e36a50 .part/v o0x7fa7d8889048, o0x7fa7d8889018, 1;
S_0x1deb520 .scope module, "testMUX" "testMUX" 3 4;
 .timescale 0 0;
v0x1e31b20_0 .var "address", 4 0;
v0x1e34dc0_0 .var "in0", 31 0;
v0x1e34e60_0 .var "in1", 31 0;
v0x1e34f60_0 .var "in10", 31 0;
v0x1e35030_0 .var "in11", 31 0;
v0x1e350d0_0 .var "in12", 31 0;
v0x1e351a0_0 .var "in13", 31 0;
v0x1e35270_0 .var "in14", 31 0;
v0x1e35340_0 .var "in15", 31 0;
v0x1e354a0_0 .var "in16", 31 0;
v0x1e35570_0 .var "in17", 31 0;
v0x1e35640_0 .var "in18", 31 0;
v0x1e35710_0 .var "in19", 31 0;
v0x1e357e0_0 .var "in2", 31 0;
v0x1e358b0_0 .var "in20", 31 0;
v0x1e35980_0 .var "in21", 31 0;
v0x1e35a20_0 .var "in22", 31 0;
v0x1e35bd0_0 .var "in23", 31 0;
v0x1e35c70_0 .var "in24", 31 0;
v0x1e35d10_0 .var "in25", 31 0;
v0x1e35de0_0 .var "in26", 31 0;
v0x1e35eb0_0 .var "in27", 31 0;
v0x1e35f80_0 .var "in28", 31 0;
v0x1e36050_0 .var "in29", 31 0;
v0x1e36120_0 .var "in3", 31 0;
v0x1e361f0_0 .var "in30", 31 0;
v0x1e362c0_0 .var "in31", 31 0;
v0x1e36390_0 .var "in4", 31 0;
v0x1e36460_0 .var "in5", 31 0;
v0x1e36530_0 .var "in6", 31 0;
v0x1e36600_0 .var "in7", 31 0;
v0x1e366d0_0 .var "in8", 31 0;
v0x1e367a0_0 .var "in9", 31 0;
v0x1e35af0_0 .net "result", 31 0, L_0x1e37710;  1 drivers
S_0x1e31950 .scope module, "mux32" "mux32to1by32" 3 11, 2 10 0, S_0x1deb520;
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
L_0x1e36b80 .functor BUFZ 32, v0x1e34dc0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e36c20 .functor BUFZ 32, v0x1e34e60_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e36d10 .functor BUFZ 32, v0x1e357e0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e36dd0 .functor BUFZ 32, v0x1e36120_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e36e90 .functor BUFZ 32, v0x1e36390_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e36f80 .functor BUFZ 32, v0x1e36460_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37040 .functor BUFZ 32, v0x1e36530_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37100 .functor BUFZ 32, v0x1e36600_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37210 .functor BUFZ 32, v0x1e366d0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e372d0 .functor BUFZ 32, v0x1e367a0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e373f0 .functor BUFZ 32, v0x1e34f60_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37460 .functor BUFZ 32, v0x1e35030_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37590 .functor BUFZ 32, v0x1e350d0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37650 .functor BUFZ 32, v0x1e351a0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37520 .functor BUFZ 32, v0x1e35270_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e377e0 .functor BUFZ 32, v0x1e35340_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37930 .functor BUFZ 32, v0x1e354a0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e379f0 .functor BUFZ 32, v0x1e35570_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e378a0 .functor BUFZ 32, v0x1e35640_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37ba0 .functor BUFZ 32, v0x1e35710_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37ab0 .functor BUFZ 32, v0x1e358b0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37d60 .functor BUFZ 32, v0x1e35980_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37c60 .functor BUFZ 32, v0x1e35a20_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37f30 .functor BUFZ 32, v0x1e35bd0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37e20 .functor BUFZ 32, v0x1e35c70_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e380c0 .functor BUFZ 32, v0x1e35d10_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37ff0 .functor BUFZ 32, v0x1e35de0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e38260 .functor BUFZ 32, v0x1e35eb0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e38180 .functor BUFZ 32, v0x1e35f80_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e38410 .functor BUFZ 32, v0x1e36050_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e38320 .functor BUFZ 32, v0x1e361f0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e385d0 .functor BUFZ 32, v0x1e362c0_0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x1e37710 .functor BUFZ 32, L_0x1e384d0, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>, C4<00000000000000000000000000000000>;
L_0x7fa7d8840018 .functor BUFT 1, C4<00>, C4<0>, C4<0>, C4<0>;
v0x1e31f80_0 .net *"_s101", 1 0, L_0x7fa7d8840018;  1 drivers
v0x1e32080_0 .net *"_s96", 31 0, L_0x1e384d0;  1 drivers
v0x1e32160_0 .net *"_s98", 6 0, L_0x1e387a0;  1 drivers
v0x1e32250_0 .net "address", 4 0, v0x1e31b20_0;  1 drivers
v0x1e32330_0 .net "input0", 31 0, v0x1e34dc0_0;  1 drivers
v0x1e32460_0 .net "input1", 31 0, v0x1e34e60_0;  1 drivers
v0x1e32540_0 .net "input10", 31 0, v0x1e34f60_0;  1 drivers
v0x1e32620_0 .net "input11", 31 0, v0x1e35030_0;  1 drivers
v0x1e32700_0 .net "input12", 31 0, v0x1e350d0_0;  1 drivers
v0x1e32870_0 .net "input13", 31 0, v0x1e351a0_0;  1 drivers
v0x1e32950_0 .net "input14", 31 0, v0x1e35270_0;  1 drivers
v0x1e32a30_0 .net "input15", 31 0, v0x1e35340_0;  1 drivers
v0x1e32b10_0 .net "input16", 31 0, v0x1e354a0_0;  1 drivers
v0x1e32bf0_0 .net "input17", 31 0, v0x1e35570_0;  1 drivers
v0x1e32cd0_0 .net "input18", 31 0, v0x1e35640_0;  1 drivers
v0x1e32db0_0 .net "input19", 31 0, v0x1e35710_0;  1 drivers
v0x1e32e90_0 .net "input2", 31 0, v0x1e357e0_0;  1 drivers
v0x1e33040_0 .net "input20", 31 0, v0x1e358b0_0;  1 drivers
v0x1e330e0_0 .net "input21", 31 0, v0x1e35980_0;  1 drivers
v0x1e331c0_0 .net "input22", 31 0, v0x1e35a20_0;  1 drivers
v0x1e332a0_0 .net "input23", 31 0, v0x1e35bd0_0;  1 drivers
v0x1e33380_0 .net "input24", 31 0, v0x1e35c70_0;  1 drivers
v0x1e33460_0 .net "input25", 31 0, v0x1e35d10_0;  1 drivers
v0x1e33540_0 .net "input26", 31 0, v0x1e35de0_0;  1 drivers
v0x1e33620_0 .net "input27", 31 0, v0x1e35eb0_0;  1 drivers
v0x1e33700_0 .net "input28", 31 0, v0x1e35f80_0;  1 drivers
v0x1e337e0_0 .net "input29", 31 0, v0x1e36050_0;  1 drivers
v0x1e338c0_0 .net "input3", 31 0, v0x1e36120_0;  1 drivers
v0x1e339a0_0 .net "input30", 31 0, v0x1e361f0_0;  1 drivers
v0x1e33a80_0 .net "input31", 31 0, v0x1e362c0_0;  1 drivers
v0x1e33b60_0 .net "input4", 31 0, v0x1e36390_0;  1 drivers
v0x1e33c40_0 .net "input5", 31 0, v0x1e36460_0;  1 drivers
v0x1e33d20_0 .net "input6", 31 0, v0x1e36530_0;  1 drivers
v0x1e32f70_0 .net "input7", 31 0, v0x1e36600_0;  1 drivers
v0x1e33ff0_0 .net "input8", 31 0, v0x1e366d0_0;  1 drivers
v0x1e340d0_0 .net "input9", 31 0, v0x1e367a0_0;  1 drivers
v0x1e341b0 .array "mux", 0 31;
v0x1e341b0_0 .net v0x1e341b0 0, 31 0, L_0x1e36b80; 1 drivers
v0x1e341b0_1 .net v0x1e341b0 1, 31 0, L_0x1e36c20; 1 drivers
v0x1e341b0_2 .net v0x1e341b0 2, 31 0, L_0x1e36d10; 1 drivers
v0x1e341b0_3 .net v0x1e341b0 3, 31 0, L_0x1e36dd0; 1 drivers
v0x1e341b0_4 .net v0x1e341b0 4, 31 0, L_0x1e36e90; 1 drivers
v0x1e341b0_5 .net v0x1e341b0 5, 31 0, L_0x1e36f80; 1 drivers
v0x1e341b0_6 .net v0x1e341b0 6, 31 0, L_0x1e37040; 1 drivers
v0x1e341b0_7 .net v0x1e341b0 7, 31 0, L_0x1e37100; 1 drivers
v0x1e341b0_8 .net v0x1e341b0 8, 31 0, L_0x1e37210; 1 drivers
v0x1e341b0_9 .net v0x1e341b0 9, 31 0, L_0x1e372d0; 1 drivers
v0x1e341b0_10 .net v0x1e341b0 10, 31 0, L_0x1e373f0; 1 drivers
v0x1e341b0_11 .net v0x1e341b0 11, 31 0, L_0x1e37460; 1 drivers
v0x1e341b0_12 .net v0x1e341b0 12, 31 0, L_0x1e37590; 1 drivers
v0x1e341b0_13 .net v0x1e341b0 13, 31 0, L_0x1e37650; 1 drivers
v0x1e341b0_14 .net v0x1e341b0 14, 31 0, L_0x1e37520; 1 drivers
v0x1e341b0_15 .net v0x1e341b0 15, 31 0, L_0x1e377e0; 1 drivers
v0x1e341b0_16 .net v0x1e341b0 16, 31 0, L_0x1e37930; 1 drivers
v0x1e341b0_17 .net v0x1e341b0 17, 31 0, L_0x1e379f0; 1 drivers
v0x1e341b0_18 .net v0x1e341b0 18, 31 0, L_0x1e378a0; 1 drivers
v0x1e341b0_19 .net v0x1e341b0 19, 31 0, L_0x1e37ba0; 1 drivers
v0x1e341b0_20 .net v0x1e341b0 20, 31 0, L_0x1e37ab0; 1 drivers
v0x1e341b0_21 .net v0x1e341b0 21, 31 0, L_0x1e37d60; 1 drivers
v0x1e341b0_22 .net v0x1e341b0 22, 31 0, L_0x1e37c60; 1 drivers
v0x1e341b0_23 .net v0x1e341b0 23, 31 0, L_0x1e37f30; 1 drivers
v0x1e341b0_24 .net v0x1e341b0 24, 31 0, L_0x1e37e20; 1 drivers
v0x1e341b0_25 .net v0x1e341b0 25, 31 0, L_0x1e380c0; 1 drivers
v0x1e341b0_26 .net v0x1e341b0 26, 31 0, L_0x1e37ff0; 1 drivers
v0x1e341b0_27 .net v0x1e341b0 27, 31 0, L_0x1e38260; 1 drivers
v0x1e341b0_28 .net v0x1e341b0 28, 31 0, L_0x1e38180; 1 drivers
v0x1e341b0_29 .net v0x1e341b0 29, 31 0, L_0x1e38410; 1 drivers
v0x1e341b0_30 .net v0x1e341b0 30, 31 0, L_0x1e38320; 1 drivers
v0x1e341b0_31 .net v0x1e341b0 31, 31 0, L_0x1e385d0; 1 drivers
v0x1e34780_0 .net "out", 31 0, L_0x1e37710;  alias, 1 drivers
L_0x1e384d0 .array/port v0x1e341b0, L_0x1e387a0;
L_0x1e387a0 .concat [ 5 2 0 0], v0x1e31b20_0, L_0x7fa7d8840018;
    .scope S_0x1deb520;
T_0 ;
    %vpi_call 3 15 "$display", "Address | result" {0 0 0};
    %pushi/vec4 4294967295, 0, 32;
    %store/vec4 v0x1e34dc0_0, 0, 32;
    %pushi/vec4 4294967294, 0, 32;
    %store/vec4 v0x1e34e60_0, 0, 32;
    %pushi/vec4 4294967293, 0, 32;
    %store/vec4 v0x1e357e0_0, 0, 32;
    %pushi/vec4 4294967291, 0, 32;
    %store/vec4 v0x1e36120_0, 0, 32;
    %pushi/vec4 4294967287, 0, 32;
    %store/vec4 v0x1e36390_0, 0, 32;
    %pushi/vec4 4294967263, 0, 32;
    %store/vec4 v0x1e36460_0, 0, 32;
    %pushi/vec4 4294950911, 0, 32;
    %store/vec4 v0x1e36530_0, 0, 32;
    %pushi/vec4 4294443007, 0, 32;
    %store/vec4 v0x1e36600_0, 0, 32;
    %pushi/vec4 4282384383, 0, 32;
    %store/vec4 v0x1e366d0_0, 0, 32;
    %pushi/vec4 4127195135, 0, 32;
    %store/vec4 v0x1e367a0_0, 0, 32;
    %pushi/vec4 4294967295, 0, 32;
    %store/vec4 v0x1e34f60_0, 0, 32;
    %pushi/vec4 1073741823, 0, 32;
    %store/vec4 v0x1e35030_0, 0, 32;
    %pushi/vec4 4279238655, 0, 32;
    %store/vec4 v0x1e350d0_0, 0, 32;
    %pushi/vec4 4293132287, 0, 32;
    %store/vec4 v0x1e351a0_0, 0, 32;
    %pushi/vec4 4294705407, 0, 32;
    %store/vec4 v0x1e35270_0, 0, 32;
    %pushi/vec4 4294770687, 0, 32;
    %store/vec4 v0x1e35340_0, 0, 32;
    %pushi/vec4 4294967295, 0, 32;
    %store/vec4 v0x1e354a0_0, 0, 32;
    %pushi/vec4 4294901759, 0, 32;
    %store/vec4 v0x1e35570_0, 0, 32;
    %pushi/vec4 4294967295, 0, 32;
    %store/vec4 v0x1e35640_0, 0, 32;
    %pushi/vec4 268435455, 0, 32;
    %store/vec4 v0x1e35710_0, 0, 32;
    %pushi/vec4 4160749567, 0, 32;
    %store/vec4 v0x1e358b0_0, 0, 32;
    %pushi/vec4 4018143231, 0, 32;
    %store/vec4 v0x1e35980_0, 0, 32;
    %pushi/vec4 4294918143, 0, 32;
    %store/vec4 v0x1e35a20_0, 0, 32;
    %pushi/vec4 4294967295, 0, 32;
    %store/vec4 v0x1e35bd0_0, 0, 32;
    %pushi/vec4 4294963327, 0, 32;
    %store/vec4 v0x1e35c70_0, 0, 32;
    %pushi/vec4 4294967295, 0, 32;
    %store/vec4 v0x1e35d10_0, 0, 32;
    %pushi/vec4 4227858431, 0, 32;
    %store/vec4 v0x1e35de0_0, 0, 32;
    %pushi/vec4 4294967263, 0, 32;
    %store/vec4 v0x1e35eb0_0, 0, 32;
    %pushi/vec4 4294967295, 0, 32;
    %store/vec4 v0x1e35f80_0, 0, 32;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x1e36050_0, 0, 32;
    %pushi/vec4 4294959104, 0, 32;
    %store/vec4 v0x1e361f0_0, 0, 32;
    %pushi/vec4 1431612074, 0, 32;
    %store/vec4 v0x1e362c0_0, 0, 32;
    %pushi/vec4 0, 0, 5;
    %store/vec4 v0x1e31b20_0, 0, 5;
    %delay 1000, 0;
    %load/vec4 v0x1e35af0_0;
    %load/vec4 v0x1e34dc0_0;
    %cmp/ne;
    %jmp/0xz  T_0.0, 6;
    %vpi_call 3 50 "$display", "%b  %b", v0x1e31b20_0, v0x1e35af0_0 {0 0 0};
T_0.0 ;
    %pushi/vec4 1, 0, 5;
    %store/vec4 v0x1e31b20_0, 0, 5;
    %delay 1000, 0;
    %load/vec4 v0x1e35af0_0;
    %load/vec4 v0x1e34e60_0;
    %cmp/ne;
    %jmp/0xz  T_0.2, 6;
    %vpi_call 3 54 "$display", "%b  %b", v0x1e31b20_0, v0x1e35af0_0 {0 0 0};
T_0.2 ;
    %pushi/vec4 16, 0, 5;
    %store/vec4 v0x1e31b20_0, 0, 5;
    %delay 1000, 0;
    %load/vec4 v0x1e35af0_0;
    %load/vec4 v0x1e354a0_0;
    %cmp/ne;
    %jmp/0xz  T_0.4, 6;
    %vpi_call 3 58 "$display", "%b  %b", v0x1e31b20_0, v0x1e35af0_0 {0 0 0};
T_0.4 ;
    %pushi/vec4 17, 0, 5;
    %store/vec4 v0x1e31b20_0, 0, 5;
    %delay 1000, 0;
    %load/vec4 v0x1e35af0_0;
    %load/vec4 v0x1e35570_0;
    %cmp/ne;
    %jmp/0xz  T_0.6, 6;
    %vpi_call 3 62 "$display", "%b  %b", v0x1e31b20_0, v0x1e35af0_0 {0 0 0};
T_0.6 ;
    %pushi/vec4 31, 0, 5;
    %store/vec4 v0x1e31b20_0, 0, 5;
    %delay 1000, 0;
    %load/vec4 v0x1e35af0_0;
    %load/vec4 v0x1e362c0_0;
    %cmp/ne;
    %jmp/0xz  T_0.8, 6;
    %vpi_call 3 66 "$display", "%b  %b", v0x1e31b20_0, v0x1e35af0_0 {0 0 0};
T_0.8 ;
    %pushi/vec4 29, 0, 5;
    %store/vec4 v0x1e31b20_0, 0, 5;
    %delay 1000, 0;
    %load/vec4 v0x1e35af0_0;
    %load/vec4 v0x1e36050_0;
    %cmp/ne;
    %jmp/0xz  T_0.10, 6;
    %vpi_call 3 70 "$display", "%b  %b", v0x1e31b20_0, v0x1e35af0_0 {0 0 0};
T_0.10 ;
    %pushi/vec4 8, 0, 5;
    %store/vec4 v0x1e31b20_0, 0, 5;
    %delay 1000, 0;
    %load/vec4 v0x1e35af0_0;
    %load/vec4 v0x1e366d0_0;
    %cmp/ne;
    %jmp/0xz  T_0.12, 6;
    %vpi_call 3 74 "$display", "%b  %b", v0x1e31b20_0, v0x1e35af0_0 {0 0 0};
T_0.12 ;
    %pushi/vec4 10, 0, 5;
    %store/vec4 v0x1e31b20_0, 0, 5;
    %delay 1000, 0;
    %load/vec4 v0x1e35af0_0;
    %load/vec4 v0x1e34f60_0;
    %cmp/ne;
    %jmp/0xz  T_0.14, 6;
    %vpi_call 3 78 "$display", "%b  %b", v0x1e31b20_0, v0x1e35af0_0 {0 0 0};
T_0.14 ;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./mux.v";
    "mux.t.v";
