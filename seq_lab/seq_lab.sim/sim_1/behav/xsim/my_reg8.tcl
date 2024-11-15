restart
add_force rst {1 0ns} {0 1ps} {1 100ns}
add_force clk {0 0ns} {1 50ns} -repeat_every 100ns
add_force din 0
run 200ns

add_force din -radix unsigned 100
run 1us

add_force din -radix unsigned 250
run 1us

add_force din -radix hex 4D
run 1us