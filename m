Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 241C8E00C86; Sun,  9 Oct 2016 08:24:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45B4E00C37
	for <poky@yoctoproject.org>; Sun,  9 Oct 2016 08:24:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 09 Oct 2016 08:24:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,467,1473145200"; d="scan'208";a="1068144580"
Received: from swold-mobl2.amr.corp.intel.com ([10.254.21.249])
	by fmsmga002.fm.intel.com with ESMTP; 09 Oct 2016 08:24:25 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Sun,  9 Oct 2016 08:24:24 -0700
Message-Id: <1476026664-16318-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] README.hardware: Update Genericx86 section
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
X-List-Received-Date: Sun, 09 Oct 2016 15:24:31 -0000

This section was truly dated, update with newer hardware that is
being tested.

Update section on creating USB stick images using wic and alternate EFI_PROVIDER
information about systemd-boot.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 README.hardware | 82 ++++++++++++---------------------------------------------
 1 file changed, 17 insertions(+), 65 deletions(-)

diff --git a/README.hardware b/README.hardware
index 9c74c5d..6383bd7 100644
--- a/README.hardware
+++ b/README.hardware
@@ -77,31 +77,22 @@ variable value corresponding to the device is given in brackets.
                       ===============================
 
 
-Intel x86 based PCs and devices (genericx86)
-==========================================
+Intel x86 based PCs and devices (genericx86*)
+=============================================
 
-The genericx86 MACHINE is tested on the following platforms:
+The genericx86 and genericx86-64 MACHINE are tested on the following platforms:
 
 Intel Xeon/Core i-Series:
-  + Intel Romley Server: Sandy Bridge Xeon processor, C600 PCH (Patsburg), (Canoe Pass CRB)
-  + Intel Romley Server: Ivy Bridge Xeon processor, C600 PCH (Patsburg), (Intel SDP S2R3)
-  + Intel Crystal Forest Server: Sandy Bridge Xeon processor, DH89xx PCH (Cave Creek), (Stargo CRB)
-  + Intel Chief River Mobile: Ivy Bridge Mobile processor, QM77 PCH (Panther Point-M), (Emerald Lake II CRB, Sabino Canyon CRB)
-  + Intel Huron River Mobile: Sandy Bridge processor, QM67 PCH (Cougar Point), (Emerald Lake CRB, EVOC EC7-1817LNAR board)
-  + Intel Calpella Platform: Core i7 processor, QM57 PCH (Ibex Peak-M), (Red Fort CRB, Emerson MATXM CORE-411-B)
-  + Intel Nehalem/Westmere-EP Server: Xeon 56xx/55xx processors, 5520 chipset, ICH10R IOH (82801), (Hanlan Creek CRB)
-  + Intel Nehalem Workstation: Xeon 56xx/55xx processors, System SC5650SCWS (Greencity CRB)
-  + Intel Picket Post Server: Xeon 56xx/55xx processors (Jasper Forest), 3420 chipset (Ibex Peak), (Osage CRB)
-  + Intel Storage Platform: Sandy Bridge Xeon processor, C600 PCH (Patsburg), (Oak Creek Canyon CRB)
-  + Intel Shark Bay Client Platform: Haswell processor, LynxPoint PCH, (Walnut Canyon CRB, Lava Canyon CRB, Basking Ridge CRB, Flathead Creek CRB)
-  + Intel Shark Bay Ultrabook Platform: Haswell ULT processor, Lynx Point-LP PCH, (WhiteTip Mountain 1 CRB)
+  + Intel NUC5 Series - ix-52xx Series SOC (Broadwell)
+  + Intel NUC6 Series - ix-62xx Series SOC (Skylake)
+  + Intel Shumway Xeon Server
 
 Intel Atom platforms:
-  + Intel embedded Menlow: Intel Atom Z510/530 CPU, System Controller Hub US15W (Portwell NANO-8044)
-  + Intel Luna Pier: Intel Atom N4xx/D5xx series CPU (aka: Pineview-D & -M), 82801HM I/O Hub (ICH8M), (Advantech AIMB-212, Moon Creek CRB)
-  + Intel Queens Bay platform: Intel Atom E6xx CPU (aka: Tunnel Creek), Topcliff EG20T I/O Hub (Emerson NITX-315, Crown Bay CRB, Minnow Board)
-  + Intel Fish River Island platform: Intel Atom E6xx CPU (aka: Tunnel Creek), Topcliff EG20T I/O Hub (Kontron KM2M806)
-  + Intel Cedar Trail platform: Intel Atom N2000 & D2000 series CPU (aka: Cedarview), NM10 Express Chipset (Norco kit BIS-6630, Cedar Rock CRB)
+  + MinnowBoard MAX - E3825 SOC (Bay Trail)
+  + MinnowBoard MAX - Turbot (ADI Engineering) - E3826 SOC (Bay Trail)
+    - These boards can be either 32bot or 64bit modes depending on firmware
+    - See minnowboard.org for details 
+  + Intel Braswell SOC
 
 and is likely to work on many unlisted Atom/Core/Xeon based devices. The MACHINE
 type supports ethernet, wifi, sound, and Intel/vesa graphics by default in
@@ -136,53 +127,14 @@ USB Device:
      device, but the idea is to force BIOS to read the Cylinder/Head/Sector
      geometry from the device.
 
-  2. Without such an option, the BIOS generally boots the device in USB-ZIP
-     mode. To write an image to a USB device that will be bootable in
-     USB-ZIP mode, carry out the following actions:
+  2. Use a ".wic" image with an EFI partition
 
-     a. Determine the geometry of your USB device using fdisk:
+     a) With a default grub-efi bootloader:
+     # dd if=core-image-minimal-genericx86-64.wic of=/dev/sdb
 
-     # fdisk /dev/sdb
-     Command (m for help): p
-
-     Disk /dev/sdb: 4011 MB, 4011491328 bytes
-     124 heads, 62 sectors/track, 1019 cylinders, total 7834944 sectors
-     ...
-
-     Command (m for help): q
-
-     b. Configure the USB device for USB-ZIP mode:
-     
-     # mkdiskimage -4 /dev/sdb 1019 124 62
-
-     Where 1019, 124 and 62 are the cylinder, head and sectors/track counts
-     as reported by fdisk (substitute the values reported for your device).
-     When the operation has finished and the access LED (if any) on the
-     device stops flashing, remove and reinsert the device to allow the
-     kernel to detect the new partition layout.
-
-     c. Copy the contents of the image to the USB-ZIP mode device:
-
-     # mkdir /tmp/image
-     # mkdir /tmp/usbkey
-     # mount -o loop core-image-minimal-genericx86.hddimg  /tmp/image
-     # mount /dev/sdb4 /tmp/usbkey
-     # cp -rf /tmp/image/* /tmp/usbkey
-
-     d. Install the syslinux boot loader:
-
-     # syslinux /dev/sdb4
-
-     e. Unmount everything:
-
-     # umount /tmp/image
-     # umount /tmp/usbkey
-
-  Install the boot device in the target board and configure the BIOS to boot
-  from it.
-
-  For more details on the USB-ZIP scenario, see the syslinux documentation:
-  http://git.kernel.org/?p=boot/syslinux/syslinux.git;a=blob_plain;f=doc/usbkey.txt;hb=HEAD
+     b) Use systemd-boot instead
+     - Build an image with EFI_PROVIDER="systemd-boot" then use the above
+       dd command to write the image to a USB stick.
 
 
 Texas Instruments Beaglebone (beaglebone)
-- 
2.7.4


