#!/opt/gowin/IDE/bin/gw_sh
add_file -type verilog rtl/n4k_top.v
add_file -type verilog syn/pll/gowin_pllvr.v
add_file -type verilog rtl/gwn_mem.v
add_file -type verilog ../lib/wbc_am4.v
add_file -type verilog ../../am4/hdl/wbc/rtl/am4_wb.v
add_file -type verilog ../../am4/hdl/wbc/rtl/am4_mcrom.v
add_file -type verilog ../../am4/hdl/wbc/rtl/am4_seq.v
add_file -type verilog ../../am4/hdl/wbc/rtl/am4_alu.v
add_file -type verilog ../../am4/hdl/org/rtl/am4_plm.v
add_file -type verilog ../lib/wbc_rst.v
add_file -type verilog ../lib/wbc_uart.v
add_file -type verilog ../lib/wbc_vic.v
set_device GW1NSR-LV4CQN48PC7/I6 -name GW1NSR-4C
set_option -synthesis_tool gowinsynthesis
set_option -output_base_name nano4k
set_option -top_module n4k_top
# set_option -verilog_std sysv2017
set_option -verilog_std v2001
set_option -gen_sdf 1
set_option -gen_posp 1
set_option -gen_sim_netlist 1
set_option -ireg_in_iob 0
set_option -oreg_in_iob 0
set_option -ioreg_in_iob 0
# -use_i2c_as_gpio
set_option -use_mode_as_gpio 1
# -use_reconfign_as_gpio
# -use_done_as_gpio
# -use_ready_as_gpio
# -use_mspi_as_gpio
# -use_sspi_as_gpio
# -use_jtag_as_gpio
run syn
