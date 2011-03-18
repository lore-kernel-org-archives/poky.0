Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04C954C80ACB
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:34 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Mar 2011 09:59:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="721663833"
Received: from unknown (HELO helios) ([10.255.12.183])
	by orsmga001.jf.intel.com with SMTP; 18 Mar 2011 09:59:32 -0700
Received: by helios (sSMTP sendmail emulation); Fri, 18 Mar 2011 16:59:34 +0000
Message-Id: <999081b58b3cd1ae38f2082e3d5e68f57bec1308.1300467183.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1300467183.git.paul.eggleton@linux.intel.com>
References: <cover.1300467183.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 18 Mar 2011 16:42:52 +0000
Date: Fri, 18 Mar 2011 16:59:34 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] README.hardware: update for 1.0 release
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Mar 2011 16:59:35 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

* Update to refer to Yocto documentation
* Change title as suggested by Scott Rifenbark
* List all qemu* machine targets
* Remove machines no longer in core layer
* Add instructions for routerstationpro (originally based on an email from
  Mark Hatle)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware |  575 ++++++++++++++++--------------------------------------
 1 files changed, 171 insertions(+), 404 deletions(-)

diff --git a/README.hardware b/README.hardware
index c0df01b..c68ad43 100644
--- a/README.hardware
+++ b/README.hardware
@@ -1,429 +1,66 @@
-                     Poky Hardware Reference Guide
-                     =============================
+                          Poky Hardware README
+                          ====================
 
 This file gives details about using Poky with different hardware reference
-boards and consumer devices. A full list of target machines can be found by 
-looking in the meta/conf/machine/ directory. If in doubt about using Poky with 
-your hardware, consult the documentation for your board/device. To discuss 
-support for further hardware reference boards/devices please contact OpenedHand.
+boards and consumer devices. A full list of target machines can be found by
+looking in the meta/conf/machine/ directory. If in doubt about using Poky with
+your hardware, consult the documentation for your board/device.
 
-QEMU Emulation Images (qemuarm and qemux86)
-===========================================
+Support for additional devices is normally added by creating BSP layers - for
+more information please see the Yocto Board Support Package (BSP) Developer's
+Guide - documentation source is in documentation/bspguide or download the PDF
+from:
+
+   http://yoctoproject.org/community/documentation
+
+Support for machines other than QEMU may be moved out to separate BSP layers in
+future versions.
+
+
+QEMU Emulation Targets
+======================
 
 To simplify development Poky supports building images to work with the QEMU
-emulator in system emulation mode. Two architectures are currently supported,
-ARM (via qemuarm) and x86 (via qemux86). Use of the QEMU images is covered
-in the Poky Handbook.
+emulator in system emulation mode. Several architectures are currently
+supported:
+
+  * ARM (qemuarm)
+  * x86 (qemux86)
+  * x86-64 (qemux86-64)
+  * PowerPC (qemuppc)
+  * MIPS (qemumips)
+
+Use of the QEMU images is covered in the Poky Reference Manual. The Poky
+MACHINE setting corresponding to the target is given in brackets.
+
 
 Hardware Reference Boards
 =========================
 
-The following boards are supported by Poky:
+The following boards are supported by Poky's core layer:
 
-  * Compulab CM-X270 (cm-x270)
-  * Compulab EM-X270 (em-x270)
-  * FreeScale iMX31ADS (mx31ads)
-  * Marvell PXA3xx Zylonite (zylonite)
-  * Logic iMX31 Lite Kit (mx31litekit)
-  * Phytec phyCORE-iMX31 (mx31phy)
   * Texas Instruments Beagleboard (beagleboard)
+  * Freescale MPC8315E-RDB (mpc8315e-rdb)
+  * Ubiquiti Networks RouterStation Pro (routerstationpro)
 
-For more information see board's section below. The Poky MACHINE setting
+For more information see the board's section below. The Poky MACHINE setting
 corresponding to the board is given in brackets.
 
+
 Consumer Devices
 ================
 
-The following consumer devices are supported by Poky:
+The following consumer devices are supported by Poky's core layer:
 
