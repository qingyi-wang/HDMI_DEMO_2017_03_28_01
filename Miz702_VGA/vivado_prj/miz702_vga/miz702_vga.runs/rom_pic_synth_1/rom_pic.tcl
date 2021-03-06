# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.cache/wt [current_project]
set_property parent.project_path F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_ip F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic.xci
set_property used_in_implementation false [get_files -all f:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic.dcp]
set_property is_locked true [get_files F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic.xci]

synth_design -top rom_pic -part xc7z020clg484-1 -mode out_of_context
rename_ref -prefix_all rom_pic_
write_checkpoint -noxdef rom_pic.dcp
catch { report_utilization -file rom_pic_utilization_synth.rpt -pb rom_pic_utilization_synth.pb }
if { [catch {
  file copy -force F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.runs/rom_pic_synth_1/rom_pic.dcp F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim F:/Miz702/Miz702_code/Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/rom_pic_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
