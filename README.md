Various NXP LPC devices ship with a ROM USB bootloader which simulates a FAT formatted mass storage device. The bootloader seems to make some assumptions 
about the way files should be written to this filesystem that don't hold on GNU/Linux systems.

This script uses dd to write the firmware file at the offset expected by the bootloader. It's a total hack and not thoroughly tested. Make sure you don't 
accidentally overwrite any system block devices.

Syntax: copy.sh [SOURCE IMAGE] [DESTIONATION BLOCK DEVICE]
