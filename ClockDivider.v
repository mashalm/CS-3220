module ClockDivider(clock, reset, clockOut);

	input clock;
	input reset;
	output clockOut;
	
	reg[25:0] counter = 26'b0;
	reg clockReg;
	
	assign clockOut = clockReg;
	
	always@(posedge clock) begin
		if(reset)
			counter <= 26'b0;
		//50,000,000MHz = 1 cycle/sec
		else if(counter == 50000000) begin
			clockReg <= ~clockReg;
			counter <= 26'b0;
		end
		else
			counter <= counter + 1;
	end

endmodule