
set_property PACKAGE_PIN Y9 [get_ports {sys_clk}]  
set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk}]

set_property PACKAGE_PIN N15 [get_ports {sys_rst_n}]
set_property IOSTANDARD LVCMOS18 [get_ports {sys_rst_n}] 

set_property PACKAGE_PIN T22 [get_ports {led}]  
set_property IOSTANDARD LVCMOS33 [get_ports {led}] 

set_property PACKAGE_PIN AA19 [get_ports {hsync}] 
set_property IOSTANDARD LVCMOS33 #------------------------------------------------------------------------------------------------

set_property PACKAGE_PIN L14 [get_ports {gpio_0_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_0_tri_io[0]}]

set_property PACKAGE_PIN L15 [get_ports {gpio_0_tri_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_0_tri_io[1]}]

set_property PULLUP true [get_ports {gpio_0_tri_io[1]}]
set_property PULLUP true [get_ports {gpio_0_tri_io[0]}]
#------------------------------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN  F17   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_xclk_o]
set_property  -dict {PACKAGE_PIN  F16   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_pclk_i]
#------------------------------------------------------------------------------------------------
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i_IBUF]
#--------------------------------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN  B19   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_vsync_i]
set_property  -dict {PACKAGE_PIN  A20   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_href_i]
#------------------------------------------------------------------------------------------------
set_property  -dict {PACKAGE_PIN  G18   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[0]]
set_property  -dict {PACKAGE_PIN  G17   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[1]]
set_property  -dict {PACKAGE_PIN  E19   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[2]]
set_property  -dict {PACKAGE_PIN  E18   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[3]]
set_property  -dict {PACKAGE_PIN  D20   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[4]]
set_property  -dict {PACKAGE_PIN  D19   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[5]]
set_property  -dict {PACKAGE_PIN  B20   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[6]]
set_property  -dict {PACKAGE_PIN  C20   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[7]]
#-------------------------------------------------------------------------------------------------
set_property IOSTANDARD TMDS_33 [get_ports HDMI_CLK_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D0_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D1_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D2_P]

set_property PACKAGE_PIN K17 [get_ports HDMI_CLK_P]
set_property PACKAGE_PIN L19 [get_ports HDMI_D0_P]
set_property PACKAGE_PIN M17 [get_ports HDMI_D1_P]
set_property PACKAGE_PIN L16 [get_ports HDMI_D2_P]

set_property IOSTANDARD LVCMOS33 [get_ports HDMI_HPD]
set_property PACKAGE_PIN R19 [get_ports HDMI_HPD]

#set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
#set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
######################################################################################

[get_ports {hsync}] 
set_property PACKAGE_PIN Y19 [get_ports {vsync}] 
set_property IOSTANDARD LVCMOS33 [get_ports {vsync}] 

set_property PACKAGE_PIN Y21 [get_ports {rgb[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[0]}]
set_property PACKAGE_PIN Y20 [get_ports {rgb[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[1]}]
set_property PACKAGE_PIN AB20 [get_ports {rgb[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[2]}]
set_property PACKAGE_PIN AB19 [get_ports {rgb[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[3]}]       

set_property PACKAGE_PIN AB22 [get_ports {rgb[4]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[4]}]
set_property PACKAGE_PIN AA22 [get_ports {rgb[5]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[5]}]
set_property PACKAGE_PIN AB21 [get_ports {rgb[6]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[6]}]
set_property PACKAGE_PIN AA21 [get_ports {rgb[7]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[7]}]

set_property PACKAGE_PIN V20 [get_ports {rgb[8]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[8]}]  
set_property PACKAGE_PIN U20 [get_ports {rgb[9]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[9]}]
set_property PACKAGE_PIN V19 [get_ports {rgb[10]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[10]}]
set_property PACKAGE_PIN V18 [get_ports {rgb[11]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[11]}]


