library verilog;
use verilog.vl_types.all;
entity demux is
    port(
        d               : in     vl_logic;
        c               : in     vl_logic_vector(1 downto 0);
        s               : out    vl_logic_vector(3 downto 0)
    );
end demux;
