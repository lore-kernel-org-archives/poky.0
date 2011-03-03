Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 148A44C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 15:52:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Mar 2011 13:52:31 -0800
Message-Id: <b7da2f$qk4uvk@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,260,1297065600"; d="scan'208";a="893549988"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 13:51:49 -0800
Old-Date: Thu, 3 Mar 2011 15:39:53 -0600
Date: Thu, 03 Mar 2011 15:51:44 -0600
To: saul.wold@intel.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] meta-n450: compile fixes
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
X-List-Received-Date: Thu, 03 Mar 2011 21:52:32 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

- changed RDPENDS from amixer to alsa-utils-amixer
- fix typo in LIC_FILES_CHECKSUM
- fix audiofix init.d ln

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-n450/recipes-bsp/audiofix/audiofix.bb |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-n450/recipes-bsp/audiofix/audiofix.bb b/meta-n450/recipes-bsp/audiofix/audiofix.bb
index 846d59e..3b1d272 100644
--- a/meta-n450/recipes-bsp/audiofix/audiofix.bb
+++ b/meta-n450/recipes-bsp/audiofix/audiofix.bb
@@ -2,10 +2,10 @@ SUMMARY = "Provide a basic init script to enable audio"
 DESCRIPTION = "This package provides an init script which enables the audio on startup via the amixer command.  It address a problem with the development board that has the audio muted on power on."
 SECTION = "base"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=md5=3f40d7994397109285ec7b81fdeb3b58"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
 
 PR = "r2"
-RDEPENDS = "amixer"
+RDEPENDS = "alsa-utils-amixer"
 
 SRC_URI = "file://n450_audiofix"
 
@@ -13,5 +13,5 @@ do_install () {
 	install -d ${D}${sysconfdir}/init.d
 	install -d ${D}${sysconfdir}/rc5.d
 	install -m 0755 ${WORKDIR}/n450_audiofix ${D}${sysconfdir}/init.d
-	ln -sf ../init.d/n450_audiofix ${D}/sysconfdir/rc5.d/S91n450_audiofix
+	ln -sf ${D}${sysconfdir}/init.d/n450_audiofix ${D}/${sysconfdir}/rc5.d/S91n450_audiofix
 }
-- 
1.7.0.4


