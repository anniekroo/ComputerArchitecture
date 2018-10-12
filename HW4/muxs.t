#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1fa7cf0 .scope module, "mux32to1by1" "mux32to1by1" 2 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 5 "address"
    .port_info 2 /INPUT 32 "inputs"
o0x7f62156d0018 .functor BUFZ 5, C4<zzzzz>; HiZ drive
v0x1fa7e90_0 .net "address", 4 0, o0x7f62156d0018;  0 drivers
o0x7f62156d0048 .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v0x1fe9830_0 .net "inputs", 31 0, o0x7f62156d0048;  0 drivers
v0x1fe9910_0 .net "out", 0 0, L_0x1fe9a60;  1 drivers
L_0x1fe9a60 .part/v o0x7f62156d0048, o0x7f62156d0018, 1;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "mux.v";
