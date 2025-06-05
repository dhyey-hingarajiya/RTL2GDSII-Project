set PDK_PATH ./../ref

create_lib -ref_lib $PDK_PATH/lib/ndm/saed32rvt_c.ndm FULL_ADDER_8BIT_LIB

read_verilog {./../DC/results/full_adder_8bit.mapped.v} -library FULL_ADDER_8BIT_LIB -design full_adder_8bit_v -top full_adder_8bit

#open the lib and block after saving
#open_lib FULL_ADDER_8BIT_LIB
#open_block FULL_ADD_8Bit

#----------------------------------------------------------------------------------------------#

# FloorPlan settings

# Set floorplan
initialize_floorplan -side_length {20 20} -core_offset 2 -coincident_boundary true

# Assign ports to sides
# Assuming port naming convention helps identify type (e.g., prefix 'in', 'out', 'clk')
set ports [get_ports]

# Separate ports based on function
set input_portsa [get_ports *A*]   ;# or manually specify if names don't follow convention
set input_portsb [get_ports *B*]
set output_ports [get_ports *SUM*]
set Cout [get_ports *out*]
set Cin [get_ports *in*]
set clk_ports [get_ports *Clock*]

# Assign constraints to sides:
# Side 1: inputs
# Side 2: outputs
# Side 3: clocks
set_individual_pin_constraints -ports $input_portsa  -sides 1
set_individual_pin_constraints -ports $input_portsb  -sides 1
set_individual_pin_constraints -ports $Cin  -sides 1
set_individual_pin_constraints -ports $Cout  -sides 2
set_individual_pin_constraints -ports $output_ports -sides 2
set_individual_pin_constraints -ports $clk_ports    -sides 3

# Place pins respecting constraints
place_pins -self

# Place standard cells
create_placement -floorplan -effort high


save_block
save_lib

save_block -as FULL_ADD_8BIT_Floorplan
save_lib

#open_lib <lib name>
##open_block <block name>
#
####################################End of Floorplan Scenarios###############################

