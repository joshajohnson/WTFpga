WTFpga
======
2 hour crash course in FPGAs and Verilog

Thanks to Joe FitzPatrick, Piotr Esden-Tempski, and Clifford Wolf for developing the resources used in this workshop. 

Purpose
=======
The purpose of this workshop is to jumpstart people new to FPGAs, getting them to the point where they can understand and make minor changes to Verilog designs, and see the results on hardware.

The scope is intentionally limited to make sure it's doable in a couple hours time, so that attendees don't need to make a huge time commitment to get a hands-on understanding of FPGAs and Verilog

What's not covered
==================
To keep it simple, I skip over:
1. Synchronous Logic
2. IP cores
3. Simulation
4. Testbenches

... and probably lots more things you'll want to be sure to learn more about once you get started.

Canberra Hardware Meetup
=======================
If you are looking at this in advance of the Canberra Hardware Meetup event on 9th September 2019, you have come to the right place. 

Two FPGA worshops will be held in the months of September and October, and will utilise the [iCE40-feather](https://github.com/joshajohnson/iCE40-feather) dev board. 

The first will be this WTFpga workshop, a self guided jump into the world of FPGAs. 

The second will go into a bit of FPGA theory, how to simulate your designs, writing a UART driver, and controlling a small LED matrix.

Instructions
============
There are two parts required before the hardware meetup, installing software and aquiring hardware. 

To install the required software, follow the [install instructions](install.md).

To get your hands on hardware, send an email to ```josh at josh a johnson dot com``` or follow the above linked repo and build your own!. 

Due to the expense of the FPGA boards, it will cost $50, and include a seven segment / DIP switch, LED matrix, and PMOD FeatherWings. This is at cost and will be yours to keep forever.

These boards will be built on demand, so please get in contact with Josh ASAP if you want one. I will have spare boards if you don't want to purchase one, however make sure you email me in advance as I won't have many. 

If you want to have a go at building your own board, let me know and we can organise a time. 

**NOT DONE YET!** Once you have the software installed and hardware in hand, follow the Getting to Blinky section in the manual to ensure everything is working in advance of the workshop. 

This workshop is a work in progress so any questions, comments, or pull requests are more than welcome for anything big or small. 

Changes
=======
Version 1.0 targeted a generic Xilinx XC3S200A FPGA board using Xilinx ISE tools. Posted 2014

Version 2.0 is significantly updated, targeting a Digilent Basys 3 board and Xilinx Vivado. Posted 2018

Version 3.0 targetting the iCEBreaker dev board and using fully open source sythesis flow. Posted late 2018

Version 4.0 ported V3.0 over to the iCE40-feather, and changed the project used for the workshop. Posted mid 2019.

Derivative use
==============
Please use and distribute this material! If you need a more permissive license let me know!
