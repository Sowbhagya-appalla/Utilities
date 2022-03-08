module ff3_tb;
reg [31:0]d3;
reg clk,reset;
wire [31:0]q3;
dflipflop3 mod(d3,q3,clk,reset);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,ff3_tb);
reset=1'b1;
clk=1'b1;
#1
reset=1'b0;
d3=1'b0;
#2
d3=1'b1;
#2
d3=1'b0;
end
always
begin
#1 clk=~clk;
end
always
begin
#10 $finish;
end
//initial
//$monitor($time,"d3=%d,q3=%d",d3,q3);
endmodule