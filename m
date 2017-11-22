Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 972A1E00C78; Wed, 22 Nov 2017 09:07:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 118AFE008A4
	for <poky@yoctoproject.org>; Wed, 22 Nov 2017 09:07:31 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Nov 2017 09:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,436,1505804400"; d="scan'208";a="176623142"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by orsmga005.jf.intel.com with ESMTP; 22 Nov 2017 09:07:29 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 22 Nov 2017 09:07:28 -0800
Message-Id: <20171122170728.1723-1-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
Subject: [PATCH] busybox: Add mkfs.EXT2 support on poky-tiny
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
X-List-Received-Date: Wed, 22 Nov 2017 17:07:32 -0000

Busybox should provide mkfs ext2 support on poky-tiny
since e2fsprogs isnt included

[YOCTO #12170]

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
index 0a5d5c918d2..c4d23a235e3 100644
--- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
+++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
@@ -543,7 +543,7 @@ CONFIG_FEATURE_FDISK_WRITABLE=y
 CONFIG_FLOCK=y
 # CONFIG_FREERAMDISK is not set
 CONFIG_FSCK_MINIX=y
-# CONFIG_MKFS_EXT2 is not set
+CONFIG_MKFS_EXT2=y
 CONFIG_MKFS_MINIX=y
 CONFIG_FEATURE_MINIX2=y
 # CONFIG_MKFS_REISER is not set
-- 
2.12.3


