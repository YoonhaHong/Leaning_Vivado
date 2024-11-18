module button_and_led(
    input   key0,
    input   key1,
    output  led0,
    output  led1,
    output  led_or,
    output  led_and
    );
assign led0 = key0;
assign led1 = key1;
assign led_or = key0 | key1;
assign led_and = key0 & key1;

endmodule
