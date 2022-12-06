transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/EvenParityGenerator_3bit {D:/QUARTUS/EvenParityGenerator_3bit/EvenParityGenerator_3bit.v}

vlog -vlog01compat -work work +incdir+D:/QUARTUS/EvenParityGenerator_3bit {D:/QUARTUS/EvenParityGenerator_3bit/tb_EvenParityGen_3bit.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_EvenParityGen_3bit

add wave *
view structure
view signals
run -all
