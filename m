Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8608E013DE
	for <poky@yoctoproject.org>; Fri, 30 Mar 2012 08:53:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Mar 2012 08:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147907107"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.123.235])
	by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2012 08:53:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 30 Mar 2012 16:53:26 +0100
Message-Id: <e14a2b0e8e9f635304dfcb7c0ecf2f10708438de.1333122741.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333122741.git.paul.eggleton@linux.intel.com>
References: <cover.1333122741.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1333122741.git.paul.eggleton@linux.intel.com>
References: <cover.1333122741.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] README.hardware: extend USB-ZIP instructions
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
X-List-Received-Date: Fri, 30 Mar 2012 15:53:30 -0000

* Note that on some machines booting just stops after the SYSLINUX
  version banner is displayed
* Add an instruction to show how to get the geometry information for
  the disk
* Specify the number of cylinders when running mkdiskimage as it is
  sometimes unable to detect it automatically
* Create the temporary mountpoints before attempting to use them
* Add an instruction to unmount the disk before removing it

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware |   42 ++++++++++++++++++++++++++++++++----------
 1 files changed, 32 insertions(+), 10 deletions(-)

diff --git a/README.hardware b/README.hardware
index f72da94..ac28d94 100644
--- a/README.hardware
+++ b/README.hardware
@@ -96,8 +96,9 @@ USB Device:
 
      # dd if=core-image-minimal-atom-pc.hddimg of=/dev/sdb
 
-  If the device fails to boot with "Boot error" displayed, it is likely the BIOS
-  cannot understand the physical layout of the disk (or rather it expects a
+  If the device fails to boot with "Boot error" displayed, or apparently
+  stops just after the SYSLINUX version banner, it is likely the BIOS cannot
+  understand the physical layout of the disk (or rather it expects a
   particular layout and cannot handle anything else). There are two possible
   solutions to this problem:
 
@@ -106,26 +107,47 @@ USB Device:
      geometry from the device.
 
   2. Without such an option, the BIOS generally boots the device in USB-ZIP
-     mode.
+     mode. To write an image to a USB device that will be bootable in
+     USB-ZIP mode, carry out the following actions:
 
-     a. Configure the USB device for USB-ZIP mode:
+     a. Determine the geometry of your USB device using fdisk:
+
+     # fdisk /dev/sdb
+     Command (m for help): p
+
+     Disk /dev/sdb: 4011 MB, 4011491328 bytes
+     124 heads, 62 sectors/track, 1019 cylinders, total 7834944 sectors
+     ...
+
+     Command (m for help): q
+
+     b. Configure the USB device for USB-ZIP mode:
      
-     # mkdiskimage -4 /dev/sdb 0 63 62
+     # mkdiskimage -4 /dev/sdb 1019 124 62
 
-     Where 63 and 62 are the head and sector count as reported by fdisk.
-     Remove and reinsert the device to allow the kernel to detect the new
-     partition layout.
+     Where 1019, 124 and 62 are the cylinder, head and sectors/track counts
+     as reported by fdisk (substitute the values reported for your device).
+     When the operation has finished and the access LED (if any) on the
+     device stops flashing, remove and reinsert the device to allow the
+     kernel to detect the new partition layout.
 
-     b. Copy the contents of the poky image to the USB-ZIP mode device:
+     c. Copy the contents of the poky image to the USB-ZIP mode device:
 
+     # mkdir /tmp/image
+     # mkdir /tmp/usbkey
      # mount -o loop core-image-minimal-atom-pc.hddimg  /tmp/image
      # mount /dev/sdb4 /tmp/usbkey
      # cp -rf /tmp/image/* /tmp/usbkey
 
-     c. Install the syslinux boot loader:
+     d. Install the syslinux boot loader:
 
      # syslinux /dev/sdb4
 
+     e. Unmount everything:
+
+     # umount /tmp/image
+     # umount /tmp/usbkey
+
   Install the boot device in the target board and configure the BIOS to boot
   from it.
 
-- 
1.7.5.4


