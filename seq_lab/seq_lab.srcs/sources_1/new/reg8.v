module reg8
(
    input rst, clk,
    input[7:0] din,
    output reg[7:0] qout
);
always@(negedge rst, posedge clk)
    if(rst == 0)
        qout <= 0;
    else
        qout <= din;
        
endmodule 