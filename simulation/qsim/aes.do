onerror {quit -f}
vlib work
vlog -work work aes.vo
vlog -work work aes.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.aes_vlg_vec_tst
vcd file -direction aes.msim.vcd
vcd add -internal aes_vlg_vec_tst/*
vcd add -internal aes_vlg_vec_tst/i1/*
add wave /*
run -all
