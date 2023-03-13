### This file is a general .xdc for the Basys3 rev B board
### To use it in a project:
### - uncomment the lines corresponding to used pins
### - rename the used ports (in each lines, after get_ports) according to the top level signal names in the project
 
## Clock signal
#set_property PACKAGE_PIN W5 [get_ports s_axi_aclk]							
#	set_property IOSTANDARD LVCMOS33 [get_ports s_axi_aclk]
#	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports s_axi_aclk]
 
## Switches
#set_property PACKAGE_PIN V17 [get_ports {sw[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
#set_property PACKAGE_PIN V16 [get_ports {sw[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
#set_property PACKAGE_PIN W16 [get_ports {sw[2]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
#set_property PACKAGE_PIN W17 [get_ports {sw[3]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
#set_property PACKAGE_PIN W15 [get_ports {sw[4]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
#set_property PACKAGE_PIN V15 [get_ports {sw[5]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
#set_property PACKAGE_PIN W14 [get_ports {sw[6]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
#set_property PACKAGE_PIN W13 [get_ports {sw[7]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
##set_property PACKAGE_PIN V2 [get_ports {o_data[8]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {o_data[8]}]
##set_property PACKAGE_PIN T3 [get_ports {o_data[9]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {o_data[9]}]
##set_property PACKAGE_PIN T2 [get_ports {o_data[10]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {o_data[10]}]
##set_property PACKAGE_PIN R3 [get_ports {o_data[11]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {o_data[11]}]
##set_property PACKAGE_PIN W2 [get_ports {o_data[12]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {o_data[12]}]
##set_property PACKAGE_PIN U1 [get_ports {o_data[13]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {o_data[13]}]
##set_property PACKAGE_PIN T1 [get_ports {output_axis_tready}]	
##	set_property IOSTANDARD LVCMOS33 [get_ports {output_axis_tready}]
##set_property PACKAGE_PIN R2 [get_ports {input_axis_tvalid}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {input_axis_tvalid}]
 

## #LEDs
#set_property PACKAGE_PIN U16 [get_ports {led[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
#set_property PACKAGE_PIN E19 [get_ports {led[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
#set_property PACKAGE_PIN U19 [get_ports {led[2]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
#set_property PACKAGE_PIN V19 [get_ports {led[3]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
#set_property PACKAGE_PIN W18 [get_ports {led[4]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
#set_property PACKAGE_PIN U15 [get_ports {led[5]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
#set_property PACKAGE_PIN U14 [get_ports {led[6]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
#set_property PACKAGE_PIN V14 [get_ports {led[7]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
##set_property PACKAGE_PIN V13 [get_ports {output_axis_tdata[0]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {output_axis_tdata[0]}]
##set_property PACKAGE_PIN V3 [get_ports {output_axis_tdata[1]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {output_axis_tdata[1]}]
##set_property PACKAGE_PIN W3 [get_ports {output_axis_tdata[2]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {output_axis_tdata[2]}]
##set_property PACKAGE_PIN U3 [get_ports {output_axis_tdata[3]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {output_axis_tdata[3]}]
##set_property PACKAGE_PIN P3 [get_ports {output_axis_tdata[4]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {output_axis_tdata[4]}]
##set_property PACKAGE_PIN N3 [get_ports {output_axis_tdata[5]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {output_axis_tdata[5]}]
##set_property PACKAGE_PIN P1 [get_ports {output_axis_tdata[6]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {output_axis_tdata[6]}]
##set_property PACKAGE_PIN L1 [get_ports {output_axis_tdata[7]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {output_axis_tdata[7]}]
	
	
##7 segment display
##set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
##set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
##set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
##set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
##set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
##set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
##set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

##set_property PACKAGE_PIN V7 [get_ports dp]							
##	set_property IOSTANDARD LVCMOS33 [get_ports dp]

##set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
##set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
##set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
##set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]


###Buttons
#set_property PACKAGE_PIN U18 [get_ports s_axi_aresetn]						
#	set_property IOSTANDARD LVCMOS33 [get_ports s_axi_aresetn]
##set_property PACKAGE_PIN T18 [get_ports uart_tx_valid ]						
##	set_property IOSTANDARD LVCMOS33 [get_ports uart_tx_valid]
##set_property PACKAGE_PIN W19 [get_ports output_axis_tready]						
##	set_property IOSTANDARD LVCMOS33 [get_ports output_axis_tready]
##set_property PACKAGE_PIN T17 [get_ports uart_tx_tready]						
##	set_property IOSTANDARD LVCMOS33 [get_ports uart_tx_tready]
##set_property PACKAGE_PIN U17 [get_ports uart_rx_valid]						
##	set_property IOSTANDARD LVCMOS33 [get_ports uart_rx_valid]
 

 

