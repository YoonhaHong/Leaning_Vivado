module sr8
(
    input rst, clk,
    input sdin,
    output reg[7:0] pq
);

always@(negedge rst, posedge clk)
//always@(posedge clk)
    if(rst == 0)
        pq <= 0;
    else
        pq <= {pq[6:0], sdin};
        //pq <={sdin, pq[7:1]};
endmodule 