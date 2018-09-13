transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Chris/Desktop/LAB_4 {C:/Users/Chris/Desktop/LAB_4/Seleccionador.sv}
vlog -sv -work work +incdir+C:/Users/Chris/Desktop/LAB_4 {C:/Users/Chris/Desktop/LAB_4/Seleccionador_tb.sv}

