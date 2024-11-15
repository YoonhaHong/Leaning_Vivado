module edge_det
(
    input rst, clk,
    input din,
    output redge, fedge
);

reg qout, q1;

always@(negedge rst, posedge clk)
    if(rst == 0)
        begin
            qout <= 0;
            q1 <= 0;
        end
    else
        begin 
            qout <= din;
            q1 <= qout;
        end
 
assign redge = qout & ~q1;
assign fedge = ~qout & q1;
        
endmodule 