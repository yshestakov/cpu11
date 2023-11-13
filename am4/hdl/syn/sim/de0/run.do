transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+../../tbe {../../tbe/config.v}
vlog -vlog01compat -work work +incdir+../../rtl {../../rtl/am4.v}
vlog -vlog01compat -work work +incdir+../../rtl {../../rtl/am4_alu.v}
vlog -vlog01compat -work work +incdir+../../rtl {../../rtl/am4_seq.v}
vlog -vlog01compat -work work +incdir+../../rtl {../../rtl/am4_plm.v}
vlog -vlog01compat -work work +incdir+../../rtl {../../rtl/am4_mcrom.v}
vlog -vlog01compat -work work +incdir+../../tbe {../../tbe/de0_top.v}

vlog -vlog01compat -work work +incdir+../../syn/de0/../../tbe {../../tbe/de0_tb4.v}

vsim -t 1ps -L rtl_work -L work -voptargs="+acc" -onfinish stop tb4

do wave.do
view structure
view signals
run -all
