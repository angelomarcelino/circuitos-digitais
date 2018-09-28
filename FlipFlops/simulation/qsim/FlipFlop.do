onerror {quit -f}
vlib work
vlog -work work FlipFlop.vo
vlog -work work FlipFlop.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Counter2_VHDL_vlg_vec_tst
vcd file -direction FlipFlop.msim.vcd
vcd add -internal Counter2_VHDL_vlg_vec_tst/*
vcd add -internal Counter2_VHDL_vlg_vec_tst/i1/*
add wave /*
run -all
