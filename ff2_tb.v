module ff2_tb;
reg [33:0]d1;
reg clk,reset;
wire [33:0]q1;
dflipflop2 mod(d1,q1,clk,reset);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,ff2_tb);
reset=1'b1;
clk=1'b1;
#1
reset=1'b0;
d1=1'b0;
#2
d1=1'b1;
#2
d1=1'b0;
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
//$monitor($time,"d1=%d,q1=%d",d1,q1);
endmodule