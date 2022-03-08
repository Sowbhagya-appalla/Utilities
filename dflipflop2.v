module dflipflop2(d1,q1,clk,reset);
input [33:0]d1;
input clk,reset;
output reg [33:0]q1;
//reg q1;
always@(posedge clk)
begin
if(reset==1'b1)                                  
	q1<=34'b0;
else
	q1<=d1;
end
endmodule