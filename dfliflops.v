module dflipflop1(d,q,clk,reset);
input d;
input clk,reset;
output reg q;
//reg q;
always@(posedge clk)
begin
if(reset==1'b1)
	q<=1'b0;
else
	q<=d;
end
endmodule 