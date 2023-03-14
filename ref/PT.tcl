# PrimeTime setup script

# Set the design librarie(s)

set search_path ". ../Libs ./ref"
set link_path "* core_slow.db"

#### DO NOT CHANGE THE FOLLOWING STATEMENTS  #####

# Show the new settings in the shell
if {$synopsys_program_name == "pt_shell"} {
    echo "./.synopsys_pt.setup settings:"
    printvar search_path
    printvar link_path
    echo ""
}


set sh_enable_page_mode true; # Default is fasle; Synonym is enable_page_mode
set sh_source_uses_search_path true; # default is true
history keep 100

alias h history
alias clean "remove_design -all; remove_lib -all"
##################################################



# read in verilog netlist
read_verilog RISC_CORE.v

# set RISC_CORE to be the current design
current_design RISC_CORE

# "Link in" all lower level designs and libraries
link_design RISC_CORE

# Check for Constraints problem
check_timing -verbose

# Look for any violated Constraints
report_constraint -all_violators
redirect Reports/violations.rpt {report_constraint -all_violators}

# Timing Path for Setup Time Check
report_timing
redirect Reports/setup.rpt {report_timing}

# Timing Path for Hold Time Check
report_timing -delay min
redirect Reports/hold.rpt {report_timing -delay min}
 
# Timing Path to show Net and Cell Delays
report_timing -input_pins
redirect Reports/netcell.rpt {report_timing -input_pins}

# Obtaining Cell and Net delays
# report_delay_calculation -from ....... -to ......
# report_delay_calculation -from ....... -to ......
