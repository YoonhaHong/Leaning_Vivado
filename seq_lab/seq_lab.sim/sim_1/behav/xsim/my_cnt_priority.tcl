restart
add_force rst {1 0ns} {0 1ps} {1 100ns}
add_force clk {0 0ns} {1 50ns} -repeat_every 100ns

add_force ldv -radix dec 195
add_force cen 0
add_force clr 0
add_force ld 0
add_force up_dn 1

run 200ns
add_force cen 1
run 500ns
add_force clr 1
run 100ns
add_force clr 0
run 500ns

add_force ld 1
run 100ns

add_force ld 0
run 1us
add_force up_dn 0
run 1us