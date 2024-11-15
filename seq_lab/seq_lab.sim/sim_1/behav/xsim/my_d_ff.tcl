restart
add_force rst {1 0ns} {0 1ps} {1 100ns}
add_force clk {0 0ns} {1 50ns} -repeat_every 100ns
add_force din 0
run 200ns

add_force din 1
run 100ns

add_force din 0
run 10ns

add_force din 1
run 100ns

add_force din 0
run 100ns

add_force din 1
run 10ns

add_force din 0
run 100ns

add_force din 1
run 200ns