module DecrementTime(clk, reset, inputTime, decEnable, outputTime, isZero);

	input reset, clk, decEnable;
	input[7:0] inputTime;
	output[7:0] outputTime;
	output isZero;
	
	reg[7:0] outputTime;
	reg isZero;
	
	always @(posedge clk) begin
		if(reset == 1'b1)
			outputTime <= 8'b00000000;
		else if(decEnable == 1'b1) begin
			outputTime[3:0] <= inputTime[3:0] - 1;
			if(outputTime[3:0] == 4'b0000) begin
				//if you're at 00, make it 59
				outputTime[3:0] <= 4'b1001;
				outputTime[7:4] <= 4'b0101;
			end
			if(outputTime[7:0] == 8'b00000000) begin
				//should already have changed to 59,
				//now set the flag that it's zero
				isZero <= 1'b1;
			end
		end
			
	end

endmodule
