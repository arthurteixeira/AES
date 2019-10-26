onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_top/inst_aes/clock
add wave -noupdate /tb_top/inst_aes/reset
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/outAddRoundKey_sg
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/outAddRoundKey_sg2
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/outSubBytes_sg
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/outShiftRows_sg
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/outMuxInicio
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/outMuxRound
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/outKey_sg
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/outMixColumns_sg
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/reg_plainText
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/reg_keyIni
add wave -noupdate /tb_top/inst_aes/selInicio
add wave -noupdate /tb_top/inst_aes/selRound
add wave -noupdate /tb_top/inst_aes/selKey
add wave -noupdate /tb_top/inst_aes/enRegInicio
add wave -noupdate /tb_top/inst_aes/enRegADR
add wave -noupdate /tb_top/inst_aes/enRegSub
add wave -noupdate /tb_top/inst_aes/enRegSR
add wave -noupdate /tb_top/inst_aes/enRegMix
add wave -noupdate /tb_top/inst_aes/enRegADR2
add wave -noupdate -radix hexadecimal /tb_top/inst_aes/outAes
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {834206843 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 202
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {2501499 ps} {3482491 ps}
