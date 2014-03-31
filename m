Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98683E00C28
	for <poky@yoctoproject.org>; Mon, 31 Mar 2014 11:02:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2VI2EPa016815
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 31 Mar 2014 11:02:14 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 31 Mar 2014 11:02:10 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Mon, 31 Mar 2014 14:01:59 -0400
Message-ID: <114e86c4816d520b80053a890af099820ec89604.1396288654.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1396288654.git.bruce.ashfield@windriver.com>
References: <cover.1396288654.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 6/7] poky: add edgerouter information to README.hardware
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
X-List-Received-Date: Mon, 31 Mar 2014 18:02:16 -0000
Content-Type: text/plain

From: Yang Wei <Wei.Yang@windriver.com>

Adding the summary, preparation and boot information for the newly introduced
edgerouter BSP.

Signed-off-by: Yang Wei <Wei.Yang@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 README.hardware | 81 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/README.hardware b/README.hardware
index 607062b59ada..eccc7d3e6e76 100644
--- a/README.hardware
+++ b/README.hardware
@@ -492,3 +492,84 @@ manually, you can automate the boot process with a boot script.
   ... Program from 0x87ff0000-0x88000000 at 0xbfff0000: .
 4) Power cycle the board.
 
+EdgeRouter Lite(edgerouter)
+=====================================
+
+The EdgeRouter Lite is part of the EdgeMax series. It is an MIPS64 router(Cavium Octeon)
+with 512MB of RAM, which uses a USB pendrive for storage.
+
+Setup instructions
+------------------
+
+You will need the following:
+* NFS root setup on your workstation
+* TFTP server installed on your workstation
+* Straight-thru 9-conductor serial cable (DB9, M/F) connected from your 
+  PC to UART1
+* Ethernet connected to the first ethernet port on the board
+
+--- Preparation ---
+
+Build an image (e.g. core-image-minimal) using "edgerouter" as the MACHINE.
+In the following instruction it is based on core-image-minimal. Another target
+may be similiar with it.
+
+--- Booting from NFS root ---
+
+Load the kernel, and boot the system as follows:
+
+ 1. Get the kernel (vmlinux) file from the tmp/deploy/images/edgerouter
+    directory, and make them available on your TFTP server.
+
+ 2. Connect the board's first serial port to your workstation and then start up
+    your favourite serial terminal so that you will be able to interact with
+    the serial console. If you don't have a favourite, picocom is suggested:
+
+  $ picocom /dev/ttyS0 -b 115200
+
+ 3. Power up or reset the board and press a key on the terminal when prompted
+    to get to the U-Boot command line
+
+ 4. Set up the environment in U-Boot:
+
+ => setenv ipaddr <board ip>
+ => setenv serverip <tftp server ip>
+
+ 5. Download the kernel and boot:
+
+ => tftp tftp $loadaddr vmlinux
+ => bootoctlinux $loadaddr coremask=0x3 root=/dev/nfs rw nfsroot=<nfsroot ip>:<rootfs path> ip=<board ip>:<server ip>:<gateway ip>:<netmask>:edgerouter:eth0:off mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)
+
+--- Booting from USB root ---
+
+NOTE: Since the USB disk is inside the edgerouter box, its inconvenient for us to
+      plug and unplug the USB disk. So in the following instructions I assume that
+	  you already boot the box from NFS. Additionally, since vmlinux is not installed
+	  to core-minal-image-xxx by default, so its neccessary for us to copy it to USB
+	  disk.
+
+Load the kernel, and boot the system as follows:
+ 1. Booting from NFS root
+
+ 2. Mount usb disk partition 2 and then extract the contens of
+    tmp/deploy/core-image-XXXX.tar.bz2 into it.
+
+    Before starting, copy core-image-minimal-xxx.tar.bz2 and vmlinux into
+    rootfs path on your workstation.
+
+    and then,
+  
+    # mount /dev/sda2 /media/sda2
+    # tar -xvjpf core-image-minimal-XXX.tar.bz2 -C /media/sda2
+    # cp vmlinux /media/sda2/boot/vmlinux
+    # umount /media/sda2
+    # reboot
+
+ 3. Reboot the board and press a key on the terminal when prompted to get to the U-Boot
+    command line
+    # reboot
+
+ 4. Load the kernel and boot:
+
+ => ext2load usb 0:2 $loadaddr boot/vmlinux
+ => bootoctlinux $loadaddr coremask=0x3 root=/dev/sda2 rw rootwait mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)
-- 
1.8.1.2


