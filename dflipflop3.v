
module dflipflop3(d3,q3,clk,reset);
input [31:0]d3;
input clk,reset;
output reg [31:0]q3;
//reg q3;
always@(posedge clk)
begin
if(reset==1'b1)
	q3<=32'b0;
else
	q3<=d3;
end
endmodule 