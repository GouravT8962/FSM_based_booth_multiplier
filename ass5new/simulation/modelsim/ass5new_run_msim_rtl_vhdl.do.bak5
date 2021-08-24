transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/vhdl codes/ass5new/ass5new.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/vhdl codes/ass5new/simulation/modelsim/ass5new_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  ass5new_tb

add wave *
view structure
view signals
run -all
