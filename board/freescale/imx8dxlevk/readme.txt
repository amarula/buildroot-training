******************************
Freescale i.MX8DXL WEVK board
******************************

This file documents the Buildroot support for the Freescale i.MX8DXL WEVK
board.

Build
=====

First, configure Buildroot for the i.MX8DXL WEVK board:

  make freescale_imx8dxlevk_defconfig

Build all components:

  make

You will find in output/images/ the following files:
  - ahab-container.img
  - bl31.bin
  - boot.vfat
  - Image
  - imx8-boot-sd.bin
  - imx8dxl-evk.dtb
  - mkimg.commit
  - mx8dxl-ddr3-evk-scfw-tcm.bin
  - mx8dxl-evk-scfw-tcm.bin
  - mx8dxl-phantom-mek-scfw-tcm.bin
  - mx8dxl-val-scfw-tcm.bin
  - rootfs.ext2
  - rootfs.ext4
  - rootfs.tar
  - sdcard.img
  - u-boot-atf.bin
  - u-boot.bin
  - u-boot-hash.bin

Create a bootable SD card
=========================

To determine the device associated to the SD card have a look in the
/proc/partitions file:

  cat /proc/partitions

Buildroot prepares a bootable "sdcard.img" image in the output/images/
directory, ready to be dumped on a SD card. Launch the following
command as root:

  dd if=output/images/sdcard.img of=/dev/<your-sd-device>

*** WARNING! This will destroy all the card content. Use with care! ***

For details about the medium image layout, see the definition in
board/freescale/common/imx/genimage.cfg.template_imx8.

Boot the i.MX8DXL WEVK board
============================

To boot your newly created system:
- insert the SD card in the SD slot of the board;
- Configure the boot switch as follows:
SW1:	ON	ON	OFF	OFF
- put a micro USB cable into the Debug USB Port and connect using a terminal
  emulator at 115200 bps, 8n1;
- power on the board.

Enjoy!
