transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan {C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan/EggTimerController.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan {C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan/dec2_7seg.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan {C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan/ClockDivider.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan {C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan/DecrementTime.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan {C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan/flashLights.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan {C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan/SwitchValidator.v}
vlog -vlog01compat -work work +incdir+C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan {C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan/timercontroller.v}

vlog -vlog01compat -work work +incdir+C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan {C:/Users/Mashal/Documents/2015-Fall/CS3220/TimerMashalMannan/TimerController_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  TimerController_testbench

add wave *
view structure
view signals
run -all
