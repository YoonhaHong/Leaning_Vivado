module arith8_core
(
    input[7:0] din_a, din_b,
    input[1:0] sel,
    output[7:0] y_out
);

wire[7:0] y_a, y_s, y_m, y_d;

arith8 u_arith8_0
(
    .a  (din_a ),
    .b  (din_b ),
    .y_add  (y_a ),
    .y_sub  (y_s ),
    .y_div  (y_d ),
    .y_mul  (y_m )
);

assign y_out = (sel == 0) ? y_a :
               (sel == 1) ? y_s :
               (sel == 2) ? y_m :
                            y_d ;
                            
endmodule
