 
set name niosII_tb
set pass c:/users/123/downloads/lab2/lab2/top/db/ip/niosii 
#############Create work library#############
vlib work

#############Compile sources#############
vlog "$pass/*.v"  
vlog "$pass/submodules/*.v"  
vlog "$pass/submodules/*.sv"
vlog "C:/Users/123/Downloads/Lab2/Lab2/Top/niosII/testbench/niosII_tb/simulation/submodules/*.sv" 
vlog "K:/intelFPGA_lite/18.1/modelsim_ase/altera/verilog/src/altera_mf.v" 
vlog C:/Users/123/Downloads/Lab2/Lab2/Top/niosII/testbench/niosII_tb/simulation/niosII_tb.v  
 
vsim -voptargs=+acc work.$name

# Set the window types
view wave
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Data
add wave -noupdate -radix hexadecimal -childformat {{{/niosII_tb/niosii_inst/cpu_data_master_readdata[31]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[30]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[29]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[28]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[27]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[26]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[25]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[24]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[23]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[22]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[21]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[20]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[19]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[18]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[17]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[16]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[15]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[14]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[13]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[12]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[11]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[10]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[9]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[8]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[7]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[6]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[5]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[4]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[3]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[2]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[1]} -radix unsigned} {{/niosII_tb/niosii_inst/cpu_data_master_readdata[0]} -radix unsigned}} -subitemconfig {{/niosII_tb/niosii_inst/cpu_data_master_readdata[31]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[30]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[29]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[28]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[27]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[26]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[25]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[24]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[23]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[22]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[21]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[20]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[19]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[18]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[17]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[16]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[15]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[14]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[13]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[12]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[11]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[10]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[9]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[8]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[7]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[6]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[5]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[4]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[3]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[2]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[1]} {-radix unsigned} {/niosII_tb/niosii_inst/cpu_data_master_readdata[0]} {-radix unsigned}} /niosII_tb/niosii_inst/cpu_data_master_readdata
add wave -noupdate /niosII_tb/niosii_inst/cpu_data_master_waitrequest
add wave -noupdate /niosII_tb/niosii_inst/cpu_data_master_debugaccess
add wave -noupdate -radix hexadecimal /niosII_tb/niosii_inst/cpu_data_master_address
add wave -noupdate -radix hexadecimal /niosII_tb/niosii_inst/cpu_data_master_byteenable
add wave -noupdate /niosII_tb/niosii_inst/cpu_data_master_read
add wave -noupdate /niosII_tb/niosii_inst/cpu_data_master_write
add wave -noupdate -radix hexadecimal /niosII_tb/niosii_inst/cpu_data_master_writedata
add wave -noupdate -divider Instructions
add wave -noupdate -radix hexadecimal /niosII_tb/niosii_inst/cpu_instruction_master_readdata
add wave -noupdate /niosII_tb/niosii_inst/cpu_instruction_master_waitrequest
add wave -noupdate -radix hexadecimal /niosII_tb/niosii_inst/cpu_instruction_master_address
add wave -noupdate /niosII_tb/niosii_inst/cpu_instruction_master_read
add wave -noupdate -divider Semafor
add wave -noupdate /niosII_tb/niosii_inst/sem_export_train
add wave -noupdate /niosII_tb/niosii_inst/sem_export_red
add wave -noupdate /niosII_tb/niosii_inst/sem_export_yellow
add wave -noupdate /niosII_tb/niosii_inst/sem_export_green
add wave -noupdate -divider Avalon
add wave -noupdate /niosII_tb/niosii_inst/mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect
add wave -noupdate -radix hexadecimal /niosII_tb/niosii_inst/mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata
add wave -noupdate /niosII_tb/niosii_inst/mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest
add wave -noupdate /niosII_tb/niosii_inst/mm_interconnect_0_jtag_uart_avalon_jtag_slave_address
add wave -noupdate /niosII_tb/niosii_inst/mm_interconnect_0_jtag_uart_avalon_jtag_slave_read
add wave -noupdate /niosII_tb/niosii_inst/mm_interconnect_0_jtag_uart_avalon_jtag_slave_write
add wave -noupdate -radix hexadecimal /niosII_tb/niosii_inst/mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata
add wave -noupdate -divider Semaphore
add wave -position insertpoint sim:/niosII_tb/niosii_inst/sem/*
add wave -noupdate -divider Test_Bench
add wave -position insertpoint sim:/niosII_tb/*
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 181
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {972 ps}

view structure
view signals
run 600 us