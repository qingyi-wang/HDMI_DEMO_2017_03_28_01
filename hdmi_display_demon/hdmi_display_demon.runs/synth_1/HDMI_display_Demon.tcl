# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.cache/wt [current_project]
set_property parent.project_path E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  e:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/HDMI_FPGA_ML
  e:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/Miz_ip_lib/HDMI_FPGA_ML
  e:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic
  e:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/S01_CH10_VGA_Display_Demon/VGA_Display_Demon/VGA_Display_Demon.srcs/sources_1/ip/clk_wiz_0
} [current_project]
set_property ip_cache_permissions disable [current_project]
add_files E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/paris.coe
add_files E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/test/test.coe
add_files -quiet e:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
set_property used_in_implementation false [get_files e:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
add_files -quiet e:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.srcs/sources_1/ip/HDMI_FPGA_ML_0/HDMI_FPGA_ML_0.dcp
set_property used_in_implementation false [get_files e:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.srcs/sources_1/ip/HDMI_FPGA_ML_0/HDMI_FPGA_ML_0.dcp]
read_verilog -library xil_defaultlib {
  E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.srcs/sources_1/new/hdmi_data_gen.v
  E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.srcs/sources_1/new/HDMI_display_Demon.v
}
read_ip -quiet E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic.xci
set_property used_in_implementation false [get_files -all e:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic_ooc.xdc]
set_property is_locked true [get_files E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.srcs/constrs_1/new/zynq_pin.xdc
set_property used_in_implementation false [get_files E:/FPGA/vivado/HDMI_DEMO_2017_03_28_01/hdmi_display_demon/hdmi_display_demon.srcs/constrs_1/new/zynq_pin.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top HDMI_display_Demon -part xc7z010clg400-1


write_checkpoint -force -noxdef HDMI_display_Demon.dcp

catch { report_utilization -file HDMI_display_Demon_utilization_synth.rpt -pb HDMI_display_Demon_utilization_synth.pb }
