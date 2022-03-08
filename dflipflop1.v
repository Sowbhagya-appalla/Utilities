module dflipflop1(d,q,clk,reset);
input [15:0]d;
input clk,reset;
output reg [15:0]q;
//reg q;
always@(posedge clk)
begin
if(reset==1'b1)
	q<=16'b0;
else
	q<=d;
end
endmodule 
