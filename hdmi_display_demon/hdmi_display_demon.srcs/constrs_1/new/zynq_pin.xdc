## 时钟输入
set_property IOSTANDARD LVCMOS33 [get_ports clk_100M]

## HDMI 输出
set_property IOSTANDARD TMDS_33 [get_ports HDMI_CLK_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D0_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D1_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D2_P]
set_property PACKAGE_PIN H16 [get_ports clk_100M]
set_property PACKAGE_PIN K17 [get_ports HDMI_CLK_P]
set_property PACKAGE_PIN L19 [get_ports HDMI_D0_P]
set_property PACKAGE_PIN M17 [get_ports HDMI_D1_P]
set_property PACKAGE_PIN L16 [get_ports HDMI_D2_P]

## 复位按键
##set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
##set_property PACKAGE_PIN M14 [get_ports rst_n]

## led 显示
##set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
##set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
set_property PACKAGE_PIN N15 [get_ports {LED[0]}]
set_property PACKAGE_PIN N16 [get_ports {LED[1]}]