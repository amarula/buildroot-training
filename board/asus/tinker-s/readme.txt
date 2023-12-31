Tinker S RK3288
=============

Tinker Board is a Single Board Computer (SBC) in an ultra-small form
factor that offers class-leading performance while leveraging outstanding
mechanical compatibility. The "S" variant of the Tinker Board has eMMC

Tinker link:
https://www.asus.com/br/motherboards-components/single-board-computer/all-series/tinker-board-s/

Wiki link:
https://openedev.amarulasolutions.com/display/ODWIKI/Tinker+RK3288

How to build it
===============

  $ make asus_tinker-s_rk3288_defconfig

Then you can edit the build options using

  $ make menuconfig

Compile all and build rootfs image:

  $ make

Prepare your SDCard
===================

Buildroot generates a ready-to-use SD card image that you can flash directly to
the card. The image will be in output/images/sdcard.img.
You can write this image directly to an SD card device (i.e. /dev/xxx):

  $ sudo dd if=output/images/sdcard.img of=/dev/xxx
  $ sudo sync

Finally, you can insert the SD card to the Tinker RK3288 board and boot it.

NOTE:
USB power supply requires more than the standard 500mA USB current, so
this board must be supplied from a capable port or from an external
AC/DC adapter. Otherwise it will hang forever while loading the kernel
image.
