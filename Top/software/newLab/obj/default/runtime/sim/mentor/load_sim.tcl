# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force C:/Users/123/Downloads/Lab2/Lab2/Top/software/newLab/mem_init/hdl_sim/niosII_mem.dat ./ 
file copy -force C:/Users/123/Downloads/Lab2/Lab2/Top/software/newLab/mem_init/niosII_mem.hex ./ 
