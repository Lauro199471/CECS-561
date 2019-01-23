<h1 align="center">Use Vivado to build an Embedded System </h1><br>	
<h2>Introduction</h2><br>
This lab guides you through the process of using Vivado to create a simple ARM Cortex-A9 based processor design targeting the ZedBoard or Zybo board. Where the instructions refer to both boards, choose the board you are using. You will use Vivado to create the hardware system and SDK (Software Development Kit) to create an example application to verify the hardware functionality.<br><br>
<h2>Objective</h2><br>
After completing this lab, you will be able to:<br>

* Create a Vivado project for a Zynq system
* Use the IP Integrator to create a hardware system 
* Use SDK to create a standard memory test project
* Run the test application on the board 
<br><br>
<h2>Procedure</h2><br>
This lab is separated into steps that consist of general overview statements that provide information on the detailed instructions that follow. Follow these detailed instructions to progress through the lab. <br>
This lab comprises 5 primary steps: You will create a top-level project using Vivado, create the processor system using the Vivado IP Integrator, generate the top-level HDL and export the design to SDK, create a Memory Test application in SDK, and finally, test in hardware.
<br><br>
<h2>Design Description </h2><br>
The purpose of the lab exercises is to walk you through a complete hardware and software processor system design. Each lab will build upon the previous lab. The following diagram represents the completed design (**Figure 1**).
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51588935-54eb1480-1e9a-11e9-81bf-fdeb37fb93af.PNG">
</p>