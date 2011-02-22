Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 43B1F4C800C0
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:13:12 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Feb 2011 07:13:12 -0800
Message-Id: <0d30dc$l6p511@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="711758893"
Received: from unknown (HELO localhost) ([10.255.12.44])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2011 07:13:11 -0800
Old-Date: Tue, 25 Jan 2011 19:06:56 -0600
Date: Tue, 22 Feb 2011  9:13:09 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/3] emenlow: update linux-yocto-stable SRCREVs
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
X-List-Received-Date: Tue, 22 Feb 2011 15:13:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update SRCREVS to latest

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 45adbff..60790af 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -44,5 +44,5 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
-SRCREV_machine_pn-linux-yocto-stable_emenlow = "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
-SRCREV_meta_pn-linux-yocto-stable_emenlow ?= "d1cd5c80ee97e81e130be8c3de3965b770f320d6"
+SRCREV_machine_pn-linux-yocto-stable_emenlow = "a29743c0a1398798fbc02c0799c8605d91514e14"
+SRCREV_meta_pn-linux-yocto-stable_emenlow ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
-- 
1.7.0.4


