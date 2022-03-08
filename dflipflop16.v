module dflipflop16(d,q1,clk,reset);
input [15:0]d;
input clk,reset;
output reg [15:0]q1;
always@(posedge clk)
begin
if(reset==1'b1)
	q1<=16'b0;
else
	q1<=d;
end
endmodule 

module mux16(a,b,s,clk,out);
input [15:0] a;
input [15:0] b;
input s;
output [15:0] out;
input clk;
wire [15:0] a,b;
reg [15:0] out; 
always @(a,b,s)
begin
if(s==0)
    out=a;
else
    out=b;
end    
endmodule