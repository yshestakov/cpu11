set_property PACKAGE_PIN D4      [get_ports sys_uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports sys_uart_rxd]
set_property PACKAGE_PIN C4      [get_ports sys_uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports sys_uart_txd]

set_property PACKAGE_PIN N11     [get_ports sys_clock_50]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clock_50]

set_property PACKAGE_PIN A8      [get_ports sys_reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports sys_reset_n]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
#create_clock -period 25.000 -name sys_clock_50 -waveform {0.000 5.000} [get_ports sys_clock_50]
create_clock -period 4.000 -name clkfx    -waveform {0.000 2.000}
create_clock -period 4.000 -name clkfx180 -waveform {2.000 4.000}
