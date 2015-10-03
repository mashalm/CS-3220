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
	wire decEn, swSecEn, swMinEn;
	TimerController sm(.clk(clk), .reset(reset), .set(KEY[1]), .startStop(KEY[2]), .isTimeFlat(minsIsDone & secsIsDone), 
	.swSecEn(swSecEn), .swMinEn(swMinEn), .decEn(decEn), .flashEn(flashEn), .inRunTimerState(inRunTimerState));

	//validate the switch inputs
	wire[7:0] secondsValSw;
	SwitchValidator svSecs(.clk(clk), .reset(reset), .readSwEn(swSecEn), .switches(SW), .swVal(secondsValSw));
	
	wire[7:0] minutesValSw;
	SwitchValidator svMins(.clk(clk), .reset(reset), .readSwEn(swMinEn), .switches(SW), .swVal(minutesValSw));

	//decrement only after every second
	ClockDivider cd(.clock(clk), .reset(reset), .isFlashFreq(flashEn), .clockOut(clkOut));
	wire clkOut;
	
	//have a mux with output val of decSave?
	wire isSecsDone;
	wire[7:0] secondsValDec;
	DecrementTime decSecs(.clk(clk), .reset(reset), .inputTime(swSecEn ? secondsValSw : secondsValDec), .wrtEn(swSecEn), .decEnable(decEn & clkOut), .outputTime(secondsValDec), .isZero(isSecsDone));
	
	wire isMinsDone;
	wire[7:0] minutesValDec;
	DecrementTime decMins(.clk(clk), .reset(reset), .inputTime(swMinEn ? minutesValSw : minutesValDec), .wrtEn(swMinEn), .decEnable(decEn & isSecsDone & clkOut), .outputTime(minutesValDec), .isZero(isMinsDone));
	
	wire[9:0] leds;
	assign LEDR[9:0] = leds[9:0];
	flashLights fl(.clk(clk), .flashEn(flashEn & clkOut), .ledr(leds));

	//have each seven seg display the time
	dec2_7seg d1(.num(swSecEn ? secondsValSw[3:0] : secondsValDec[3:0]), .display(HEX0));
	dec2_7seg d2(.num(swSecEn ? secondsValSw[7:4] : secondsValDec[7:4]), .display(HEX1));
	dec2_7seg d3(.num(swMinEn ? minutesValSw[3:0] : minutesValDec[3:0]), .display(HEX2));
	dec2_7seg d4(.num(swMinEn ? minutesValSw[7:4] : minutesValDec[7:4]), .display(HEX3));
	//dec2_7seg d4(.num(4'b0001), .display(HEX3));

endmodule