module ClockDivider(clock, reset, isFlashFreq, clockOut);

	input clock;
	input reset;
	input isFlashFreq;
	output clockOut;
	
	reg[31:0] counter = 0;
	reg clockReg;
	
	assign clockOut = clockReg;
	
	always@(posedge clock) begin
		counter <= counter + 1;
		if(reset) begin
			counter <= 0;
		end
		//if it's not in the flashing state
		else if(isFlashFreq == 1'b0) begin
			if(counter == 50000000) begin
				clockReg <= ~clockReg;
				counter <= 0;
			end
		end
		else if(isFlashFreq == 1'b1) begin
		//it's in the flashing state
			if(counter == 25000000) begin
			//.5 cycles is twice
				clockReg <= ~clockReg;
				counter <= 0;
			end
		end
	end

endmodule