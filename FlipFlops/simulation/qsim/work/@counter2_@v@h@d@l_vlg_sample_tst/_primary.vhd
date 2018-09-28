library verilog;
use verilog.vl_types.all;
entity Counter2_VHDL_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Clock_enable_B  : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Counter2_VHDL_vlg_sample_tst;
