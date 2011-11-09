Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91618E00307
	for <poky@yoctoproject.org>; Wed,  9 Nov 2011 08:18:03 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Nov 2011 08:18:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,484,1315206000"; d="scan'208";a="34918152"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.129])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Nov 2011 08:18:02 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Nov 2011 16:17:56 +0000
Message-Id: <f5713ef31ae7a31e21b1b15e54a31b794b7549e4.1320855375.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1320855375.git.paul.eggleton@linux.intel.com>
References: <cover.1320855375.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1320855375.git.paul.eggleton@linux.intel.com>
References: <cover.1320855375.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] README.hardware: update atom-pc instructions
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
X-List-Received-Date: Wed, 09 Nov 2011 16:18:03 -0000

The -live and -directdisk images have been superseded in the Yocto
Project 1.1 release, so update the instructions for atom-pc relating to
this change. Also fix a couple of other minor atom-pc related
capitalisation.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware |   26 +++++++++-----------------
 1 files changed, 9 insertions(+), 17 deletions(-)

diff --git a/README.hardware b/README.hardware
index d4f7b47..11004c7 100644
--- a/README.hardware
+++ b/README.hardware
@@ -68,12 +68,12 @@ Intel Atom based PCs and devices (atom-pc)
 
 The atom-pc MACHINE is tested on the following platforms:
 
-  o Asus eee901
+  o Asus EeePC 901
   o Acer Aspire One
   o Toshiba NB305
   o Intel Embedded Development Board 1-N450 (Black Sand)
 
-and is likely to work on many unlisted atom based devices. The MACHINE type
+and is likely to work on many unlisted Atom based devices. The MACHINE type
 supports ethernet, wifi, sound, and i915 graphics by default in addition to
 common PC input devices, busses, and so on.
 
@@ -83,26 +83,18 @@ straightforward with a caveat for USB devices. The following examples assume the
 target boot device is /dev/sdb, be sure to verify this and use the correct
 device as the following commands are run as root and are not reversable.
 
-Hard Disk:
-  1. Build a directdisk image format. This will generate proper partition tables
-     that will in turn be written to the physical media. For example:
-
-     $ bitbake core-image-minimal-directdisk
-  
-  2. Use the "dd" utility to write the image to the raw block device. For example:
-
-     # dd if=core-image-minimal-directdisk-atom-pc.hdddirect of=/dev/sdb
-
 USB Device:
-  1. Build an hddimg image format. This is a simple filesystem without partition
-     tables and is suitable for USB keys. For example:
+  1. Build a live image. This image type consists of a simple filesystem
+     without a partition table, which is suitable for USB keys, and with the
+     default setup for the atom-pc machine, this image type is built
+     automatically for any image you build. For example:
 
-     $ bitbake core-image-minimal-live
+     $ bitbake core-image-minimal
 
   2. Use the "dd" utility to write the image to the raw block device. For
      example:
 
-     # dd if=core-image-minimal-live-atom-pc.hddimg of=/dev/sdb
+     # dd if=core-image-minimal-atom-pc.hddimg of=/dev/sdb
 
   If the device fails to boot with "Boot error" displayed, it is likely the BIOS
   cannot understand the physical layout of the disk (or rather it expects a
@@ -126,7 +118,7 @@ USB Device:
 
      b. Copy the contents of the poky image to the USB-ZIP mode device:
 
-     # mount -o loop core-image-minimal-live-atom-pc.hddimg  /tmp/image
+     # mount -o loop core-image-minimal-atom-pc.hddimg  /tmp/image
      # mount /dev/sdb4 /tmp/usbkey
      # cp -rf /tmp/image/* /tmp/usbkey
 
-- 
1.7.5.4


