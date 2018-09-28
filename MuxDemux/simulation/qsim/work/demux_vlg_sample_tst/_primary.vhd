library verilog;
use verilog.vl_types.all;
entity demux_vlg_sample_tst is
    port(
        c               : in     vl_logic_vector(1 downto 0);
        d               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end demux_vlg_sample_tst;
