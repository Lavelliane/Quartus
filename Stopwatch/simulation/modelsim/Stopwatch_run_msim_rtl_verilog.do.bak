transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Stopwatch {D:/QUARTUS/Stopwatch/Stopwatch.v}
vlog -vlog01compat -work work +incdir+D:/QUARTUS/Stopwatch {D:/QUARTUS/Stopwatch/BCD_Counter.v}
vlog -vlog01compat -work work +incdir+D:/QUARTUS/Stopwatch {D:/QUARTUS/Stopwatch/BCD_Decoder.v}

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Stopwatch {D:/QUARTUS/Stopwatch/tb_Stopwatch.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_Stopwatch

add wave *
view structure
view signals
run -all
