module mux4(
    input d0, d1, d2, d3,
    input[1:0] sel,
    output y
    );

assign y = (sel == 0) ? d0 :
           (sel == 1) ? d1 :
           (sel == 2) ? d2 :
           d3;
   
endmodule
