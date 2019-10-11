library verilog;
use verilog.vl_types.all;
entity aes_vlg_check_tst is
    port(
        outAes          : in     vl_logic_vector(127 downto 0);
        sampler_rx      : in     vl_logic
    );
end aes_vlg_check_tst;
