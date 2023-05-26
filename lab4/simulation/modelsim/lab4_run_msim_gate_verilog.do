transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {lab4.vo}

vcom -93 -work work {C:/Users/JUYI/Desktop/110-1 Micro System/lab4/lab4.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  lab4

add wave *
view structure
view signals
run -all
