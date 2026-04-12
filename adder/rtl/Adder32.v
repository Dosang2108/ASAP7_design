`timescale 1ps/1ps
module Adder32(
	input			iClk,
	input		[31:0]	iA,
	input 		[31:0] 	iB,
	output reg 	[31:0] 	oS );
always@(posedge iClk) begin
	oS <= iA + iB;
end

endmodule
