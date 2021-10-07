module tb();

reg  [4:0] datein;
wire [4:0] dateout;
reg  [5:0] N;

integer i;

hw22 DIDO_TB (datein,N,dateout);


initial
	begin
		datein=1;N=15;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=25;N=15;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=28;N=10;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=25;N=60;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=30;N=63;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=15;N=0;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=15;N=15;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=17;N=13;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=13;N=17;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=29;N=1;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=25;N=35;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		datein=30;N=60;#1;$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		/*
		for(i=0;i<6;i=i+1)
		begin
		datein=$urandom_range(0,30);
		N=$random;
		#1;
		$display("datein=%d,N=%d	:::	dateout=%d",datein,N,dateout);
		end*/
	end
endmodule
