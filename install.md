# Install Instructions

We require Yosys, NextPNR, and the IceStorm tools for the workshop. 

## Linux and Mac

Installation instructions for Linux and Mac be found [here](http://www.clifford.at/icestorm/#install).

Alternate instructions can be found at the bottom of this page. 

## Windows

I have seen reports that the toolchain works fine in Windows Subsystem for Linux. I'd suggest trying that before the below suggestions. 

The below links are untested install instructions for Windows. Feel free to try them and please send a pull request if you get something to work, however the workflow is untested and will be at your own risk. 

[Link 1](http://grbd.github.io/posts/2016/09/12/setting-up-the-icestorm-fpga-tools-for-windows/) Note: you will need to install NextPNR instead of Arachne-pnr as Arachne has been suceeded by NextPNR.

[Link 2](https://fomu.im/td19/) Instructions from a FOMU workshop at Teardown 2019. Download the Synthesis Tools - Windows files link. 

[Link 3](https://github.com/FPGAwars/apio) APIO can be installed via Python but does not support the iCE40-feather FPGA by default. Should be possible to add it, let Josh know if he can be of any assistance. 

### Optional Software Installation

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
