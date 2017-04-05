set_property SRC_FILE_INFO {cfile:E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/constrs_1/new/vga.xdc rfile:../../../miz702_vga.srcs/constrs_1/new/vga.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y9 [get_ports {sys_clk}]
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N15 [get_ports {sys_rst_n}]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T22 [get_ports {led}]
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA19 [get_ports {hsync}]
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 #------------------------------------------------------------------------------------------------
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L14 [get_ports {gpio_0_tri_io[0]}]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_0_tri_io[0]}]
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L15 [get_ports {gpio_0_tri_io[1]}]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_0_tri_io[1]}]
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property PULLUP true [get_ports {gpio_0_tri_io[1]}]
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property PULLUP true [get_ports {gpio_0_tri_io[0]}]
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  F17   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_xclk_o]
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  F16   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_pclk_i]
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i_IBUF]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  B19   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_vsync_i]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  A20   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_href_i]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  G18   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[0]]
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  G17   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[1]]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  E19   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[2]]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  E18   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[3]]
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  D20   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[4]]
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  D19   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[5]]
set_property src_info {type:XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  B20   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[6]]
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property  -dict {PACKAGE_PIN  C20   IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_data_i[7]]
set_property src_info {type:XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_CLK_P]
set_property src_info {type:XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D0_P]
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D1_P]
set_property src_info {type:XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D2_P]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K17 [get_ports HDMI_CLK_P]
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L19 [get_ports HDMI_D0_P]
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M17 [get_ports HDMI_D1_P]
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L16 [get_ports HDMI_D2_P]
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports HDMI_HPD]
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R19 [get_ports HDMI_HPD]
set_property src_info {type:XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
[get_ports {hsync}]
set_property src_info {type:XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y19 [get_ports {vsync}]
set_property src_info {type:XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y21 [get_ports {rgb[0]}]
set_property src_info {type:XDC file:1 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y20 [get_ports {rgb[1]}]
set_property src_info {type:XDC file:1 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB20 [get_ports {rgb[2]}]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB19 [get_ports {rgb[3]}]
set_property src_info {type:XDC file:1 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB22 [get_ports {rgb[4]}]
set_property src_info {type:XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA22 [get_ports {rgb[5]}]
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB21 [get_ports {rgb[6]}]
set_property src_info {type:XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA21 [get_ports {rgb[7]}]
set_property src_info {type:XDC file:1 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V20 [get_ports {rgb[8]}]
set_property src_info {type:XDC file:1 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U20 [get_ports {rgb[9]}]
set_property src_info {type:XDC file:1 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V19 [get_ports {rgb[10]}]
set_property src_info {type:XDC file:1 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V18 [get_ports {rgb[11]}]
