To create a workspace that uses these files and then program the ZYBO with the demo over JTAG, do the following:

***WARNING*** This demo draws more power than can be supplied by a typical USB port.
              You must power the ZYBO from an external power supply to ensure that it
              runs properly. Attempting to power the ZYBO from a computer while running
              this demo may cause the computer to crash

1) Open an empty workspace in Xilinx SDK 2013.4.
2) Create a new hardware platform specification. Target the system.xml file in the hw_platform folder
3) Create a new Application project and name it base_demo. Create a new Standalone C Board Support package for 
   it. Select "Empty Application" as the type.
4) Copy the files from the base_demo folder included with this package into the base_demo/src folder of your 
   new Empty Application project. Overwrite lscript.ld.
5) The project will now automatically build, and base_demo.elf will be created.
6) Attach J11 (Labeled PROG UART) of the ZYBO to your computer, a 5V power supply to J15, and set the power source to Wall with JP7. 
   Set JP5 to JTAG. Turn the ZYBO on.
7) Connect to the ZYBO in a terminal program with 115200 Baud, 8 data bits, 1 stop bit, no parity (This project 
   was tested using TeraTerm 4.79)
8) In Xilinx SDK, select Xilinx Tools -> Program FPGA, then click program. Wait for the ZYBO to program (DONE LED
   will illuminate when this has completed)
9) Right click the base_demo project in Xilinx SDK Project Explorer, and select Run As... -> Launch on Hardware (GDB).
   The demo will now be running, and can be controlled from the terminal program.

To build the FSBL (for booting from microSD) do the following:

1) Perform steps 1-5 above
2) Create a new Application project and name it fsbl. Create a new Standalone C Board Support package for 
   it. Select "Zynq FSBL" as the type.
4) Copy fsbl_hooks.c from the fsbl folder included with this package into the fsbl/src folder of your 
   new Zynq FSBL project. Allow the existing file to be overwritten.
5) The project will now automatically build, and fsbl.elf will be created.

