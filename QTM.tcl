# Tell PT we’re defining a QTM
create_qtm_model ADDSUB

# Define IO Ports
create_qtm_port {Clk} -type clock
create_qtm_port {A[3:0] B[3:0] add_subN} -type input
create_qtm_port {Y[3:0] carry_borrow} -type output

# Define input port setup time
set_qtm_global_parameter -param setup -value 0.0
create_qtm_constraint_arc -setup -from Clk \
						  -to {A[3:0] B[3:0] add_subN} -value 2.0 -edge rise

# Define input port capacitive loading
set_qtm_port_load {Clk A[3:0] B[3:0] add_subN} \
						-value 0.05

# Define output port clock-to-output timing
set_qtm_global_parameter -param clk_to_output \ 
						 -value 0.0
create_qtm_delay_arc -from Clk \
					 -to {Y[3:0] carry_borrow} -value 0.5 -edge rise

# Define output port drive strengths
set_qtm_port_drive {Y[3:0] carry_borrow} -value 0.05

# Before saving, report model & check results
redirect qtm.rpt report_qtm_model

# Save timing model
save_qtm_model
