transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/JK_FF {D:/QUARTUS/JK_FF/JK_Flip_Flop.v}

vlog -vlog01compat -work work +incdir+D:/QUARTUS/JK_FF {D:/QUARTUS/JK_FF/tb_JK_Flip_Flop.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_JK_Flip_Flop

add wave *
view structure
view signals
run -all
