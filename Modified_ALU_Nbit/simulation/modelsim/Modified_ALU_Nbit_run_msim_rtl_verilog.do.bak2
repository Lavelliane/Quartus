transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Modified_ALU_Nbit {D:/QUARTUS/Modified_ALU_Nbit/Modified_ALU_Nbit.v}
vlog -vlog01compat -work work +incdir+D:/QUARTUS/Modified_ALU_Nbit {D:/QUARTUS/Modified_ALU_Nbit/Original_ALU.v}
vlog -vlog01compat -work work +incdir+D:/QUARTUS/Modified_ALU_Nbit {D:/QUARTUS/Modified_ALU_Nbit/Combinational_Shifter.v}
vlog -vlog01compat -work work +incdir+D:/QUARTUS/Modified_ALU_Nbit {D:/QUARTUS/Modified_ALU_Nbit/Select_Mode.v}

vlog -vlog01compat -work work +incdir+D:/QUARTUS/Modified_ALU_Nbit {D:/QUARTUS/Modified_ALU_Nbit/tb_Modified_ALU_Nbit.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_Modified_ALU_Nbit

add wave *
view structure
view signals
run -all
