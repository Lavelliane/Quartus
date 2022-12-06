transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Problem3 {D:/QUARTUS/Problem3/Problem3.v}

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Problem3 {D:/QUARTUS/Problem3/tb_Problem3.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_Problem3

add wave *
view structure
view signals
run -all
