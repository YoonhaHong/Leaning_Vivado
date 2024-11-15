module cnt_pls8
(
    input rst, clk,
    input pls,
    output reg[7:0] qout
);

reg pl0, pl1;
wire redge, fedge;

always@(negedge rst, posedge clk)
    if(rst == 0)
        begin
            pl0 <= 0;
            pl1 <= 0;
            qout <= 0;
        end
    else
        begin 
            pl0 <= pls;
            pl1 <= pl0;
            
            if (redge == 1)
                qout <= qout+1;
            else if(fedge == 1)
                qout <= qout+1;
        end
 
assign redge = qout & ~pl1;
assign fedge = ~qout & pl1;
        
endmodule 