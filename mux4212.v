module mux4212(a,b,c,d,s1,out);
input [1:0]a,b,c,d;
input [1:0]s1;
output [1:0]out;
assign out[0]=(((~s1[1])&(~s1[0])&a[0])|((~s1[1])&s1[0]&b[0])|(s1[1]&(~s1[0])&c[0])|(s1[1]&s1[0]&d[0]));
assign out[1]=(((~s1[1])&((~s1[0]))&a[1])|(((~s1[1]))&s1[0]&b[1])|(s1[1]&((~s1[0]))&c[1])|(s1[1]&s1[0]&d[1]));
endmodule 