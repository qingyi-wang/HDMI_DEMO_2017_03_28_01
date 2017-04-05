vlib work
vlib riviera

vlib riviera/blk_mem_gen_v8_2
vlib riviera/xil_defaultlib

vmap blk_mem_gen_v8_2 riviera/blk_mem_gen_v8_2
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work blk_mem_gen_v8_2  -v2k5 \
"../../../../../Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/blk_mem_gen_v8_2/simulation/blk_mem_gen_v8_2.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../../Miz702_VGA/vivado_prj/miz702_vga/miz702_vga.srcs/sources_1/ip/rom_pic/sim/rom_pic.v" \


vlog -work xil_defaultlib "glbl.v"

