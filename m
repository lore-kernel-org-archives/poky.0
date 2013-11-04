Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AC0AE016DC
	for <poky@yoctoproject.org>; Mon,  4 Nov 2013 12:58:36 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Nov 2013 12:58:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="316912125"
Received: from unknown (HELO localhost) ([10.255.15.34])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Nov 2013 12:58:33 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Nov 2013 14:58:32 -0600
Message-Id: <5431bd9e48a771622d9aa143793ec42d3a273782.1383598600.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1383598600.git.tom.zanussi@linux.intel.com>
References: <cover.1383598600.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] busybox.bbappend: add override for poky-tiny defconfig
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
X-List-Received-Date: Mon, 04 Nov 2013 20:58:39 -0000

The defconfig for poky-tiny resides in {$P}/poky-tiny, so that needs
to be added to FILESEXTRAPATHS if the distro is poky-tiny.

This fixes boot problems such as below, where init doesn't work
because setsid isn't found, because setsid isn't configured into
busybox, because the defconfig adding it isn't found:

  /init: line 26: setsid: not found
  Console sh exited with 127, respawning...

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend b/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
index ffe8631..e15f2b6 100644
--- a/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
+++ b/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
@@ -1,2 +1,3 @@
 FILESEXTRAPATHS_prepend_poky := "${THISDIR}/${P}:"
+FILESEXTRAPATHS_prepend_poky-tiny := "${THISDIR}/${P}/${DISTRO}:"
 
-- 
1.8.3.1


