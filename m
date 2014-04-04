Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7068FE00BF4
	for <poky@yoctoproject.org>; Fri,  4 Apr 2014 07:26:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2014 07:26:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,795,1389772800"; d="scan'208";a="514498826"
Received: from davidllo-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.87])
	by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2014 07:26:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Apr 2014 15:26:25 +0100
Message-Id: <b9e1cbab4581811bc637d65b1f264b7d8f45128f.1396621532.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1396621532.git.paul.eggleton@linux.intel.com>
References: <cover.1396621532.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1396621532.git.paul.eggleton@linux.intel.com>
References: <cover.1396621532.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 3/4] README.hardware: drop routerstationpro in favour of edgerouter
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Apr 2014 14:26:49 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware | 163 +-------------------------------------------------------
 1 file changed, 1 insertion(+), 162 deletions(-)

diff --git a/README.hardware b/README.hardware
index 85f0330..3cdb7a2 100644
--- a/README.hardware
+++ b/README.hardware
@@ -47,7 +47,6 @@ Hardware Reference Boards
 The following boards are supported by the meta-yocto-bsp layer:
 
   * Freescale MPC8315E-RDB (mpc8315e-rdb)
-  * Ubiquiti Networks RouterStation Pro (routerstationpro)
 
 For more information see the board's section below. The appropriate MACHINE
 variable value corresponding to the board is given in brackets.
@@ -59,6 +58,7 @@ Consumer Devices
 The following consumer devices are supported by the meta-yocto-bsp layer:
 
   * Intel x86 based PCs and devices (genericx86)
+  * Ubiquiti Networks EdgeRouter Lite (edgerouter)
 
 For more information see the device's section below. The appropriate MACHINE
 variable value corresponding to the device is given in brackets.
@@ -240,167 +240,6 @@ Load the kernel and dtb (device tree blob), and boot the system as follows:
  => bootm 1000000 - 2000000
 
 
