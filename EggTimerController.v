//CS 3220 Fall 2015
//Egg Time Controller
//Mashal Mannan, Joon Kim

module EggTimerController(CLOCK_50, KEY, SW, HEX3, HEX2, HEX1, HEX0, LEDR);
	
	input CLOCK_50;
	input [2:0] KEY;
	input[7:0] SW;
	
	output[6:0] HEX3;
	output[6:0] HEX2;
	output[6:0] HEX1;
	output[6:0] HEX0;
	output[9:0] LEDR;

	wire reset;
	wire clk;
	
	assign reset = KEY[0];
	assign clk = CLOCK_50;
	//state machine logic
	wire decEn, swSecsEn, swMinsEn;
	TimerController sm(clk, reset, KEY[1], KEY[2], minsIsDone & secsIsDone, 
	swSecEn, swMinEn, decEn, flashEn, inRunTimerState);

	//validate the switch inputs
	wire[7:0] secondsVal;
	SwitchValidator svSecs(clk, swSecsEn, SW, secondsVals);
	
	wire[7:0] minutesVal;
	SwitchValidator svMins(clk, swMinsEn, SW, minutesVal);

	//decrement only after every second
	ClockDivider cd(clk, reset, flashEn, clkOut);
	wire clkOut;
	
	//have a mux with output val of decSave?
	wire isSecsDone;
	DecrementTime decSecs(clk, reset, secondsVal, decEn & clkOut, secondsVals, isSecsDone);
	
	wire isMinsDone;
	DecrementTime decMins(clk, reset, minutesVal, decEn & isSecsDone & clkOut, minutesVal, isMinsDone);
	
	wire[9:0] leds;
	assign LEDR[9:0] = leds[9:0];
	flashLights fl(clk, flashEn & clkOut, leds);

	//have each seven seg display the time
	dec2_7seg(secondsVal[3:0], HEX0);
	dec2_7seg(secondsVal[7:4], HEX1);
	dec2_7seg(minutesVal[3:0], HEX2);
	dec2_7seg(minutesVal[7:4], HEX3);

endmodule