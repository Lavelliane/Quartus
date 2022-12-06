transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/SpinningDisk {D:/QUARTUS/SpinningDisk/SpinningDisk.v}
vlog -vlog01compat -work work +incdir+D:/QUARTUS/SpinningDisk {D:/QUARTUS/SpinningDisk/Counter_3bit.v}
vlog -vlog01compat -work work +incdir+D:/QUARTUS/SpinningDisk {D:/QUARTUS/SpinningDisk/Seven_Seg.v}

vlog -vlog01compat -work work +incdir+D:/QUARTUS/SpinningDisk {D:/QUARTUS/SpinningDisk/tb_Spinning_Disk.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_Spinning_Disk

add wave *
view structure
view signals
run -all
