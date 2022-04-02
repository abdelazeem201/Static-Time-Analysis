# Tell PT we’re defining a ILM
# Read original gate-level netlist 
read_verilog ADDSUB.v
link_design
# Fully constrain design
source ./scripts/constraints/ADDSUB.tcl

# Verify all paths are constrained and meet timing
redirect ADDSUB.rpt check_timing
redirect ADDSUB.rpt  \
      “report_analysis_coverage” -append
# Create an ILM netlist and script file
identify_interface_logic
write_ilm_netlist -include_all_net_pins -verbose \
	ILM_ADDSUB.v
write_ilm_script -instance ILM_I_ADDSUB.pt
write_ilm_script ILM_ADDSUB.pt; # for ILM validation


# Read top-level and ILM gate-level netlist 
read_verilog “TOP.v ILM_ADDSUB.v”; link_design TOP
# Apply top-level constraints and ILM constraints
source TOP.pt
current_instance I_ADDSUB
source ILM_I_ADDSUB.pt
current_instance

# Apply physical data 
read_sdf TOP.sdf
read_sdf -path I_ADDSUB ILM_ADDSUB.sdf
read_parasitics TOP.spef
read_parasitics -increment -path I_ADDSUB \
	ILM_ADDSUB.spef
# Perform top-level analysis!

