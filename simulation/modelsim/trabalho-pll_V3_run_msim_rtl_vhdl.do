transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/adpll.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/dff_cont.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/car_edge.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/bor_edge.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/pfd.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/d_ff.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/divfreq.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/k_counter.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/dco.vhd}
vcom -93 -work work {C:/Users/wwagn/OneDrive/Documentos/projetos/trabalho-pll/div8.vhd}

