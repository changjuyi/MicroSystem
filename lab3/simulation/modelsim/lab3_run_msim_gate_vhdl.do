transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {lab3.vho}

vcom -93 -work work {C:/Users/JUYI/Desktop/110-1 Micro System/lab3/one_bit_ALU.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=lab3_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  one_bit_ALU

add wave *
view structure
view signals
run -all
