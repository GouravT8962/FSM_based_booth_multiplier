transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ass5_6_1200mv_85c_slow.vho}

vcom -93 -work work {C:/intelFPGA_lite/18.1/vhdl codes/ass5/simulation/modelsim/ass5_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUT=ass5_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  ass5_tb

add wave *
view structure
view signals
run -all
