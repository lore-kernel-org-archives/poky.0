Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E4C1A4C800B1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 01:42:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Feb 2011 23:42:52 -0800
Message-Id: <b9dded$i30hv9@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,238,1297065600"; d="scan'208";a="607143917"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by orsmga002.jf.intel.com with ESMTP; 27 Feb 2011 23:42:51 -0800
Old-Date: Mon, 28 Feb 2011 01:29:27 -0600
Date: Mon, 28 Feb 2011  1:42:49 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-jasperforest: update kernel SRCREVs
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
X-List-Received-Date: Mon, 28 Feb 2011 07:42:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update kernel SRCREVs to latest commits.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 5c2e9bc..d4293a6 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -46,8 +46,8 @@ PREFERRED_VERSION_grub ?= "1.98"
 
 TARGET_CC_ARCH = "-m64"
 
-SRCREV_machine_pn-linux-yocto_jasperforest ?= "a6dd773a94336c7bbdfd02f8a6a647d034f84821"
-SRCREV_meta_pn-linux-yocto_jasperforest ?= "5806e601595ff3db7655f14b3d720433072eb656"
+SRCREV_machine_pn-linux-yocto_jasperforest ?= "49a2e709dd41bcfa206e61b88e5562789a6b8914"
+SRCREV_meta_pn-linux-yocto_jasperforest ?= "e2cabadc059ad8d91f7e4a023106620d93abd23a"
 
 SRCREV_machine_pn-linux-yocto-stable_jasperforest ?= "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
 SRCREV_meta_pn-linux-yocto-stable_jasperforest ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
-- 
1.7.0.4


