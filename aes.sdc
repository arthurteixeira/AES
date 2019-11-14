create_clock -period 4.000 -name clock clock
set_input_delay -clock clock 0.1 [all_inputs]
set_output_delay -clock clock 0.1 [all_outputs]
derive_pll_clocks
derive_clock_uncertainty