-  * FIC Neo1973 GTA01 smartphone (fic-gta01)
-  * HTC Universal (htcuniversal)
-  * Nokia 770/N800/N810 Internet Tablets (nokia770 and nokia800)
-  * Sharp Zaurus SL-C7x0 series (c7x0)
-  * Sharp Zaurus SL-C1000 (akita)
-  * Sharp Zaurus SL-C3x00 series (spitz)
+  * Intel Atom based PCs and devices (atom-pc)
 
-For more information see board's section below. The Poky MACHINE setting
-corresponding to the board is given in brackets.
+For more information see the device's section below. The Poky MACHINE setting
+corresponding to the device is given in brackets.
 
 
-                          Hardware Reference Boards
-                          =========================
 
-Compulab CM-X270 (cm-x270)
-==========================
-
-The bootloader on this board doesn't support writing jffs2 images directly to 
-NAND and normally uses a proprietary kernel flash driver. To allow the use of
-jffs2 images, a two stage updating procedure is needed. Firstly, an initramfs
-is booted which contains mtd utilities and this is then used to write the main
-filesystem. 
-
-It is assumed the board is connected to a network where a TFTP server is 
-available and that a serial terminal is available to communicate with the 
-bootloader (38400, 8N1). If a DHCP server is available the device will use it
-to obtain an IP address. If not, run:
-
-  ARMmon > setip dhcp off
-  ARMmon > setip ip 192.168.1.203
-  ARMmon > setip mask 255.255.255.0
-
-To reflash the kernel:
-
-  ARMmon > download kernel tftp zimage 192.168.1.202
-  ARMmon > flash kernel
-
-where zimage is the name of the kernel on the TFTP server and its IP address is 
-192.168.1.202. The names of the files must be all lowercase.
-
-To reflash the initrd/initramfs:
-
-  ARMmon > download ramdisk tftp diskimage 192.168.1.202
-  ARMmon > flash ramdisk
-
-where diskimage is the name of the initramfs image (a cpio.gz file).
-
-To boot the initramfs:
-
-  ARMmon > ramdisk on
-  ARMmon > bootos "console=ttyS0,38400 rdinit=/sbin/init"
-
-To reflash the main image login to the system as user "root", then run:
-
-  # ifconfig eth0 192.168.1.203
-  # tftp -g -r mainimage 192.168.1.202
-  # flash_eraseall /dev/mtd1
-  # nandwrite /dev/mtd1 mainimage
-
-which configures the network interface with the IP address 192.168.1.203,
-downloads the "mainimage" file from the TFTP server at 192.168.1.202, erases
-the flash and then writes the new image to the flash.
-
-The main image can then be booted with:
-
-  ARMmon > bootos "console=ttyS0,38400 root=/dev/mtdblock1 rootfstype=jffs2"
-
-Note that the initramfs image is built by poky in a slightly different mode to
-normal since it uses uclibc. To generate this use a command like:
-
-IMAGE_FSTYPES=cpio.gz MACHINE=cm-x270 POKYLIBC=uclibc bitbake poky-image-minimal-mtdutils
-
-
-Compulab EM-X270 (em-x270)
-==========================
-
-Fetch the "Linux - kernel and run-time image (Angstrom)" ZIP file from the
-Compulab website. Inside the images directory of this ZIP file is another ZIP
-file called 'LiveDisk.zip'. Extract this over a cleanly formatted vfat USB flash
-drive. Replace the 'em_x270.img' file with the 'updater-em-x270.ext2' file.
-
-Insert this USB disk into the supplied adapter and connect this to the
-board. Whilst holding down the the suspend button press the reset button. The
-board will now boot off the USB key and into a version of Angstrom. On the
-desktop is an icon labelled "Updater". Run this program to launch the updater
-that will flash the Poky kernel and rootfs to the board.
-
-
-FreeScale iMX31ADS (mx31ads)
-===========================
-
-The correct serial port is the top-most female connector to the right of the
-ethernet socket.
-
-For uploading data to RedBoot we are going to use tftp. In this example we
-assume that the tftpserver is on 192.168.9.1 and the board is on192.168.9.2. 
-
-To set the IP address, run:
-
-  ip_address -l 192.168.9.2/24 -h 192.168.9.1
-
-To download a kernel called "zimage" from the TFTP server, run:
-
-  load -r -b 0x100000 zimage
-
-To write the kernel to flash run:
-
-  fis create kernel
-
-To download a rootfs jffs2 image "rootfs" from the TFTP server, run:
-
-  load -r -b 0x100000 rootfs
-
-To write the root filesystem  to flash run:
-
-  fis create root
-
-To load and boot a kernel and rootfs from flash:
-
-  fis load kernel
-  exec -b 0x100000 -l 0x200000 -c "noinitrd console=ttymxc0,115200 root=/dev/mtdblock2 rootfstype=jffs2 init=linuxrc ip=none"
-
-To load and boot a kernel from a TFTP server with the rootfs over NFS:
-
-  load -r -b 0x100000 zimage
-  exec -b 0x100000 -l 0x200000 -c "noinitrd console=ttymxc0,115200 root=/dev/nfs nfsroot=192.168.9.1:/mnt/nfsmx31 rw ip=192.168.9.2::192.168.9.1:255.255.255.0"
-
-The instructions above are for using the (default) NOR flash on the board,
-there is also 128M of NAND flash. It is possible to install Poky to the NAND 
-flash which gives more space for the rootfs and instructions for using this are
-given below. To switch to the NAND flash:
-
-  factive NAND
-
-This will then restart RedBoot using the NAND rather than the NOR. If you
-have not used the NAND before then it is unlikely that there will be a
-partition table yet. You can get the list of partitions with 'fis list'.
-
-If this shows no partitions then you can create them with:
-
-  fis init
-
-The output of 'fis list' should now show:
-
-Name              FLASH addr  Mem addr    Length      Entry point
-RedBoot           0xE0000000  0xE0000000  0x00040000  0x00000000
-FIS directory     0xE7FF4000  0xE7FF4000  0x00003000  0x00000000
-RedBoot config    0xE7FF7000  0xE7FF7000  0x00001000  0x00000000
-
-Partitions for the kernel and rootfs need to be created:
-
-fis create -l 0x1A0000 -e 0x00100000 kernel
-fis create -l 0x5000000 -e 0x00100000 root
-
-You may now use the instructions above for flashing. However it is important
-to note that the erase block size for the NAND is different to the NOR so the
-JFFS erase size will need to be changed to 0x4000. Stardard images are built
-for NOR and you will need to build custom images for NAND.
-
-You will also need to update the kernel command line to use the correct root
-filesystem. This should be '/dev/mtdblock7' if you adhere to the partitioning
-scheme shown above. If this fails then you can doublecheck against the output
-from the kernel when it evaluates the available mtd partitions.
-
-
-Marvell PXA3xx Zylonite (zylonite)
-==================================
-
-These instructions assume the Zylonite is connected to a machine running a TFTP 
-server at address 192.168.123.5 and that a serial link (38400 8N1) is available 
-to access the blob bootloader. The kernel is on the TFTP server as 
-"zylonite-kernel" and the root filesystem jffs2 file is "zylonite-rootfs" and 
-the images are to be saved in NAND flash.
-
-The following commands setup blob:
-
-  blob> setip client 192.168.123.4
-  blob> setip server 192.168.123.5
-
-To flash the kernel:
-
-  blob> tftp zylonite-kernel
-  blob> nandwrite -j 0x80800000 0x60000 0x200000
-
-To flash the rootfs:
-
-  blob> tftp zylonite-rootfs
-  blob> nanderase -j 0x260000 0x5000000
-  blob> nandwrite -j 0x80800000 0x260000 <length>
-
-(where <length> is the rootfs size which will be printed by the tftp step)
-
-To boot the board:
-
-  blob> nkernel
-  blob> boot
-
-
-Logic iMX31 Lite Kit (mx31litekit)
-===============================
-
-The easiest method to boot this board is to take an MMC/SD card and format 
-the first partition as ext2, then extract the poky image onto this as root. 
-Assuming the board is network connected, a TFTP server is available at 
-192.168.1.33 and a serial terminal is available (115200 8N1), the following 
-commands will boot a kernel called "mx31kern" from the TFTP server:
-
-  losh> ifconfig sm0 192.168.1.203 255.255.255.0 192.168.1.33
-  losh> load raw 0x80100000 0x200000 /tftp/192.168.1.33:mx31kern
-  losh> exec 0x80100000 - 
-
-
-Phytec phyCORE-iMX31 (mx31phy)
-==============================
-
-Support for this board is currently being developed. Experimental jffs2 
-images and a suitable kernel are available and are known to work with the
-board.
-
-
-                             Consumer Devices
-                             ================
-
-FIC Neo1973 GTA01 smartphone (fic-gta01)
-========================================
-
-To install Poky on a GTA01 smartphone you will need "dfu-util" tool
-which you can build with "bitbake dfu-util-native" command.
-
-Flashing requires these steps:
-
-  1. Power down the device.
-  2. Connect the device to the host machine via USB.
-  3. Hold AUX key and press Power key. There should be a bootmenu
-     on screen.
-  4. Run "dfu-util -l" to check if the phone is visible on the USB bus. 
-     The output should look like this:
-
-     dfu-util - (C) 2007 by OpenMoko Inc.
-     This program is Free Software and has ABSOLUTELY NO WARRANTY
-
-     Found Runtime: [0x1457:0x5119] devnum=19, cfg=0, intf=2, alt=0, name="USB Device Firmware Upgrade"
-
-  5. Flash the kernel with "dfu-util -a kernel -D uImage-2.6.21.6-moko11-r2-fic-gta01.bin"
-  6. Flash rootfs with "dfu-util -a rootfs -D <image>", where <image> is the
-     jffs2 image file to use as the root filesystem 
-     (e.g. ./tmp/deploy/images/poky-image-sato-fic-gta01.jffs2) 
-
-
-HTC Universal (htcuniversal)
-============================
-
-Note: HTC Universal support is highly experimental.
-
-On the HTC Universal, entirely replacing the Windows installation is not 
-supported, instead Poky is booted from an MMC/SD card from Windows. Once Poky
-has booted, Windows is no longer in memory or active but when power is removed,
-the user will be returned to windows and will need to return to Linux from 
-there.
-
-Once an MMC/SD card is available it is suggested its split into two partitions,
-one for a program called HaRET which lets you boot Linux from within Windows
-and the second for the rootfs. The HaRET partition should be the first partition
-on the card and be vfat formatted. It doesn't need to be large, just enough for
-HaRET and a kernel (say 5MB max). The rootfs should be ext2 and is usually the 
-second partition. The first partition should be vfat so Windows recognises it 
-as if it doesn't, it has been known to reformat cards.
-
-On the first partition you need three files:
-
-  * a HaRET binary (version 0.5.1 works well and a working version 
-    should be part of the last Poky release)
-  * a kernel renamed to "zImage"
-  * a default.txt which contains:
-
-set kernel "zImage"
-set mtype "855"
-set cmdline "root=/dev/mmcblk0p2 rw console=ttyS0,115200n8 console=tty0 rootdelay=5 fbcon=rotate:1"
-boot2
-
-On the second parition the root file system is extracted as root. A different
-partition layout or other kernel options can be changed in the default.txt file.
-
-When inserted into the device, Windows should see the card and let you browse
-its contents using File Explorer. Running the HaRET binary will present a dialog
-box (maybe after messages warning about running unsigned binaries) where you 
-select OK and you should then see Poky boot. Kernel messages can be seen by 
-adding psplash=false to the kernel commandline.
-
-
-Nokia 770/N800/N810 Internet Tablets (nokia770 and nokia800)
-============================================================
-
-Note: Nokia tablet support is highly experimental.
-
-The Nokia internet tablet devices are OMAP based tablet formfactor devices 
-with large screens (800x480), wifi and touchscreen.
-
-To flash images to these devices you need the "flasher" utility which can be 
-downloaded from the http://tablets-dev.nokia.com/d3.php?f=flasher-3.0. This 
-utility needs to be run as root and the usb filesystem needs to be mounted 
-although most distributions will have done this for you. Once you have this 
-follow these steps:
-
-  1. Power down the device.
-  2. Connect the device to the host machine via USB 
-     (connecting power to the device doesn't hurt either).
-  3. Run "flasher -i"
-  4. Power on the device.
-  5. The program should give an indication it's found 
-     a tablet device. If not, recheck the cables, make sure you're 
-     root and usbfs/usbdevfs is mounted.
-  6. Run "flasher -r <image> -k <kernel> -f", where <image> is the
-     jffs2 image file to use as the root filesystem 
-     (e.g. ./tmp/deploy/images/poky-image-sato-nokia800.jffs2) 
-     and <kernel> is the kernel to use 
-     (e.g. ./tmp/deploy/images/zImage-nokia800.bin).
-  7. Run "flasher -R" to reboot the device.
-  8. The device should boot into Poky.
-
-The nokia800 images and kernel will run on both the N800 and N810.
-
-
-Sharp Zaurus SL-C7x0 series (c7x0)
-==================================
-
-The Sharp Zaurus c7x0 series (SL-C700, SL-C750, SL-C760, SL-C860, SL-7500)
-are PXA25x based handheld PDAs with VGA screens. To install Poky images on
-these devices follow these steps:
-
-  1. Obtain an SD/MMC or CF card with a vfat or ext2 filesystem.
-  2. Copy a jffs2 image file (e.g. poky-image-sato-c7x0.jffs2) onto the
-     card as "initrd.bin":
-
-     $ cp ./tmp/deploy/images/poky-image-sato-c7x0.jffs2 /path/to/my-cf-card/initrd.bin
-
-  3. Copy an Linux kernel file (zImage-c7x0.bin) onto the card as 
-     "zImage.bin":
-
-     $ cp ./tmp/deploy/images/zImage-c7x0.bin /path/to/my-cf-card/zImage.bin
-
-  4. Copy an updater script (updater.sh.c7x0) onto the card
-     as "updater.sh":
-
-     $ cp ./tmp/deploy/images/updater.sh.c7x0 /path/to/my-cf-card/updater.sh
-
-  5. Power down the Zaurus.
-  6. Hold "OK" key and power on the device. An update menu should appear 
-     (in Japanese).
-  7. Choose "Update" (item 4).
-  8. The next screen will ask for the source, choose the appropriate 
-     card (CF or SD).
-  9. Make sure AC power is connected.
-  10. The next screen asks for confirmation, choose "Yes" (the left button).
-  11. The update process will start, flash the files on the card onto 
-      the device and the device will then reboot into Poky.
-
-
-Sharp Zaurus SL-C1000 (akita)
-=============================
-
-The Sharp Zaurus SL-C1000 is a PXA270 based device otherwise similar to the 
-c7x0. To install Poky images on this device follow the instructions for 
-the c7x0 but replace "c7x0" with "akita" where appropriate.
-
-
-Sharp Zaurus SL-C3x00 series (spitz)
-====================================
-
-The Sharp Zaurus SL-C3x00 devices are PXA270 based devices similar
-to akita but with an internal microdrive. The installation procedure 
-assumes a standard microdrive based device where the root (first) 
-partition has been enlarged to fit the image (at least 100MB, 
-400MB for the SDK).
-
-The procedure is the same as for the c7x0 and akita models with the 
-following differences:
-
- 1. Instead of a jffs2 image you need to copy a compressed tarball of the 
-    root fileystem (e.g. poky-image-sato-spitz.tar.gz) onto the
-    card as "hdimage1.tgz":
-
-    $ cp ./tmp/deploy/images/poky-image-sato-spitz.tar.gz /path/to/my-cf-card/hdimage1.tgz
-
- 2. You additionally need to copy a special tar utility  (gnu-tar) onto 
-    the card as "gnu-tar":
-
-    $ cp ./tmp/deploy/images/gnu-tar /path/to/my-cf-card/gnu-tar
+                      Specific Hardware Documentation
+                      ===============================
 
 
 Intel Atom based PCs and devices (atom-pc)
@@ -580,3 +217,133 @@ Note: As of the 2.6.37 linux-yocto kernel recipe, the Beagleboard uses the
       order to setup the getty on the serial line:
 
       SERIAL_CONSOLE_beagleboard = "115200 ttyS2"
+
+
+Ubiquiti Networks RouterStation Pro (routerstationpro)
+======================================================
+
+You will need the following:
+* A serial cable - female to female (or female to male + gender changer)
+  NOTE: cable must be straight through, *not* a null modem cable.
+* USB flash drive or hard disk that is able to be powered from the
+  board's USB port.
+* tftp server installed on your workstation
+
+NOTE: in the following instructions it is assumed that /dev/sdb corresponds
+to the USB disk when it is plugged into your workstation. If this is not the
+case in your setup then please be careful to substitute the correct device
+name in all commands where appropriate.
+
+--- Preparation ---
+
+1) Build an image (e.g. poky-image-minimal) using "routerstationpro" as the
+MACHINE
+
+2) Partition the USB drive so that primary partition 1 is type Linux (83).
+Minimum size depends on your root image size - poky-image-minimal probably
+only needs 8-16MB, other images will need more.
+
+  # fdisk /dev/sdb
+  Command (m for help): p
+
+  Disk /dev/sdb: 4011 MB, 4011491328 bytes
+  124 heads, 62 sectors/track, 1019 cylinders, total 7834944 sectors
+  Units = sectors of 1 * 512 = 512 bytes
+  Sector size (logical/physical): 512 bytes / 512 bytes
+  I/O size (minimum/optimal): 512 bytes / 512 bytes
+  Disk identifier: 0x0009e87d
+
+     Device Boot      Start         End      Blocks   Id  System
+  /dev/sdb1              62     1952751      976345   83  Linux
+
+3) Format partition 1 on the USB as ext3
+
+  # mke2fs -j /dev/sdb1
+
+4) Mount partition 1 and then extract the contents of
+tmp/deploy/images/poky-image-XXXX.tar.bz2 into it (preserving permissions).
+
+  # mount /dev/sdb1 /media/sdb1
+  # cd /media/sdb1
+  # tar -xvjpf tmp/deploy/images/poky-image-XXXX.tar.bz2
+
+5) Unmount the USB drive and then plug it into the board's USB port
+
+6) Connect the board's serial port to your workstation and then start up
+your favourite serial terminal so that you will be able to interact with
+the serial console. (If you don't have a favourite, picocom is suggested.)
+
+7) Connect the network into eth0 (the one that is NOT the 3 port switch). If
+you are using power-over-ethernet then the board will power up at this point.
+
+8) Start up the board, watch the serial console. Hit Ctrl+C to abort the
+autostart if the board is configured that way (it is by default). The
+bootloader's fconfig command can be used to disable autostart and configure
+the IP settings if you need to change them (default IP is 192.168.1.20).
+
+9) Make the kernel (tmp/deploy/images/vmlinux-routerstationpro.bin) available
+on the tftp server.
+
+10) If you are going to write the kernel to flash (optional - see "Booting a
+kernel directly" below for the alternative), remove the current kernel and
+rootfs flash partitions. You can list the partitions using the following
+bootloader command:
+
+  RedBoot> fis list
+
+You can delete the existing kernel and rootfs with these commands:
+
+  RedBoot> fis delete kernel
+  RedBoot> fis delete rootfs
+
+--- Booting a kernel directly ---
+
+1) Load the kernel using the following bootloader command:
+
+  RedBoot> load -m tftp -h <ip of tftp server> vmlinux-routerstationpro.bin
+
+You should see a message on it being successfully loaded.
+
+2) Execute the kernel:
+
+  RedBoot> exec -c "console=ttyS0,115200 root=/dev/sda1 rw rootdelay=2 board=UBNT-RSPRO"
+
+Note that specifying the command line with -c is important as linux-yocto does
+not provide a default command line.
+
+--- Writing a kernel to flash ---
+
+1) Go to your tftp server and gzip the kernel you want in flash. It should
+halve the size.
+
+2) Load the kernel using the following bootloader command:
+
+  RedBoot> load -r -b 0x80600000 -m tftp -h <ip of tftp server> vmlinux-routerstationpro.bin.gz
+
+This should output something similar to the following:
+
+  Raw file loaded 0x80600000-0x8087c537, assumed entry at 0x80600000
+
+Calculate the length by subtracting the first number from the second number
+and then rounding the result up to the nearest 0x1000.
+
+3) Using the length calculated above, create a flash partition for the kernel:
+
+  RedBoot> fis create -b 0x80600000 -l 0x240000 kernel
+
+(change 0x240000 to your rounded length -- change "kernel" to whatever
+you want to name your kernel)
+
+--- Booting a kernel from flash ---
+
+To boot the flashed kernel perform the following steps.
+
+1) At the bootloader prompt, load the kernel:
+
+  RedBoot> fis load -d -e kernel
+
+(Change the name "kernel" above if you chose something different earlier)
+
+(-e means 'elf', -d 'decompress')
+
+2) Execute the kernel using the exec command as above.
-- 
1.7.1


