//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.03 Education
//Part Number: GW1NR-LV9QN88PC6/I5
//Device: GW1NR-9
//Device Version: C
//Created Time: Tue Aug 27 11:42:21 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    mem16x16k_vm3 your_instance_name(
        .dout(dout), //output [15:0] dout
        .clk(clk), //input clk
        .oce(oce), //input oce
        .ce(ce), //input ce
        .reset(reset), //input reset
        .wre(wre), //input wre
        .ad(ad), //input [13:0] ad
        .din(din) //input [15:0] din
    );

//--------Copy end-------------------
