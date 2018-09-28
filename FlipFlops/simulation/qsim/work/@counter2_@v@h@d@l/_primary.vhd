library verilog;
use verilog.vl_types.all;
entity Counter2_VHDL is
    port(
        Clock_enable_B  : in     vl_logic;
        Clock           : in     vl_logic;
        Reset           : in     vl_logic;
        Output          : out    vl_logic_vector(0 to 6)
    );
end Counter2_VHDL;
