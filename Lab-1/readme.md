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
The purpose of the lab exercises is to walk you through a complete hardware and software processor system design. Each lab will build upon the previous lab. The following diagram represents the completed design (Figure 1).
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51589414-c2e40b80-1e9b-11e9-9017-2b9bfb682ed7.PNG">
</p><br><br>
In this lab, you will use IP Integrator to create a processing system based design consisting of the following (Figure 2):<br>

* ARM Cortex A9 core (PS) 
* UART for serial communication 
* DDR3 controller for external DDR3_SDRAM memory 

<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51589335-82848d80-1e9b-11e9-9e6c-e366ead00be8.PNG">
</p><br><br>

<h2>General Flow for this Lab</h2><br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51589562-46056180-1e9c-11e9-9ebc-47da8a1af069.PNG">
</p><br><br>
In the instructions below;<br> 
{sources} refers to: C:\xup\embedded\2015_2_zynq_sources <br>
{labs} refers to : C:\xup\embedded\2015_2_zynq_labs <br><br>
Board support for the Zybo is not included in Vivado 2015.2 by default. The relevant files “zybo.zip” need to be extracted and saved to: {Vivado installation}\data\boards\board_parts\zynq<br><br>
These files can be downloaded from either from the Digilent, Inc. webpage (http://www.digilentinc.com/) or the XUP webpage (http://www.xilinx.com/support/university/vivado/vivado-workshops/Vivadoembedded-design-flow-zynq.html ) where this material is also hosted. 

<h2>Create a Vivado Project</h2>
<h3>1-1. Launch Vivado and create an empty project targeting the ZedBoard or the Zybo, using the VHDL language.</h3>
1-1-1. Open Vivado by selecting Start > All Programs > Xilinx Design Tools > Vivado 2015.2 > Vivado 2015.2<br><br>
1-1-2. Click Create New Project to start the wizard. You will see the Create a New Vivado Project dialog box. Click Next. <br><br>
1-1-3. Click the Browse button of the Project Location field of the New Project form, browse to {labs}, and click Select. <br><br>