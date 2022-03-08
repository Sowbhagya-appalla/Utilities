module flip_flop_tb;
reg d,clk,reset;
wire q;
flip_flop mod(d,q,clk,reset);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,flip_flop_tb);
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
initial
$monitor($time,"d=%d,q=%d",d,q);
endmodule