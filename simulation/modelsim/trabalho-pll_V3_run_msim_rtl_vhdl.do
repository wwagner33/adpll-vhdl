transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/pfd.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/d_ff.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/divfreq.vhd}

