module SwitchProcess(minsTens, minsOnes, secsTens, secsOnes, 
	minutesTens, minutesOnes, secondsTens, secondsOnes);

	input[3:0] minsOnes, minsTens, secsTens, secsOnes;
	output[3:0] minutesOnes, minutesTens, secondsOnes, secondsTens;
	
	reg minsTensReg, minsOnesReg, secsOnesReg, secsTensReg;
	
	assign minutesOnes = minsOnesReg;
	assign minutesTens = minsTensReg;
	assign secondsOnes = secsOnesReg;
	assign secondsTens = secsTensReg;
	
	always@(minsOnes, minsTens, secsOnes, secsTens) begin
		if(minsTens > 4'b0101)
			minsTensReg <= 4'b0101;
		if(minsOnes > 4'b1001)
			minsOnesReg <= 4'b1001;
		if(secsTens > 4'b0101)
			secsTensReg <= 4'b0101;
		if(secsOnes > 4'b1001)
			secsOnesReg <= 4'b1001;
	end
	
endmodule