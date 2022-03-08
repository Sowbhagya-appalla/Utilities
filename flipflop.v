//1-bit flipflop
module flip_flop1(d,q,clk,reset);
input d,clk,reset;
output q;
reg q;
always@(posedge clk)
begin
if(reset==1'b1)
q<=1'b0;
else
q<=d;
end 
endmodule       

//16-bit flip flop
module flip_flop16(d1,q1,clk,reset);
input [15:0] d1;
input clk,reset;
output  [15:0] q1;
reg [15:0] q1;
always@(posedge clk)
begin
if(reset==1'b1)
q1<=16'b0;
else
q1<=d1;
end 
endmodule                  