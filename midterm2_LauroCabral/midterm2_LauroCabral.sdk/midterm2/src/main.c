#include "xparameters.h"
#include "xgpio.h"
#include "my_led_ip.h"

//====================================================

int main (void)
{

   XGpio dip, push;
   int i, psb_check, dip_check;

   xil_printf("-- Start of the Program March 25,2019--\r\n");

   XGpio_Initialize(&dip, XPAR_SWITCHES_DEVICE_ID); // Modify this
   XGpio_SetDataDirection(&dip, 1, 0xffffffff);

   XGpio_Initialize(&push, XPAR_BUTTONS_DEVICE_ID); // Modify this
   XGpio_SetDataDirection(&push, 1, 0xffffffff);


   while (1)
   {
	  psb_check = XGpio_DiscreteRead(&push, 1);
	  xil_printf("Push Buttons Status %x\r\n", psb_check);
	  dip_check = XGpio_DiscreteRead(&dip, 1);
	  xil_printf("DIP Switch Status %x\r\n", dip_check);

	  if(psb_check > 0){ // push is pressed

		  MY_LED_IP_mWriteReg(XPAR_MY_LED_IP_0_S_AXI_BASEADDR, MY_LED_IP_S_AXI_SLV_REG1_OFFSET, psb_check|psb_check);
		  for (i=0; i<9999999; i++);
		  MY_LED_IP_mWriteReg(XPAR_MY_LED_IP_0_S_AXI_BASEADDR, MY_LED_IP_S_AXI_SLV_REG1_OFFSET, psb_check ^= psb_check |psb_check);
		  for (i=0; i<9999999; i++);

	  }
	  else{
		  MY_LED_IP_mWriteReg(XPAR_MY_LED_IP_0_S_AXI_BASEADDR, MY_LED_IP_S_AXI_SLV_REG1_OFFSET, 0);
	  }

	  // output dip switches value on LED_ip device
	  MY_LED_IP_mWriteReg(XPAR_MY_LED_IP_0_S_AXI_BASEADDR, MY_LED_IP_S_AXI_SLV_REG1_OFFSET, dip_check|psb_check);

   }
}
