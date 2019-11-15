transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {aes.vho}

vcom -93 -work work {C:/Users/Arthur/Documents/designs/AES/tb_top.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  tb_top

source aes_dump_all_vcd_nodes.tcl
add wave *
view structure
view signals
run 7000 ns
