module hw22 (datein,N,dateout);
input  [4:0] datein;
output [4:0] dateout;
input  [5:0] N;

wire [4:0] dateout, datein;
wire [6:0] b1,b2,b3,b4,b5,sum;


assign sum = datein + N;
assign t1 = (sum>7'd30);
assign t2 = (sum<7'd61);
and G1 (s1,t1,t2);
assign t3 = (sum>7'd60);
assign t4 = (sum<7'd91);
and G2 (s2,t3,t4);
assign s3 = (sum>7'd90);
assign b1 = (sum-7'd30);
assign b2 = s2?b3:b4;
assign b3 = (sum-7'd60);
assign b4 = s3?b5:sum;
assign b5 = (sum-7'd90);


assign dateout = s1?b1:b2;

endmodule
