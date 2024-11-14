restart 
add_force din[0] -radix hex {0 0ns} {1 1us} -repeat_every 2us
add_force din[1] -radix hex {0 0ns} {1 2us} -repeat_every 4us
add_force din[2] -radix hex {0 0ns} {1 4us} -repeat_every 8us
add_force din[3] -radix hex {0 0ns} {1 8us} -repeat_every 16us
run 16us

