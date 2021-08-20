transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/vhdl codes/ass52/ass52.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/vhdl codes/ass52/simulation/modelsim/ass52_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  ass52_tb

add wave *
view structure
view signals
run -all
