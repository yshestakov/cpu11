//Copyright (C)2014-2022 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//GOWIN Version: 1.9.8 
//Created Time: 2022-02-14 15:04:10
#create_clock -name sys_clk_p -period 18.519 -waveform {0 9.259} [get_nets {sys_clk_p}]
create_clock -name n4k_clk_27 -period 37.037 -waveform {0 18.518} [get_ports {n4k_clk_27}] -add
