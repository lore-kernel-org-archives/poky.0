Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E539E00802
	for <poky@yoctoproject.org>; Wed, 18 Dec 2013 15:45:23 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Dec 2013 15:41:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,510,1384329600"; d="scan'208";a="454547775"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.128])
	by orsmga002.jf.intel.com with ESMTP; 18 Dec 2013 15:45:22 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 18 Dec 2013 15:45:22 -0800
Message-Id: <1387410322-31923-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH] meta-toolchain-sdk: Remove references from meta-yocto
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
X-List-Received-Date: Wed, 18 Dec 2013 23:45:24 -0000

[YOCTO #5676]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/conf-notes.txt                  | 1 -
 meta-yocto/conf/distro/include/distro_alias.inc | 1 -
 meta-yocto/conf/distro/include/recipe_color.inc | 1 -
 3 files changed, 3 deletions(-)

diff --git a/meta-yocto/conf/conf-notes.txt b/meta-yocto/conf/conf-notes.txt
index 503cffa..66e6319 100644
--- a/meta-yocto/conf/conf-notes.txt
+++ b/meta-yocto/conf/conf-notes.txt
@@ -2,7 +2,6 @@ Common targets are:
     core-image-minimal
     core-image-sato
     meta-toolchain
-    meta-toolchain-sdk
     adt-installer
     meta-ide-support
 
diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index a115d9b..d113606 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -281,7 +281,6 @@ DISTRO_PN_ALIAS_pn-meta-ide-support = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-qt = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-qte = "OE-Core"
-DISTRO_PN_ALIAS_pn-meta-toolchain-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-mini-x-session = "OSPDT"
 DISTRO_PN_ALIAS_pn-mkfontdir = "Mandriva=mkfontdir Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
 DISTRO_PN_ALIAS_pn-mkfontscale = "Mandriva=mkfontscale Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 8e36ea3..7e50500 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -271,7 +271,6 @@ RECIPE_COLOR_pn-menu-cache = "yellow"
 RECIPE_COLOR_pn-mesa-demos = "red"
 RECIPE_COLOR_pn-meta-ide-support = "red"
 RECIPE_COLOR_pn-meta-toolchain = "red"
-RECIPE_COLOR_pn-meta-toolchain-sdk = "red"
 RECIPE_COLOR_pn-mingetty = "red"
 RECIPE_COLOR_pn-mktemp="red"
 RECIPE_COLOR_pn-mobile-broadband-provider-info = "red"
-- 
1.8.3.1


