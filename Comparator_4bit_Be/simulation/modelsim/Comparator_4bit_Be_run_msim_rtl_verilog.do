transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Comparator_4bit_Be {D:/QUARTUS/Comparator_4bit_Be/Comparator_4bit_Be.v}

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Comparator_4bit_Be {D:/QUARTUS/Comparator_4bit_Be/tb_Comparator_4bit_Be.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_Comparator_4bit_Be

add wave *
view structure
view signals
run -all
