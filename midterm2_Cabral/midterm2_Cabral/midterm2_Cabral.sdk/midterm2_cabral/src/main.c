#include "xparameters.h"
#include "xgpio.h"
#include "user_gpio_ip.h"

//====================================================

int main (void)
{

   XGpio dip;
   int i, dip_value;

   xil_printf("-- Start of the Program March 26,2019--\r\n");

   XGpio_Initialize(&dip, XPAR_SWITCHES_DEVICE_ID); // Modify this
   XGpio_SetDataDirection(&dip, 1, 0xffffffff);

   while (1)
   {
	  dip_value = XGpio_DiscreteRead(&dip, 1);
	  xil_printf("DIP Switch Status %x\r\n", dip_value);

	  // output dip switches value on LED_ip device
	  USER_GPIO_IP_mWriteReg(XPAR_USER_GPIO_IP_0_S_AXI_BASEADDR,USER_GPIO_IP_S_AXI_SLV_REG3_OFFSET,dip_value);

   }
}
