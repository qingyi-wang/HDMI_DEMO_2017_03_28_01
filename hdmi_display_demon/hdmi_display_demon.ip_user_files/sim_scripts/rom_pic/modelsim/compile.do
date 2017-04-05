vlib work
vlib msim

vlib msim/blk_mem_gen_v8_2
vlib msim/xil_defaultlib

vmap blk_mem_gen_v8_2 msim/blk_mem_gen_v8_2
vmap xil_defaultlib msim/xil_defaultlib

vlog -work blk_mem_gen_v8_2 -64 -incr \
"../../../../../Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/blk_mem_gen_v8_2/simulation/blk_mem_gen_v8_2.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../../Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/sim/rom_pic.v" \


vlog -work xil_defaultlib "glbl.v"

