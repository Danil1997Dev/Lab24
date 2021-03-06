# TCL File Generated by Component Editor 18.1
# Tue Feb 01 22:56:45 IRKT 2022
# DO NOT MODIFY


# 
# semafor "semafor" v1.0
#  2022.02.01.22:56:45
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module semafor
# 
set_module_property DESCRIPTION ""
set_module_property NAME semafor
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "User Logic"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME semafor
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL dec
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file dec.sv SYSTEM_VERILOG PATH ../HDL/dec.sv TOP_LEVEL_FILE
add_fileset_file periodram.v VERILOG PATH ../HDL/IP/periodram.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL dec
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file dec.sv SYSTEM_VERILOG PATH ../HDL/dec.sv
add_fileset_file periodram.v VERILOG PATH ../HDL/IP/periodram.v


# 
# parameters
# 
add_parameter m INTEGER 8
set_parameter_property m DEFAULT_VALUE 8
set_parameter_property m DISPLAY_NAME m
set_parameter_property m TYPE INTEGER
set_parameter_property m UNITS None
set_parameter_property m ALLOWED_RANGES -2147483648:2147483647
set_parameter_property m HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink clrn reset_n Input 1


# 
# connection point ctl_slave
# 
add_interface ctl_slave avalon end
set_interface_property ctl_slave addressUnits WORDS
set_interface_property ctl_slave associatedClock clock
set_interface_property ctl_slave associatedReset reset_sink
set_interface_property ctl_slave bitsPerSymbol 8
set_interface_property ctl_slave burstOnBurstBoundariesOnly false
set_interface_property ctl_slave burstcountUnits WORDS
set_interface_property ctl_slave explicitAddressSpan 0
set_interface_property ctl_slave holdTime 0
set_interface_property ctl_slave linewrapBursts false
set_interface_property ctl_slave maximumPendingReadTransactions 0
set_interface_property ctl_slave maximumPendingWriteTransactions 0
set_interface_property ctl_slave readLatency 0
set_interface_property ctl_slave readWaitStates 0
set_interface_property ctl_slave readWaitTime 0
set_interface_property ctl_slave setupTime 0
set_interface_property ctl_slave timingUnits Cycles
set_interface_property ctl_slave writeWaitTime 0
set_interface_property ctl_slave ENABLED true
set_interface_property ctl_slave EXPORT_OF ""
set_interface_property ctl_slave PORT_NAME_MAP ""
set_interface_property ctl_slave CMSIS_SVD_VARIABLES ""
set_interface_property ctl_slave SVD_ADDRESS_GROUP ""

add_interface_port ctl_slave ctl_wr write Input 1
add_interface_port ctl_slave ctl_rd read Input 1
add_interface_port ctl_slave ctl_addr address Input 2
add_interface_port ctl_slave ctl_wrdata writedata Input 32
add_interface_port ctl_slave ctl_rddata readdata Output 32
set_interface_assignment ctl_slave embeddedsw.configuration.isFlash 0
set_interface_assignment ctl_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment ctl_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment ctl_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point ram_slave
# 
add_interface ram_slave avalon end
set_interface_property ram_slave addressUnits WORDS
set_interface_property ram_slave associatedClock clock
set_interface_property ram_slave associatedReset reset_sink
set_interface_property ram_slave bitsPerSymbol 8
set_interface_property ram_slave burstOnBurstBoundariesOnly false
set_interface_property ram_slave burstcountUnits WORDS
set_interface_property ram_slave explicitAddressSpan 0
set_interface_property ram_slave holdTime 0
set_interface_property ram_slave linewrapBursts false
set_interface_property ram_slave maximumPendingReadTransactions 0
set_interface_property ram_slave maximumPendingWriteTransactions 0
set_interface_property ram_slave readLatency 0
set_interface_property ram_slave readWaitTime 1
set_interface_property ram_slave setupTime 0
set_interface_property ram_slave timingUnits Cycles
set_interface_property ram_slave writeWaitTime 0
set_interface_property ram_slave ENABLED true
set_interface_property ram_slave EXPORT_OF ""
set_interface_property ram_slave PORT_NAME_MAP ""
set_interface_property ram_slave CMSIS_SVD_VARIABLES ""
set_interface_property ram_slave SVD_ADDRESS_GROUP ""

add_interface_port ram_slave ram_wr write Input 1
add_interface_port ram_slave ram_addr address Input 2
add_interface_port ram_slave ram_wrdata writedata Input 32
set_interface_assignment ram_slave embeddedsw.configuration.isFlash 0
set_interface_assignment ram_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment ram_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment ram_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point sem
# 
add_interface sem conduit end
set_interface_property sem associatedClock ""
set_interface_property sem associatedReset ""
set_interface_property sem ENABLED true
set_interface_property sem EXPORT_OF ""
set_interface_property sem PORT_NAME_MAP ""
set_interface_property sem CMSIS_SVD_VARIABLES ""
set_interface_property sem SVD_ADDRESS_GROUP ""

add_interface_port sem train train Input 1
add_interface_port sem red red Output 1
add_interface_port sem yellow yellow Output 1
add_interface_port sem green green Output 1