###Pmod Header JC
####Sch name = JC1
##set_property PACKAGE_PIN K17 [get_ports {rx_busy}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {rx_busy}]
####Sch name = JC2
##set_property PACKAGE_PIN M18 [get_ports {rx_overrun_error}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {rx_overrun_error}]
###Sch name = JC3
##set_property PACKAGE_PIN N17 [get_ports {rx_frame_error}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {rx_frame_error}]
###Sch name = JC4
##set_property PACKAGE_PIN P18 [get_ports {tx_busy}]					
##	set_property IOSTANDARD LVCMOS33 [get_ports {tx_busy}]
###Sch name = JC7
##set_property PACKAGE_PIN L17 [get_ports {JC[4]}]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[4]}]
###Sch name = JC8
##set_property PACKAGE_PIN M19 [get_ports {JC[5]}]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[5]}]
###Sch name = JC9
##set_property PACKAGE_PIN P17 [get_ports {JC[6]}]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[6]}]
###Sch name = JC10
##set_property PACKAGE_PIN R18 [get_ports {JC[7]}]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[7]}]

 
###USB-RS232 Interface
#set_property PACKAGE_PIN B18 [get_ports rxd]						
#	set_property IOSTANDARD LVCMOS33 [get_ports rxd]
#set_property PACKAGE_PIN A18 [get_ports txd]						
#	set_property IOSTANDARD LVCMOS33 [get_ports txd]


###USB HID (PS/2)
##set_property PACKAGE_PIN C17 [get_ports PS2Clk]						
#	#set_property IOSTANDARD LVCMOS33 [get_ports PS2Clk]
#	#set_property PULLUP true [get_ports PS2Clk]
##set_property PACKAGE_PIN B17 [get_ports PS2Data]					
#	#set_property IOSTANDARD LVCMOS33 [get_ports PS2Data]	
#	#set_property PULLUP true [get_ports PS2Data]

 
 ##############################################################################################Arty A7
 ## This file is a general .xdc for the Arty A7-35 Rev. D and Rev. E
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports  s_axi_aclk ]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports s_axi_aclk ];

## Switches
#set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
#set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
#set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]
#set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L14P_T2_SRCC_16 Sch=sw[3]

## RGB LEDs
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 }[get_ports { led[4] }]; #IO_L18N_T2_35 Sch=led0_b
#set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { led[5] }]; #IO_L19N_T3_VREF_35 Sch=led0_g
#set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { led[6] }]; #IO_L19P_T3_35 Sch=led0_r
#set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { led[7] }]; #IO_L20P_T3_35 Sch=led1_b
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L21P_T3_DQS_35 Sch=led1_g
#set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; #IO_L20N_T3_35 Sch=led1_r
#set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { led2_b }]; #IO_L21N_T3_DQS_35 Sch=led2_b
#set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { led2_g }]; #IO_L22N_T3_35 Sch=led2_g
#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { led2_r }]; #IO_L22P_T3_35 Sch=led2_r
#set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { led3_b }]; #IO_L23P_T3_35 Sch=led3_b
#set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { led3_g }]; #IO_L24P_T3_35 Sch=led3_g
#set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { led3_r }]; #IO_L23N_T3_35 Sch=led3_r

## LEDs
#set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L24N_T3_35 Sch=led[4]
#set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_25_35 Sch=led[5]
#set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L24P_T3_A01_D17_14 Sch=led[6]
#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]

## Buttons
set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports s_axi_aresetn ]; #IO_L6N_T0_VREF_16 Sch=btn[0]
#set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { sw[4] }]; #IO_L11P_T1_SRCC_16 Sch=btn[1]
#set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { sw[5] }]; #IO_L11N_T1_SRCC_16 Sch=btn[2]
#set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { sw[6] }]; #IO_L12P_T1_MRCC_16 Sch=btn[3]

## Pmod Header JA 
 

## Pmod Header JC
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { s_axi_aresetn }]; #IO_L20P_T3_A08_D24_14 Sch=jc_p[1]
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { jc[1] }]; #IO_L20N_T3_A07_D23_14 Sch=jc_n[1]
#set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { jc[2] }]; #IO_L21P_T3_DQS_14 Sch=jc_p[2]
#set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { jc[3] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=jc_n[2]
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { jc[4] }]; #IO_L22P_T3_A05_D21_14 Sch=jc_p[3]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { jc[5] }]; #IO_L22N_T3_A04_D20_14 Sch=jc_n[3]
#set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { jc[6] }]; #IO_L23P_T3_A03_D19_14 Sch=jc_p[4]
#set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { jc[7] }]; #IO_L23N_T3_A02_D18_14 Sch=jc_n[4]
 

## USB-UART Interface
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports  txd ]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports rxd ]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in
  
## Power Measurements 
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33     } [get_ports { vsnsvu_n }]; #IO_L7N_T1_AD2N_15 Sch=ad_n[2]
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33     } [get_ports { vsnsvu_p }]; #IO_L7P_T1_AD2P_15 Sch=ad_p[2]
#set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33     } [get_ports { vsns5v0_n }]; #IO_L3N_T0_DQS_AD1N_15 Sch=ad_n[1]
#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33     } [get_ports { vsns5v0_p }]; #IO_L3P_T0_DQS_AD1P_15 Sch=ad_p[1]
#set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33     } [get_ports { isns5v0_n }]; #IO_L5N_T0_AD9N_15 Sch=ad_n[9]
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33     } [get_ports { isns5v0_p }]; #IO_L5P_T0_AD9P_15 Sch=ad_p[9]
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33     } [get_ports { isns0v95_n }]; #IO_L8N_T1_AD10N_15 Sch=ad_n[10]
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33     } [get_ports { isns0v95_p }]; #IO_L8P_T1_AD10P_15 Sch=ad_p[10]