restart 
add_force din_a -radix dec 50
add_force din_b -radix dec 3
add_force sel -radix hex 0
run 1us

add_force sel -radix hex 1
run 1us

add_force sel -radix hex 2
run 1us

add_force sel -radix hex 3
run 1us

