module cnt8
(
    input rst, clk,
    output reg[7:0] qout
);

always@(negedge rst, posedge clk)
    if(rst == 0)
        qout <= 0;
    else
        if (qout < 99)
            qout <= qout+1;
        else
            qout <= 0;
endmodule 