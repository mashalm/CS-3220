module SwitchValidator(clk, readSwEn, switches, swVal);

	input clk, readSwEn;
	input[7:0] switches;
	output[7:0] swVal;
	
	reg[7:0] swVal;
	
	always @(posedge clk) begin
		if(readSwEn == 1'b1) begin
			swVal <= switches[7:0];
			//if the MSB > 5 set it to 5
			if(switches[7:4] > 4'b0101)
				swVal[7:4] <= 4'b0101;
			//if the LSB > 9 set it to 9
			if(switches[3:0] > 4'b1001)
				swVal[3:0] <= 4'b1001;
			else
				swVal[7:0] <= switches;
		end
	end

endmodule