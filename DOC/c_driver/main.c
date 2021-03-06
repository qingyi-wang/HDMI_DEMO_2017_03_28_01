
/*
 *
 * www.osrc.cn
 * www.milinker.com
 * copyright by nan jin mi lian dian zi www.osrc.cn
 * axi dma test
 *
*/


#include "dma_intr.h"
#include "sys_intr.h"
#include "xgpio.h"

volatile int TxDone;
volatile int RxDone;
volatile int Error;

volatile u8 tx_buffer_index;
volatile u8 rx_buffer_index;

u32 *BufferPtr[3];

static XScuGic Intc; //GIC
static  XAxiDma AxiDma;
static XGpio Gpio;

#define AXI_GPIO_DEV_ID	        XPAR_AXI_GPIO_0_DEVICE_ID

int axi_dma_video()
{
	u32 Status;

	xil_printf("\r\n--- Entering main() --- \r\n");
	Status = XGpio_Initialize(&Gpio, AXI_GPIO_DEV_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("GPIO config failed!\r\n");
		return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio, 1, 0);
	XGpio_DiscreteWrite(&Gpio, 1, 0);
	/* Initialize flags before start transfer test  */
	TxDone = 0;
	RxDone = 0;
	Error = 0;
	tx_buffer_index = 0;
	rx_buffer_index = 0;

	Miz702_EMIO_init();//initial emio
	ov7725_init_rgb();// ov7725 i2c cofiguration

	/* Disable all interrupts before setup */

	XGpio_DiscreteWrite(&Gpio, 1, 1);//enable vid in vid out

	Status = XAxiDma_SimpleTransfer(&AxiDma, (u32)BufferPtr[rx_buffer_index],
				MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);//first dma to vid out

	Status = XAxiDma_SimpleTransfer(&AxiDma, (u32)BufferPtr[tx_buffer_index],
				MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);//first vid frame to dma
}

int init_intr_sys(void)
{
	DMA_Intr_Init(&AxiDma,0);//initial interrupt system
	Init_Intr_System(&Intc); // initial DMA interrupt system
	Setup_Intr_Exception(&Intc);
	DMA_Setup_Intr_System(&Intc,&AxiDma,TX_INTR_ID,RX_INTR_ID);//setup dma interrpt system
	DMA_Intr_Enable(&Intc,&AxiDma);
}

int main(void)
{

	u32 Status;
	BufferPtr[0] = (u32 *)BUFFER0_BASE;
	BufferPtr[1] = (u32 *)BUFFER1_BASE;
	BufferPtr[2] = (u32 *)BUFFER2_BASE;

	tx_buffer_index = 0;
	rx_buffer_index = 0;
	TxDone = 0;
	RxDone = 0;
	Error = 0;

	XGpio_Initialize(&Gpio, AXI_GPIO_DEV_ID);
	XGpio_SetDataDirection(&Gpio, 1, 0);
	init_intr_sys();

	Miz702_EMIO_init();
	ov7725_init_rgb();

	XGpio_DiscreteWrite(&Gpio, 1, 1);
	Status = XAxiDma_SimpleTransfer(&AxiDma, (u32)BufferPtr[rx_buffer_index],
				MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

	Status = XAxiDma_SimpleTransfer(&AxiDma, (u32)BufferPtr[tx_buffer_index],
				MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

	while (1) ;
		return XST_SUCCESS;
}


