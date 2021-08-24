transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/vhdl codes/ass52/ass52.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/vhdl codes/ass51/ass51.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/vhdl codes/ass5/ass5.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/vhdl codes/ass5/simulation/modelsim/ass5_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  ass5_tb

add wave *
view structure
view signals
run -all
