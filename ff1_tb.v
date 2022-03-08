module ff1_tb;
reg [15:0]d;
reg clk,reset;
wire [15:0]q;
dflipflop1 mod(d,q,clk,reset);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,ff1_tb);
reset=1'b1;
clk=1'b1;
#1
reset=1'b0;
d=1'b0;
#2
d=1'b1;
#2
d=1'b0;
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
//$monitor($time,"d=%d,q=%d",d,q);
endmodule