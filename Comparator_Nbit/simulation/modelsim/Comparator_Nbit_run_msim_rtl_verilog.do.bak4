transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Comparator_Nbit {D:/QUARTUS/Comparator_Nbit/Comparator_Nbit.v}

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Comparator_Nbit {D:/QUARTUS/Comparator_Nbit/tb_Comparator_Nbit.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_Comparator_Nbit

add wave *
view structure
view signals
run -all
