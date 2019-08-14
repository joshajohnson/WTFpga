# Install Instructions

We require Yosys, NextPNR, and the IceStorm tools for the workshop.

## Linux and Mac Installation

Installation instructions for Linux and Mac be found [here](http://www.clifford.at/icestorm/#install).

Alternate instructions can be found at the bottom of this page.

## Windows Installation

To install the toolchain on your regular Windows machine (the easiest way):

- Download the Icestorm Toolchain for Windows (which contains the Synthesis Tools) from: https://github.com/im-tomu/fomu.im/releases/download/td19/yosys-icestorm-nextpnr-win64.0.1.zip
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

Thanks to Wayne for the Windows instructions. 

## Optional Software Installation

I would also recomend installing [Icarus Verilog](https://iverilog.fandom.com/wiki/Installation_Guide) and [GTKwave](http://gtkwave.sourceforge.net/) for simulation, however this is not required for the WTFpga workshop.

For text editing I personally use Sublime Text with [SublimeLinter](https://packagecontrol.io/packages/SublimeLinter-contrib-iverilog) to help find my bugs, however I'm sure other options exist for your prefered text editor.

### Alternate Linux and Mac install instructions from V3.0 are below.

On Debian or Ubuntu you need the following dependencies:
```
sudo apt install build-essential clang bison \
flex libreadline-dev gawk tcl-dev libffi-dev \
git mercurial graphviz xdot pkg-config \
python python3 libftdi-dev qt5-default \
python3-dev libboost-all-dev git \
libqt5opengl5-dev
```

On Mac OS you will need homebrew and the following dependencies:

```
brew install cmake python boost boost-python3 qt5 \
git libftdi bison gperf
```

Now that you have all the dependencies you can clone the workshop
repository:

```
git clone ​https://github.com/joshajohnson/WTFpga.git
cd WTFpga
```

In the workshop repository you have to run the
summon-fpga-tools.sh script and set your ​PATH so it can find the
tools you just installed:

```
./summon-fpga-tools.sh
export PATH=~/sft/bin:$PATH
```

On Linux to get permissions to open the USB interface create a file
``` /etc/udev/rules.d/53-lattice-ftdi.rules ```and add the following line to it and
re-plug the iCE40-feather:

``` ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6010", MODE="0660", GROUP="plugdev", TAG+="uaccess"```
