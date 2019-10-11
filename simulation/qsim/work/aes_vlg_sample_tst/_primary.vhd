library verilog;
use verilog.vl_types.all;
entity aes_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        keyIni          : in     vl_logic_vector(127 downto 0);
        plainText       : in     vl_logic_vector(127 downto 0);
        sampler_tx      : out    vl_logic
    );
end aes_vlg_sample_tst;
