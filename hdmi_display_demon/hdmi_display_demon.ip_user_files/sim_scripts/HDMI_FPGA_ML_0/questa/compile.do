vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vcom -work xil_defaultlib -64 \
"../../../../hdmi_display_demon.srcs/sources_1/ip/HDMI_FPGA_ML_0/src/TMDSEncoder.vhd" \
"../../../../hdmi_display_demon.srcs/sources_1/ip/HDMI_FPGA_ML_0/src/SerializerN_1.vhd" \
"../../../../hdmi_display_demon.srcs/sources_1/ip/HDMI_FPGA_ML_0/src/DVITransmitter.vhd" \
"../../../../hdmi_display_demon.srcs/sources_1/ip/HDMI_FPGA_ML_0/src/hdmi_tx.vhd" \
"../../../../hdmi_display_demon.srcs/sources_1/ip/HDMI_FPGA_ML_0/sim/HDMI_FPGA_ML_0.vhd" \


