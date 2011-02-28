Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 48C0F4C805A1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 10:25:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Feb 2011 08:24:56 -0800
Message-Id: <b7da2f$qiliee@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,240,1297065600"; d="scan'208";a="891996625"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by fmsmga001.fm.intel.com with ESMTP; 28 Feb 2011 08:24:55 -0800
Old-Date: Mon, 28 Feb 2011 10:13:46 -0600
Date: Mon, 28 Feb 2011 10:24:53 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-jasperforest: update SRCREVs
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
X-List-Received-Date: Mon, 28 Feb 2011 16:25:03 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This gets us past the perf compile failure.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index d4293a6..e663a4e 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -46,7 +46,7 @@ PREFERRED_VERSION_grub ?= "1.98"
 
 TARGET_CC_ARCH = "-m64"
 
-SRCREV_machine_pn-linux-yocto_jasperforest ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
+SRCREV_machine_pn-linux-yocto_jasperforest ?= "2b412826bbeb4a16abe2ea74f2456ab880c6e3c1"
 SRCREV_meta_pn-linux-yocto_jasperforest ?= "e2cabadc059ad8d91f7e4a023106620d93abd23a"
 
 SRCREV_machine_pn-linux-yocto-stable_jasperforest ?= "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
-- 
1.7.0.4


