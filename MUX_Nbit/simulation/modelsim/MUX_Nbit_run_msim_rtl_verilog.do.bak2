transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/MUX_Nbit {D:/QUARTUS/MUX_Nbit/MUX_Nbit.v}

vlog -vlog01compat -work work +incdir+D:/QUARTUS/MUX_Nbit {D:/QUARTUS/MUX_Nbit/tb_MUX_Nbit.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_MUX_Nbit

add wave *
view structure
view signals
run -all
