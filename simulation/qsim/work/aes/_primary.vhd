library verilog;
use verilog.vl_types.all;
entity aes is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        outAes          : out    vl_logic_vector(127 downto 0)
    );
end aes;
