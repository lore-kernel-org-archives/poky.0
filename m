Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E01264C80A79
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:13:37 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Feb 2011 07:13:37 -0800
Message-Id: <b7da2f$qgqs56@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="890073260"
Received: from unknown (HELO localhost) ([10.255.12.44])
	by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2011 07:13:12 -0800
Old-Date: Tue, 25 Jan 2011 19:09:54 -0600
Date: Tue, 22 Feb 2011  9:13:10 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 3/3] emenlow: update linux-yocto SRCREVs
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
X-List-Received-Date: Tue, 22 Feb 2011 15:13:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update SRCREVS to latest

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 60790af..5fff582 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -46,3 +46,6 @@ GLIBC_EXTRA_OECONF = "--with-tls"
 
 SRCREV_machine_pn-linux-yocto-stable_emenlow = "a29743c0a1398798fbc02c0799c8605d91514e14"
 SRCREV_meta_pn-linux-yocto-stable_emenlow ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
+
+SRCREV_machine_pn-linux-yocto_emenlow = "c6299ae5bece8e3a6e1bc2c236862ae004629aae"
+SRCREV_meta_pn-linux-yocto_emenlow ?= "29047c254624e0bd8a0ac6da92862f7c6357cb0b"
-- 
1.7.0.4


