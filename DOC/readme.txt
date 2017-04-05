CH03_AXI_DMA_VIDEO 概述：
1、搭建基于DMA的图形显示系统
2、使用已经准备好多OV系列摄像头FPGA部分采样代码
3、测试摄像头采用OV7725分辨率600X480 60HZ ,VGA或者HDMI输出 分辨率600X480 60HZ
4、输入部分使用vid_in 官方自带IP 输出部分采用官方 vid_out IP
5、分析vid_in IP 和 vid_out IP使用，并且修改顶层代码，实现系统设计
6、加入ila IP 查看关键数据信号
7、方案优势：DMA可以获取到数据，可以在CPU内部对数据进行操作，方便通过CPU控制图像输出和图像算法。


