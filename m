Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BDBD44C80B71
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 11:10:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 09:10:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,356,1288594800"; d="scan'208";a="687843621"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.146])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 09:10:46 -0800
Message-Id: <49cb5cbfa90cd7acba167c40c1044c9d2d525bc9.1292519264.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292519264.git.dvhart@linux.intel.com>
References: <cover.1292519264.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 16 Dec 2010 08:48:31 -0800
To: poky@yoctoproject.org, scott.m.rifenbark@intel.com,
	richard.purdie@linuxfoundation.org, tom.zanussi@intel.com
Subject: [PATCH 1/1] README.hardware: Add Atom PC image flashing documentation
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
X-List-Received-Date: Thu, 16 Dec 2010 17:10:47 -0000

Cover the basics of flashing images to physical media for the Atom PC MACHINE,
as well as dealing with BIOSs that can only boot USB media in USB-ZIP mode.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 README.hardware |   75 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 75 insertions(+), 0 deletions(-)

diff --git a/README.hardware b/README.hardware
index 270c71a..fe384b3 100644
--- a/README.hardware
+++ b/README.hardware
@@ -433,4 +433,79 @@ following differences:
     $ cp ./tmp/deploy/images/gnu-tar /path/to/my-cf-card/gnu-tar
 
 
+Intel Atom based PCs and devices (atom-pc)
+==========================================
 
+The atom-pc MACHINE is tested on the following platforms:
+
+  o Asus eee901
+  o Acer Aspire One
+  o Toshiba NB305
+  o Intel Embedded Development Board 1-N450 (Black Sand)
+
+and is likely to work on many unlisted atom based devices. The MACHINE type
+supports ethernet, wifi, sound, and i915 graphics by default in addition to
+common PC input devices, busses, and so on.
+
+Depending on the device, it can boot from a traditional hard-disk, a USB device,
+or over the network. Writing poky generated images to physical media is
+straightforward with a caveat for USB devices. The following examples assume the
+target boot device is /dev/sdb, be sure to verify this and use the correct
+device as the following commands are run as root and are not reversable.
+
+Hard Disk:
+  1. Build a directdisk image format. This will generate proper partition tables
+     that will in turn be written to the physical media. For example:
+
+     $ bitbake poky-image-minimal-directdisk
+  
+  2. Use the "dd" utility to write the image to the raw block device. For example:
+
+     # dd if=poky-image-minimal-directdisk-atom-pc.hdddirect of=/dev/sdb
+
+USB Device:
+  1. Build an hddimg image format. This is a simple filesystem without partition
+     tables and is suitable for USB keys. For example:
+
+     $ bitbake poky-image-minimal-live
+
+  2. Use the "dd" utility to write the image to the raw block device. For
+     example:
+
+     # dd if=poky-image-minimal-live-atom-pc.hddimg of=/dev/sdb
+
+  If the device fails to boot with "Boot error" displayed, it is likely the BIOS
+  cannot understand the physical layout of the disk (or rather it expects a
+  particular layout and cannot handle anything else). There are two possible
+  solutions to this problem:
+
+  1. Change the BIOS USB Device setting to HDD mode. The label will vary by
+     device, but the idea is to force BIOS to read the Cylinder/Head/Sector
+     geometry from the device.
+
+  2. Without such an option, the BIOS generally boots the device in USB-ZIP
+     mode.
+
+     a. Configure the USB device for USB-ZIP mode:
+     
+     # mkdiskimage -4 /dev/sdb 0 63 62
+
+     Where 63 and 62 are the head and sector count as reported by fdisk.
+     Remove and reinsert the device to allow the kernel to detect the new
+     partition layout.
+
+     b. Copy the contents of the poky image to the USB-ZIP mode device:
+
+     # mount -o loop poky-image-minimal-live-atom-pc.hddimg  /tmp/image
+     # mount /dev/sdb4 /tmp/usbkey
+     # cp -rf /tmp/image/* /tmp/usbkey
+
+     c. Install the syslinux boot loader:
+
+     # syslinux /dev/sdb4
+
+  Install the boot device in the target board and configure the BIOS to boot
+  from it.
+
+  For more details on the USB-ZIP scenario, see the syslinux documentation:
+  http://git.kernel.org/?p=boot/syslinux/syslinux.git;a=blob_plain;f=doc/usbkey.txt;hb=HEAD
-- 
1.7.1


