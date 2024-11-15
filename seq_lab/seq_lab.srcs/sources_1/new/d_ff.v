module d_ff
(
    input rst, clk,
    input din,
    output reg qout
);
always@(negedge rst, posedge clk)
    if(rst == 0)
        qout <= 0;
    else
        qout <= din;
        
endmodule 