-Ubiquiti Networks RouterStation Pro (routerstationpro)
-======================================================
-
-The RouterStation Pro is an Atheros AR7161 MIPS-based board. Geared towards
-networking applications, it has all of the usual features as well as three
-type IIIA mini-PCI slots and an on-board 3-port 10/100/1000 Ethernet switch,
-in addition to the 10/100/1000 Ethernet WAN port which supports
-Power-over-Ethernet.
-
-Setup instructions
-------------------
-
-You will need the following:
-* A serial cable - female to female (or female to male + gender changer)
-  NOTE: cable must be straight through, *not* a null modem cable.
-* USB flash drive or hard disk that is able to be powered from the
-  board's USB port.
-* tftp server installed on your workstation
-
-NOTE: in the following instructions it is assumed that /dev/sdb corresponds
-to the USB disk when it is plugged into your workstation. If this is not the
-case in your setup then please be careful to substitute the correct device
-name in all commands where appropriate.
-
---- Preparation ---
-
-1) Build an image (e.g. core-image-minimal) using "routerstationpro" as the
-MACHINE
-
-2) Partition the USB drive so that primary partition 1 is type Linux (83).
-Minimum size depends on your root image size - core-image-minimal probably
-only needs 8-16MB, other images will need more.
-
-  # fdisk /dev/sdb
-  Command (m for help): p
-
-  Disk /dev/sdb: 4011 MB, 4011491328 bytes
-  124 heads, 62 sectors/track, 1019 cylinders, total 7834944 sectors
-  Units = sectors of 1 * 512 = 512 bytes
-  Sector size (logical/physical): 512 bytes / 512 bytes
-  I/O size (minimum/optimal): 512 bytes / 512 bytes
-  Disk identifier: 0x0009e87d
-
-     Device Boot      Start         End      Blocks   Id  System
-  /dev/sdb1              62     1952751      976345   83  Linux
-
-3) Format partition 1 on the USB as ext3
-
-  # mke2fs -j /dev/sdb1
-
-4) Mount partition 1 and then extract the contents of
-tmp/deploy/images/core-image-XXXX.tar.bz2 into it (preserving permissions).
-
-  # mount /dev/sdb1 /media/sdb1
-  # cd /media/sdb1
-  # tar -xvjpf tmp/deploy/images/core-image-XXXX.tar.bz2
-
-5) Unmount the USB drive and then plug it into the board's USB port
-
-6) Connect the board's serial port to your workstation and then start up
-your favourite serial terminal so that you will be able to interact with
-the serial console. If you don't have a favourite, picocom is suggested:
-
-  $ picocom /dev/ttyUSB0 -b 115200
-
-7) Connect the network into eth0 (the one that is NOT the 3 port switch). If
-you are using power-over-ethernet then the board will power up at this point.
-
-8) Start up the board, watch the serial console. Hit Ctrl+C to abort the
-autostart if the board is configured that way (it is by default). The
-bootloader's fconfig command can be used to disable autostart and configure
-the IP settings if you need to change them (default IP is 192.168.1.20).
-
-9) Make the kernel (tmp/deploy/images/vmlinux-routerstationpro.bin) available
-on the tftp server.
-
-10) If you are going to write the kernel to flash (optional - see "Booting a
-kernel directly" below for the alternative), remove the current kernel and
-rootfs flash partitions. You can list the partitions using the following
-bootloader command:
-
-  RedBoot> fis list
-
-You can delete the existing kernel and rootfs with these commands:
-
-  RedBoot> fis delete kernel
-  RedBoot> fis delete rootfs
-
---- Booting a kernel directly ---
-
-1) Load the kernel using the following bootloader command:
-
-  RedBoot> load -m tftp -h <ip of tftp server> vmlinux-routerstationpro.bin
-
-You should see a message on it being successfully loaded.
-
-2) Execute the kernel:
-
-  RedBoot> exec -c "console=ttyS0,115200 root=/dev/sda1 rw rootdelay=2 board=UBNT-RSPRO"
-
-Note that specifying the command line with -c is important as linux-yocto does
-not provide a default command line.
-
---- Writing a kernel to flash ---
-
-1) Go to your tftp server and gzip the kernel you want in flash. It should
-halve the size.
-
-2) Load the kernel using the following bootloader command:
-
-  RedBoot> load -r -b 0x80600000 -m tftp -h <ip of tftp server> vmlinux-routerstationpro.bin.gz
-
-This should output something similar to the following:
-
-  Raw file loaded 0x80600000-0x8087c537, assumed entry at 0x80600000
-
-Calculate the length by subtracting the first number from the second number
-and then rounding the result up to the nearest 0x1000.
-
-3) Using the length calculated above, create a flash partition for the kernel:
-
-  RedBoot> fis create -b 0x80600000 -l 0x240000 kernel
-
-(change 0x240000 to your rounded length -- change "kernel" to whatever
-you want to name your kernel)
-
---- Booting a kernel from flash ---
-
-To boot the flashed kernel perform the following steps.
-
-1) At the bootloader prompt, load the kernel:
-
-  RedBoot> fis load -d -e kernel
-
-(Change the name "kernel" above if you chose something different earlier)
-
-(-e means 'elf', -d 'decompress')
-
-2) Execute the kernel using the exec command as above.
-
---- Automating the boot process ---
-
-After writing the kernel to flash and testing the load and exec commands
-manually, you can automate the boot process with a boot script.
-
-1) RedBoot> fconfig
-   (Answer the questions not specified here as they pertain to your environment)
-2) Run script at boot: true
-  Boot script: 
-  .. fis load -d -e kernel
-  .. exec
-  Enter script, terminate with empty line
-  >> fis load -d -e kernel
-  >> exec -c "console=ttyS0,115200 root=/dev/sda1 rw rootdelay=2 board=UBNT-RSPRO"
-  >> 
-3) Answer the remaining questions and write the changes to flash:
-  Update RedBoot non-volatile configuration - continue (y/n)? y
-  ... Erase from 0xbfff0000-0xc0000000: .
-  ... Program from 0x87ff0000-0x88000000 at 0xbfff0000: .
-4) Power cycle the board.
-
 EdgeRouter Lite(edgerouter)
 =====================================
 
-- 
1.9.0


