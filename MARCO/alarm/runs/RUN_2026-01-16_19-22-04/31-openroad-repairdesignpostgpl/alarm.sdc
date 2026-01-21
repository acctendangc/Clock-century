###############################################################################
# Created by write_sdc
###############################################################################
current_design alarm
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 100000000.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_hour[0]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_hour[1]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_hour[2]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_hour[3]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_hour[4]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_i}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_min[0]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_min[1]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_min[2]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_min[3]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_min[4]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_min[5]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {hour[0]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {hour[1]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {hour[2]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {hour[3]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {hour[4]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {minute[0]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {minute[1]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {minute[2]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {minute[3]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {minute[4]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {minute[5]}]
set_input_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst_n}]
set_output_delay 20000000.0000 -clock [get_clocks {clk}] -add_delay [get_ports {alarm_o}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {alarm_o}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_i}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst_n}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_hour[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_hour[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_hour[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_hour[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_hour[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_min[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_min[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_min[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_min[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_min[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {alarm_min[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {hour[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {hour[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {hour[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {hour[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {hour[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {minute[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {minute[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {minute[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {minute[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {minute[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {minute[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 10.0000 [current_design]
