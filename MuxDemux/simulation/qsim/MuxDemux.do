onerror {quit -f}
vlib work
vlog -work work MuxDemux.vo
vlog -work work MuxDemux.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.demux_vlg_vec_tst
vcd file -direction MuxDemux.msim.vcd
vcd add -internal demux_vlg_vec_tst/*
vcd add -internal demux_vlg_vec_tst/i1/*
add wave /*
run -all
