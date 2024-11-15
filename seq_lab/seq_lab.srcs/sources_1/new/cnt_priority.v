module cnt_priority
(
    input rst, clk,
    input clr, cen, ld,up_dn,
    input[7:0] ldv,
    output reg[7:0] qout
);


always@(negedge rst, posedge clk)
    if(rst == 0)
        qout <= 0;
    else
        if(cen == 0)
            qout <= 0;
            
        else if(clr == 1)
            qout <= 0;
            
        else if(ld == 1)
            qout <= ldv;
            
        else if(up_dn == 1)
            if(qout >= 199)
                qout <= 0;
            else
                qout <= qout+1;
                
        else
            if(qout == 0)
                qout <= 199;
            else
                qout <= qout-1;
        
endmodule 