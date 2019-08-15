# Install Instructions

We require Yosys, NextPNR, and the IceStorm tools for the workshop.

There are also some optional tools which can be installed if you desire, instructions are below.

It is highly recommended to use Linux or Mac for the workshop, as there are a few quirks with the toolchain and FTDI drivers on Windows. We have included install instructions and potential workarounds for the issues, however cannot guarantee it will function smoothly. It appears that Windows Subsystem for Linux works without any issues.

## Linux and Mac Installation

Installation instructions for Linux and Mac be found [here](http://www.clifford.at/icestorm/#install).

## Windows Installation

Thanks to Wayne for the Windows instructions. 

To install the toolchain on Windows machine:

- Download the IceStorm Toolchain for Windows (which contains the Synthesis Tools) from: https://github.com/im-tomu/fomu.im/releases/download/td19/yosys-icestorm-nextpnr-win64.0.1.zip
- Unzip the contents to a temporary folder, for example: `C:\temp\yosys-icestorm-nextpnr-win64.0.1`
- Copy the `yosys-icestorm-nextpnr-win64.0.1` to `C:\` but rename it to something simple like `fpga-toolchain`, so the path becomes `C:\fpga-toolchain`. Inside your folder will be two subfolders, `bin` and `share`
- Set an environment variable so that the toolchain commands can be run from a Command Prompt:
  - Search Windows: `env`
  - Select: `Edit the system environment variables`
  - Click: `Environment Variables`
  - Scroll to `Path` in the System variables pane and double click to select.
  - Add a new path at the bottom: `C:\fpga-toolchain\bin`
  - Save all dialogs.
- Open a Command Prompt.
- Test by trying: `iceprog --help`

iceprog will output it's help. You are good to go.

You will also have to change the drivers used by the FTDI USB to Serial chip used to program the iCE40-feather. 

Try [these](https://learn.adafruit.com/adafruit-ft232h-breakout/windows-setup) instructions from Adafruit, noting that the FTDI2232 used on the iCE40-feather has a different PID and two devices instead of one. If you don't have any luck have a read of [this issue](https://github.com/cliffordwolf/icestorm/issues/141) from IceStorm.

It should be noted that these instructions may not solve the issue (Josh can't get his machine working), if you figure out another solution please open a pull request.  

## Optional Software Installation

I would also recommend installing [Icarus Verilog](https://iverilog.fandom.com/wiki/Installation_Guide) and [GTKwave](http://gtkwave.sourceforge.net/) for simulation, however this is not required for the WTFpga workshop.

For text editing I personally use Sublime Text with [SublimeLinter](https://packagecontrol.io/packages/SublimeLinter-contrib-iverilog) to help find my bugs, however I'm sure other options exist for your prefered text editor.
