############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_counter
set_top main
add_files ../counter.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
config_export -format sysgen -output C:/Users/Dimitris/Desktop/ZedBoard_Zynq_Embedded_System/hls_counter
#source "./hls_counter/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format sysgen -output C:/Users/Dimitris/Desktop/ZedBoard_Zynq_Embedded_System/hls_counter
