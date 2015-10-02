module SwitchValidator(clk, reset, readSwEn, switches, swVal);

	input clk, reset, readSwEn;
	input[7:0] switches;
	output[7:0] swVal;
	
	reg[7:0] swVal;
	
	always @(posedge clk) begin
		if(reset == 1'b1)
			swVal <= 8'b00000000;
		else if(readSwEn == 1'b1) begin
			//if the MSB > 5 set it to 5
			if(switches[7:4] > 4'b0101)
				swVal[7:4] <= 4'b0101;
			//if the LSB > 9 set it to 9
			if(switches[3:0] > 4'b1001)
				swVal[3:0] <= 4'b1001;
		end
	end

endmodule