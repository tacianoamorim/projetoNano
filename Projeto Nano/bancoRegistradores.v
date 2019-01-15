module bancoRegistradores(rst, clk, wrEn, addR1, addR2, addWr, dadoR1, dadoR2, dadoWr);
input clk, rst, wrEn;
input [2:0] addR1, addR2, addWr;
input [7:0] dadoWr;

output reg [7:0] dadoR1; 
output reg [7:0] dadoR2;
reg [7:0] registradores [0:7];

	always@(posedge clk or negedge rst)
		begin
			if(rst == 0) begin
				registradores[0] <= 8'h0;
				registradores[1] <= 8'h1;
				registradores[2] <= 8'h2;
				registradores[3] <= 8'h3;
				registradores[4] <= 8'h4;
				registradores[5] <= 8'h5;
				registradores[6] <= 8'h6;
				registradores[7] <= 8'h7;
			end
			else begin
				dadoR1 <= registradores[addR1];
				dadoR2 <= registradores[addR2];
				if(wrEn)
					registradores[addWr] <= dadoWr;
			end
			
		end

endmodule