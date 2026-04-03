`timescale 1ns/1ps
module tb();

reg 		iClk;
reg	[31:0]	iA, iB;
wire	[31:0]	oS;

integer i;
Adder32 U0 (
	.iClk	(iClk),
	.iA	(iA),
	.iB	(iB),
	.oS	(oS));
always #5 iClk = ~iClk;

initial begin
iClk = 1'b0;
iA =32'b0;
iB =32'b0;
#16 	iA = 32'h0123_4567;
	iB = 32'h89ab_cdef;
#10 	iA = 32'h0000_0000;
	iB = 32'h0000_0000;
	
#10 	iA = 32'h0000_0000;
	iB = 32'h0000_0001;
#10 	iA = 32'h4567_89ab;
	iB = 32'hcdef_0123;
#10 	iA = 32'h1111_2222;
	iB = 32'h3333_4444;
end
endmodule	
