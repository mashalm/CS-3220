//CS 3220 Fall 2015
//Egg Time Controller
//Mashal Mannan, Joon Kim

module EggTimerController(clk, reset, KEY, SW, HEX3, HEX2, HEX1, HEX0, LEDR);
	
	input clk;
	input reset;	
	input [1:0] KEY;
	input[7:0] SW;
	
	output[6:0] HEX3;
	output[6:0] HEX2;
	output[6:0] HEX1;
	output[6:0] HEX0;
	output[9:0] LEDR;


	//state machine logic
	//ControlUnit cu(clk, reset, KEY[1], KEY[2], SW, minsTens, minsOnes, SecsTens, SecsOnes, LEDR);
	//validate the switch inputs
	SwitchProcess(minsTens, minsOnes, SecsTens, SecsOnes, 
	minutesTens, minutesOnes, SecondsTens, SecondsOnes);

	//decrement only after every second
	ClockDivider cd(clk, reset, clkOut);

	wire clkOut;
	wire[3:0] secondsOnes, secondsTens, minutesOnes, minutesTens;

	//have each seven seg display the time
	dec2_7seg(secondsOnes, HEX0);
	dec2_7seg(secondsTens, HEX1);
	dec2_7seg(minutesOnes, HEX2);
	dec2_7seg(minutesTens, HEX3);

endmodule