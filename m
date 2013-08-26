Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45E4E0155F
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 15:14:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Aug 2013 15:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,962,1367996400"; d="scan'208";a="368819964"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.196.147])
	by orsmga001.jf.intel.com with ESMTP; 26 Aug 2013 15:14:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 26 Aug 2013 15:18:11 -0700
Message-Id: <4fb27083fb148b99c507a5b0a85373f8254b28f9.1377555271.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
References: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1377555271.git.dvhart@linux.intel.com>
References: <cover.1377555271.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 5/6] README.hardware: Replace atom-pc with genericx86
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
X-List-Received-Date: Mon, 26 Aug 2013 22:14:07 -0000

Update README.hardware to reflect the recent replacement of
atom-pc with genericx86.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Ross Burton <ross.burton@intel.com>
Cc: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 README.hardware |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/README.hardware b/README.hardware
index e22fc08..3686759 100644
--- a/README.hardware
+++ b/README.hardware
@@ -59,7 +59,7 @@ Consumer Devices
 
 The following consumer devices are supported by the meta-yocto-bsp layer:
 
-  * Intel Atom based PCs and devices (atom-pc)
+  * Intel x86 based PCs and devices (genericx86)
 
 For more information see the device's section below. The appropriate MACHINE
 variable value corresponding to the device is given in brackets.
@@ -70,10 +70,10 @@ variable value corresponding to the device is given in brackets.
                       ===============================
 
 
-Intel Atom based PCs and devices (atom-pc)
+Intel x86 based PCs and devices (genericx86)
 ==========================================
 
-The atom-pc MACHINE is tested on the following platforms:
+The genericx86 MACHINE is tested on the following platforms:
 
   o Asus EeePC 901
   o Acer Aspire One
@@ -93,7 +93,7 @@ device as the following commands are run as root and are not reversable.
 USB Device:
   1. Build a live image. This image type consists of a simple filesystem
      without a partition table, which is suitable for USB keys, and with the
-     default setup for the atom-pc machine, this image type is built
+     default setup for the genericx86 machine, this image type is built
      automatically for any image you build. For example:
 
      $ bitbake core-image-minimal
@@ -101,7 +101,7 @@ USB Device:
   2. Use the "dd" utility to write the image to the raw block device. For
      example:
 
-     # dd if=core-image-minimal-atom-pc.hddimg of=/dev/sdb
+     # dd if=core-image-minimal-genericx86.hddimg of=/dev/sdb
 
   If the device fails to boot with "Boot error" displayed, or apparently
   stops just after the SYSLINUX version banner, it is likely the BIOS cannot
@@ -142,7 +142,7 @@ USB Device:
 
      # mkdir /tmp/image
      # mkdir /tmp/usbkey
-     # mount -o loop core-image-minimal-atom-pc.hddimg  /tmp/image
+     # mount -o loop core-image-minimal-genericx86.hddimg  /tmp/image
      # mount /dev/sdb4 /tmp/usbkey
      # cp -rf /tmp/image/* /tmp/usbkey
 
-- 
1.7.9.5


