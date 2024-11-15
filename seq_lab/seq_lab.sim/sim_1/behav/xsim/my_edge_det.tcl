restart
add_force clk {0 0ns} {1 50ns} -repeat_every 100ns
add_force din {0 0ns} {1 500ns} -repeat_every 1us

add_force rst -radix hex 0
run 100ns

add_force rst -radix hex 1
run 1.5us