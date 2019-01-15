module registrador (load, rst, dadoIn, dadoOut);
input load, rst;
input [7:0] dadoIn;
output reg [7:0] dadoOut;	

always@(posedge load or negedge rst)
	if(!rst)
		dadoOut <= 0;
	else
		dadoOut <= dadoIn;
endmodule
