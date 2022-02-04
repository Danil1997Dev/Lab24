# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force D:/intelFPGA/18.1/Lab2Store/Lab24/Top/software_new/Lab2/mem_init/hdl_sim/niosII_mem.dat ./ 
file copy -force D:/intelFPGA/18.1/Lab2Store/Lab24/Top/software_new/Lab2/mem_init/niosII_mem.hex ./ 
