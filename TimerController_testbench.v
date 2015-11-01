`timescale 1ns / 1ps

module TimerController_testbench;

	// inputs	
	reg clk, reset, set, startStop, isTimeFlat; // isTimeFlat is the flag when timer is done decrementing (when time is flat)
	// outputs
	wire swSecEn, swMinEn, decEn, flashEn, inRunTimerState;
	
	// instantiation
	TimerController tc(clk, reset, set, startStop, isTimeFlat, swSecEn, swMinEn, decEn, flashEn, inRunTimerState);

	initial begin
		clk = 1'b0;
		reset = 1'b0;
		
		#10;
		$display("reset = %d, set = %d, startStop = %d, isTimeFlat = %d, swSecEn = %d, swMinEn = %d, decEn = %d, flashEn = %d, inRunTimerState = %d",
		 reset, set, startStop, isTimeFlat, swSecEn, swMinEn, decEn, flashEn, inRunTimerState);
		 
		set = 1'b0;
		startStop = 1'b0;
		isTimeFlat = 1'b0;
		#10; //should go to set mins
		$display("reset = %d, set = %d, startStop = %d, isTimeFlat = %d, swSecEn = %d, swMinEn = %d, decEn = %d, flashEn = %d, inRunTimerState = %d",
		 reset, set, startStop, isTimeFlat, swSecEn, swMinEn, decEn, flashEn, inRunTimerState);
		
		set = 1'b0;
		startStop = 1'b1;
		isTimeFlat = 1'b0;
		#10; //should stay in same state
		$display("reset = %d, set = %d, startStop = %d, isTimeFlat = %d, swSecEn = %d, swMinEn = %d, decEn = %d, flashEn = %d, inRunTimerState = %d",
		 reset, set, startStop, isTimeFlat, swSecEn, swMinEn, decEn, flashEn, inRunTimerState);
		
		
		set = 1'b1;
		startStop = 1'b0;
		isTimeFlat = 1'b0;
		#10; //should move to set mins
		$display("reset = %d, set = %d, startStop = %d, isTimeFlat = %d, swSecEn = %d, swMinEn = %d, decEn = %d, flashEn = %d, inRunTimerState = %d",
		 reset, set, startStop, isTimeFlat, swSecEn, swMinEn, decEn, flashEn, inRunTimerState);
		
		set = 1'b1;
		startStop = 1'b0;
		isTimeFlat = 1'b0;
		#10; //should move to wait for key2
		$display("reset = %d, set = %d, startStop = %d, isTimeFlat = %d, swSecEn = %d, swMinEn = %d, decEn = %d, flashEn = %d, inRunTimerState = %d",
		 reset, set, startStop, isTimeFlat, swSecEn, swMinEn, decEn, flashEn, inRunTimerState);
		
		set = 1'b1;
		startStop = 1'b0;
		isTimeFlat = 1'b0;
		#10; //should do nothing
		$display("reset = %d, set = %d, startStop = %d, isTimeFlat = %d, swSecEn = %d, swMinEn = %d, decEn = %d, flashEn = %d, inRunTimerState = %d",
		 reset, set, startStop, isTimeFlat, swSecEn, swMinEn, decEn, flashEn, inRunTimerState);
		
		set = 1'b0;
		startStop = 1'b1;
		isTimeFlat = 1'b0;
		#10; //should go to decrementing time state
		$display("reset = %d, set = %d, startStop = %d, isTimeFlat = %d, swSecEn = %d, swMinEn = %d, decEn = %d, flashEn = %d, inRunTimerState = %d",
		 reset, set, startStop, isTimeFlat, swSecEn, swMinEn, decEn, flashEn, inRunTimerState);
		
		$finish;
	end
	
	always
		#5 clk = ~clk;
endmodule