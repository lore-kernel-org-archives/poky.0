Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FDE24C8009A
	for <poky@yoctoproject.org>; Tue,  2 Aug 2011 15:50:49 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Aug 2011 13:50:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,307,1309762800"; d="scan'208";a="35104579"
Received: from unknown (HELO swold-MOBL.bigsur.com) ([10.255.14.76])
	by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2011 13:50:48 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  2 Aug 2011 13:50:48 -0700
Message-Id: <1312318248-28422-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH] atom-pc.conf: Add live image type
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
X-List-Received-Date: Tue, 02 Aug 2011 20:50:49 -0000

This change will cause the live image to be built by default
No longer is it necessary to build a -live image type.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/machine/atom-pc.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
index 6ac012f..a0a8104 100644
--- a/meta-yocto/conf/machine/atom-pc.conf
+++ b/meta-yocto/conf/machine/atom-pc.conf
@@ -28,7 +28,7 @@ XSERVER ?= "xserver-xf86-dri-lite \
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
-IMAGE_FSTYPES ?= "ext3 cpio.gz"
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
 APPEND += "usbcore.autosuspend=1"
 
-- 
1.7.3.4


