Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B89BE011B8
	for <poky@yoctoproject.org>; Tue,  6 Sep 2011 09:39:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Sep 2011 09:39:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="45534844"
Received: from unknown (HELO localhost) ([10.255.14.186])
	by orsmga002.jf.intel.com with ESMTP; 06 Sep 2011 09:39:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  6 Sep 2011 09:39:17 -0700
Message-Id: <096ad461b7359b3d1a3d11110d956769dedbbbce.1315326700.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1315326700.git.dvhart@linux.intel.com>
References: <cover.1315326700.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/1] beagleboard: document how to enable the hard floating point abi
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
X-List-Received-Date: Tue, 06 Sep 2011 16:39:23 -0000

Closes [YOCTO #1203]

Using the hard floating point abi is incompatible with some binary libaries and
3D support for the Beagleboard. While we do not provide these in poky and
meta-yocto, softfp should remain the default for compatibility reasons.

Provide documentation and a commented assignment to DEFAULT_TUNE instructing
how to enable hardfp, but leave it disabled by default.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Jason Kridner <jkridner@beagleboard.org>
CC: Koen Kooi <koen@dominion.thruhere.net>
---
 meta-yocto/conf/machine/beagleboard.conf |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 0b3cebc..1b89c43 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -18,6 +18,10 @@ MACHINE_EXTRA_RRECOMMENDS += "beagleboard-audio"
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
 EXTRA_IMAGEDEPENDS += "u-boot x-load"
 
+# Uncomment the following line to enable the hard floating point abi. Note that
+# this breaks some binary libraries and 3D (neither of which ship with
+# meta-yocto). For maximum compatibility, leave this disabled.
+#DEFAULTTUNE ?= "cortexa8hf-neon"
 include conf/machine/include/tune-cortexa8.inc
 
 IMAGE_FSTYPES += "tar.bz2 jffs2"
-- 
1.7.6


