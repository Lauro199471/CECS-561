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
The purpose of the lab exercises is to walk you through a complete hardware and software processor system design. Each lab will build upon the previous lab. The following diagram represents the completed design (<b>Figure 1</b>).
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51589414-c2e40b80-1e9b-11e9-9017-2b9bfb682ed7.PNG">
</p><br><br>
In this lab, you will use IP Integrator to create a processing system based design consisting of the following (<b>Figure 2</b>):<br>

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
{<b>sources</b>} refers to: C:\xup\embedded\2015_2_zynq_sources <br>
{<b>labs</b>} refers to : C:\xup\embedded\2015_2_zynq_labs <br><br>
Board support for the Zybo is not included in Vivado 2015.2 by default. The relevant files “zybo.zip” need to be extracted and saved to: {Vivado installation}\data\boards\board_parts\zynq<br><br>
These files can be downloaded from either from the Digilent, Inc. webpage (http://www.digilentinc.com/) or the XUP webpage (http://www.xilinx.com/support/university/vivado/vivado-workshops/Vivadoembedded-design-flow-zynq.html ) where this material is also hosted. 

<h2>Create a Vivado Project</h2>
<h3>1-1. Launch Vivado and create an empty project targeting the ZedBoard or the Zybo, using the VHDL language.</h3>
1-1-1. Open Vivado by selecting <b>Start > All Programs > Xilinx Design Tools > Vivado 2015.2 > Vivado 2015.2</b><br><br>
1-1-2. Click <b>Create New Project</b> to start the wizard. You will see the <i>Create a New Vivado Project</i> dialog box. Click <b>Next</b>. <br><br>
1-1-3. Click the Browse button of the <i>Project Location</i> field of the <b>New Project</b> form, browse to <b>{labs}</b>, and click <b>Select.</b> <br><br>
1-1-4. Enter <b>lab1</b> in the <i>Project Name</i> field.  Make sure that the <i>Create Project Subdirectory</i> box is checked.  Click <b>Next</b>. You can one from the following two directory structures. 
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51590651-916d3f00-1e9f-11e9-9711-94a67ab75dc2.PNG">
</p><br><br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51590671-a1851e80-1e9f-11e9-8551-b6311aab45a0.PNG">
</p><br>
1-1-5. In the <i>Project Type</i> form select <b>RTL Project</b>, and click <b>Next</b> <br><br>
1-1-6. In the <i>Add Sources</i> form, select <b>VHDL</b> as the <i>Target language</i> and <b>Mixed</b> as the <i>Simulator language</i>, and click <b>Next</b><br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51652814-cfbd3980-1f45-11e9-8445-7aca5f3c09d4.jpg">
</p><br><br>
1-1-7. Click <b>Next</b> <u>two more times</u> to skip <i>Adding Existing IP</i> and <i>Add Constraints</i><br><br>
1-1-8. In the <i>Default Part</i> form, select <i>Boards</i>, and depending on the board you are using, select <i>ZedBoard</i> or <i>Zybo</i> and click <b>Next</b>.<br><br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51653183-33943200-1f47-11e9-8147-efdf1978daa6.jpg">
</p><br><br>
1-1-9. Check the <i>Project Summary</i> and click <b>Finish</b> to create an empty Vivado project.<br><br>

<h2>Creating the System Using the IP Integrator </h2>
<h3>2-1. Use the IP Integrator to create a new Block Design, add the ZYNQ processing system block, and import the provided xml file for the board.</h3><br><br>
2-1-1. In the Flow Navigator, click <b>Create Block Design</b> under IP Integrator<br><br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51653754-b1f1d380-1f49-11e9-891f-634c4d1a6349.jpg" width="50%" height="50%">
</p><br><br>
2-1-2. Enter <b>system</b> for the design name and click <b>OK</b>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51653990-b23e9e80-1f4a-11e9-8e84-d41d33e9e80e.jpg" width="50%" height="50%">
</p><br><br>
2-1-3. IP from the catalog can be added in different ways. Click the <i>Add IP icon</i> in the block diagram side bar, press Ctrl + I, click the <i>Add IP icon</i> in the empty Diagram workspace, or right-click anywhere in the Diagram workspace and select Add IP.<br><br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51654074-0cd7fa80-1f4b-11e9-9e9c-bc1ace71e3fb.jpg" width="50%" height="50%">
</p><br><br>
2-1-4. Once the IP Catalog is open, type “z” into the Search bar, find and double click on <b>ZYNQ7 Processing System</b> entry, or click on the entry and hit the Enter key to add it to the design.
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51654173-7952f980-1f4b-11e9-85dc-d45783ca1363.jpg" width="50%" height="50%">
</p><br><br>
2-1-5. Notice the message at the top of the Diagram window that <i>Designer Assistance</i> available. Click <i>Run Block Automation</i> and select <b>/processing_system7_0</b>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51654245-c9ca5700-1f4b-11e9-9740-92be12cb0e2d.jpg" width="50%" height="50%">
</p><br><br>
2-1-6. In the <i>Run Block Automation</i> window, leave the default settings, including <i>Apply Board Preset</i> checked, and click <b>OK</b> 
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51654313-23cb1c80-1f4c-11e9-9a41-59610f088f44.jpg" >
</p><br><br>
Once Block Automation has been complete, notice that ports have been automatically added for the DDR and Fixed IO, and some additional ports are now visible. The imported configuration for the Zynq related to the Zybo board has been applied which will now be modified. 
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51654380-7e647880-1f4c-11e9-91db-f41f884aacd2.jpg" >
</p><br><br>
2-1-7. Double-click on the added block to open its <i>Customization</i> window. 
Notice now the <i>Customization</i> window shows selected peripherals (with tick marks). This is the default configuration for the board applied by the block automation. 
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51654422-b23f9e00-1f4c-11e9-9f69-eca2a21ce5f2.jpg" >
</p><br><br>
<h3>2-2. Configure the processing block with just UART 1 peripheral enabled.</h3><br><br>

2-2-1. A block diagram of the Zynq should now be open again, showing various configurable blocks of the Processing System. <br>
At this stage, the designer can click on various configurable blocks (highlighted in green) and change the system configuration.<br> 
Only the UART is required for this lab, so all other peripherals will be deselected.<br><br>

2-2-2. Click on one of the peripherals (in green) in the <i>IOP Peripherals</i> block, or select the <i>MIO Configuration</i> tab on the left to open the configuration form<br><br>

2-2-3. Expand I/O peripherals if necessary, and ensure all the following <i>I/O peripherals are deselected</i> except <i>UART 1.</i><br>
i.e. Remove:<br>
<i>ENET 0</i><br>
<i>USB 0</i> <br>
<i>SD 0</i> <br>
Expand <b>GPIO</b> to deselect <i>GPIO MIO</i> <br>
Expand <b>Memory Interfaces</b> to deselect <i>Quad SPI Flash</i> <br>
Expand <b>Application Processor Unit</b> to disable <i>Timer 0</i>. 
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51654683-e36c9e00-1f4d-11e9-9c16-caac478fe6b6.jpg" >
</p><br><br>
2-2-4. Select the <b>PS-PL</b> Configuration tab on the left. <br><br>
2-2-5. Expand <i>AXI Non Secure Enablement > GP Master AXI interface</i> and deselect <b>M AXI GP0</b> interface.<br><br>
2-2-6. Expand <b>General > Enable Clock Resets</b> and deselect the <b>FCLK_RESET0_N</b> option.<br><br>
2-2-7. Select the <b>Clock Configuration</b> tab on the left. Expand the <b>PL Fabric Clocks</b> and deselect the <b>FCLK_CLK0</b> option and click <b>OK.</b><br>
Click on the   (Regenerate Layout) button and see the following block diagram. 
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51654874-c389aa00-1f4e-11e9-8df9-232d7768a0c1.jpg" width="50%" height="50%">
</p><br><br>
2-2-8. Click on the  (Validate Design) button and make sure that there are no errors.<br> 

<h2>Generate Top-Level and Export to SDK</h2>
<h3>3-1. Generate IP Integrator Outputs, the top-level HDL, and start SDK by exporting the hardware</h3><br><br>

3-1-1. In the sources panel, right-click on <i>system.bd</i>, and select <b>Generate Output Products</b> … and click <b>Generate</b> to generate the Implementation, Simulation and Synthesis files for the design (You can also click on <b>Generate Block Design</b> in the Flow Navigator pane to do the same)<br><br>

3-1-2. Right-click again on <i>system.bd</i>, and select <b>Create HDL Wrapper</b> … to generate the top-level VHDL model. Leave the <i>Let Vivado manager wrapper and auto-update</i> option selected, and click <b>OK</b><br>The <i>system_wrapper.vhd</i> file will be created and added to the project.  Double-click on the file to see the content in the Auxiliary pane<br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51656499-3f3b2500-1f56-11e9-8d9b-0e80b00e9044.PNG">
</p><br><br>

3-1-3. Notice that the VHDL file is already <i>Set As the Top module</i> in the design, indicated by the icon <br><br>

3-1-4. Select <b>File > Export > Export hardware</b> and click <b>OK</b>. (<i>Save</i> the project if prompted)<br>
Note:  Since we do not have any hardware in Programmable Logic (PL) there is no bitstream to generate, hence the <i>Include bitstream</i> option is not necessary at this time
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51656640-b8d31300-1f56-11e9-92da-b70327761919.PNG">
</p><br><br>

3-1-5. Select <b>File > Launch SDK</b> leaving the default settings, and click <b>OK</b> 
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51656705-05b6e980-1f57-11e9-8b59-4233f92701a8.PNG">
</p><br>

SDK should now be open. If only the Welcome panel is visible, close or minimize this panel to view the <i>Project Explorer</i> and <i>Preview panel</i>. A Hardware platform project should have been automatically created, and the <i>system_wrapper_hw_platform_0</i> folder should exist in the Project Explorer panel.

<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51656790-4b73b200-1f57-11e9-9519-93984e1ce78d.PNG">
</p><br>

The system.hdf file (Hardware Description File) for the Hardware platform should open in the preview pane. Double click system.hdf to open it if it is not.<br>  
Basic information about the hardware configuration of the project can be found in the .hdf file, along with the Address maps for the PS systems, and driver information. The .hdf file is used in the software environment to determine the peripherals available in the system, and their location in the address map

<h2>Generate Memory TestApp in SDK</h2>
<h3>4-1. Generate memory test application using one of the standard projects template.</h3><br><br>
4-1-1. In SDK, select <b>File > New > Application Project</b><br><br>

4-1-2. Name the project <b>mem_test</b>, and in the <i>Board Support Package</i> section, leave <i>Create New</i> selected and leave the default name <i>mem_test_bsp</i> and click <b>Next</b>. (Note that this application will run on ps7_cortexa9_0 i.e. core 0 of the two processor cores available.)<br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51657180-9215dc00-1f58-11e9-9ad8-3b540366e03a.PNG">
</p><br>

4-1-3. Select <b>Memory Tests</b> from the <i>Available Templates</i> window, and click <b>Finish</b>.<br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51657266-fafd5400-1f58-11e9-8369-aa62ac4a5d65.PNG">
</p><br>
The <b>mem_test</b> project and the board support project <b>mem_test_bsp</b> will be created and will be visible in the Project Explorer window of SDK, and the two projects will be automatically built. You can monitor the progress in the Console panel.<br><br>

4-1-4. Expand folders in the Project Explorer view, and observe that there are three projects – <i>system_wrapper_hw_platform_0, mem_test_bsp, and mem_test.</i>The <i>mem_test</i> project is the application that we will use to verify the functionality of the design.  The hw_platform includes the ps7_init function which initializes the PS as part of the first stage bootloader, and mem_test_bsp is the board support package.
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51657949-3731b400-1f5b-11e9-96a9-1ba7c6061f4e.PNG">
</p><br>

4-1-5. Open the <b>memorytest.c</b> file in the mem_test project (under <i>src</i>), and examine the contents.  This file calls the functions to test the memory<br>

<h2>Test in Hardware</h2>
<h3>Zybo: Make sure that the JP7 is set to select USB power and JP5 is set to JTAG mode. Connect the board with a micro-usb cable and power it ON.<br>
ZedBoard: Make sure that two micro-usb cables are used between the PC and the PROG and the UART connectors of the board and that the board is placed in the JTAG mode (MIO6-MIO2 jumpers are in the Dn position).<br>Establish the serial communication using SDK’s Terminal tab.</h3><br><br>

5-1-1. Zybo: Make sure that the JP7 is set to select USB power, and JP5 is set to JTAG. Make sure that a micro-USB cable is connected to the JTAG PROG connector (next to the power supply connector). Turn ON the power.<br>
ZedBoard: Make sure that two micro-usb cables are used between the PC and the PROG and the UART connectors of the board and that the board is placed in the JTAG mode (MIO6-MIO2 jumpers are in the Dn position). Turn ON the power<br><br>

5-1-2. Select the  tab.  If it is not visible then select <b>Window > Show view > Terminal.</b><br><br>

5-1-3. Click on and if required, select appropriate COM port (depends on your computer), and configure it with the parameters as shown.<br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51658624-7a8d2200-1f5d-11e9-8b2e-69b2fad5c1f0.PNG">
</p><br>  
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51658661-a01a2b80-1f5d-11e9-935f-5bf774e800b2.PNG">
</p><br>  

<h3>5-2. Run the mem_test application and verify the functionality.</h3><br><br>
5-2-1. In SDK, select the <b>mem_test</b> project in Project Explorer, right-click and select Run As > Launch on Hardware (GDB) to download the application, and will execute ps7_init, and then execute mem_test.elf (user application).<br><br>
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51659109-73b2df00-1f5e-11e9-980a-2759f4f19003.PNG">
</p><br>  

5-2-2. You should see the following output on the <i>Terminal</i> tab. 
<p align="center">
 <img src="https://user-images.githubusercontent.com/13907836/51659289-f76ccb80-1f5e-11e9-9ca4-e13dc68f16b4.PNG">
</p><br><br>
5-2-3. Close SDK and Vivado by selecting <b>File > Exit</b> in each program.<br>

<h2>Conclusion</h2>

Vivado and the IP Integrator allow base embedded processor systems and applications to be generated very quickly. After the system has been defined, the hardware can be exported and SDK can be invoked from Vivado. Software development is done in SDK which provides several application templates including memory tests.  You verified the operation of the hardware by downloading a test application, executing on the processor, and observing the output in the serial terminal window.