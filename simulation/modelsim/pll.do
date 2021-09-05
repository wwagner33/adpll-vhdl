onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pll/clock_50mhz
add wave -noupdate /pll/kclock
add wave -noupdate /pll/dco_clock
add wave -noupdate /pll/adpll_out
add wave -noupdate /pll/fref
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 17000000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {1 ns}
