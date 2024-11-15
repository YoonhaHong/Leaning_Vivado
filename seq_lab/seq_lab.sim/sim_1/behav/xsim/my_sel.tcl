restart
add_force rst {1 0ns} {0 1ps} {1 100ns}
add_force clk {0 0ns} {1 50ns} -repeat_every 100ns

add_force d0 -radix dec 20
add_force d1 -radix dec 40
add_force d2 -radix dec 60
add_force d3 -radix dec 80

run 100ns

add_force sel -radix dec 0
run 500ns

add_force sel -radix dec 1
run 500ns

add_force sel -radix dec 2
run 500ns

add_force sel -radix dec 3
run 500ns
