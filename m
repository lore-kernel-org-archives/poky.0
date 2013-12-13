Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CAF6E007D9
	for <poky@yoctoproject.org>; Fri, 13 Dec 2013 04:59:43 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2013 04:59:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,478,1384329600"; d="scan'208";a="424179612"
Received: from junemccl-mobl.ger.corp.intel.com (HELO
	helios.ger.corp.intel.com) ([10.252.122.17])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2013 04:59:17 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 13 Dec 2013 12:59:14 +0000
Message-Id: <1386939554-22012-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] distro_alias.inc: drop external-*
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
X-List-Received-Date: Fri, 13 Dec 2013 12:59:44 -0000

These are all obsolete now.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 4c838c8b..a115d9b 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -109,9 +109,6 @@ DISTRO_PN_ALIAS_pn-eglinfo-x11 = "OE-Core"
 DISTRO_PN_ALIAS_pn-emgd-driver-bin = "Intel"
 DISTRO_PN_ALIAS_pn-encodings = "Ubuntu=xfonts-encodings Mandriva=x11-font-encodings Debian=xfonts-encodings"
 DISTRO_PN_ALIAS_pn-evieext = "Meego=xorg-x11-proto-evieext Debian=x11proto-evie"
-DISTRO_PN_ALIAS_pn-external-csl-toolchain = "OE-Core"
-DISTRO_PN_ALIAS_pn-external-poky-toolchain = "OE-Core"
-DISTRO_PN_ALIAS_pn-external-python-tarball = "OE-Core"
 DISTRO_PN_ALIAS_pn-fixesproto = "Meego=xorg-x11-proto-fixesproto"
 DISTRO_PN_ALIAS_pn-font-alias = "Fedora=xorg-x11-fonts-base Mandriva=x11-font-alias Meego=xorg-x11-fonts"
 DISTRO_PN_ALIAS_pn-fontcacheproto = "Meego=xorg-x11-proto-fontcacheproto"
-- 
1.8.1.2


