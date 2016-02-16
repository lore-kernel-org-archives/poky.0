Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68DAAE0086B; Mon, 15 Feb 2016 19:06:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 769A2E00838
	for <poky@yoctoproject.org>; Mon, 15 Feb 2016 19:06:54 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 15 Feb 2016 19:06:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,453,1449561600"; d="scan'208";a="903302516"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga001.fm.intel.com with ESMTP; 15 Feb 2016 19:06:54 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 16 Feb 2016 03:07:29 +0000
Message-Id: <1455592049-26010-1-git-send-email-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.6.2
Subject: [PATCH] gma500-gfx-check: Fixes infinite calling to modprobe gma500_gfx
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
X-List-Received-Date: Tue, 16 Feb 2016 03:06:56 -0000

The previous script caused an infinite call to modprobe gma500_gfx on certain
situations, this fixes a typo and uses a new flag to avoid the infinite loop

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 .../gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.conf           | 2 +-
 .../recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.sh | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.conf b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.conf
index 69f109e..74d33c8 100644
--- a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.conf
+++ b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.conf
@@ -1,2 +1,2 @@
 # Mimic modprobe's install funcitonality with busybox's modprobe
-install gma500_gfx lsmod | grep gma || { gma500_gfx_check.sh || modprobe gma500_gfx; }
+install gma500_gfx dmesg | grep gma500_gfx_checked || { /etc/modprobe.d/gma500-gfx-check.sh || modprobe gma500_gfx; }
diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.sh b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.sh
index 0c7b3aa..75cda99 100644
--- a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.sh
+++ b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.sh
@@ -2,6 +2,10 @@
 
 # Check for devices we wish to avoid gma500_gfx for
 DEVICES="0x8119 0x4108"
+
+# Checked flag to avoid infinite modprobe
+echo "gma500_gfx_checked" >> /dev/kmsg;
+
 for DEVICE in $DEVICES; do
     if udevadm trigger --subsystem-match=pci --verbose --attr-match=device=$DEVICE | grep "pci" >> /dev/null ; then
         echo "Found $DEVICE, avoiding gma500_gfx module" >> /dev/kmsg;
-- 
2.6.2


