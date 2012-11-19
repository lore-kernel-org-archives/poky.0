Return-Path: <constantinx.musca@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB74FE006C2
	for <poky@yoctoproject.org>; Mon, 19 Nov 2012 04:39:19 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Nov 2012 04:39:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,279,1352102400"; d="scan'208";a="219656402"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by azsmga001.ch.intel.com with ESMTP; 19 Nov 2012 04:39:17 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Mon, 19 Nov 2012 14:39:48 +0200
Message-Id: <1353328788-31664-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH] poky-tiny.conf: blacklist inappropriate image options
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
X-List-Received-Date: Mon, 19 Nov 2012 12:39:20 -0000

Blacklist all images that aren't core-image-minimal-*

[YOCTO #2565]

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index d40748e..121534e 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -120,3 +120,20 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
 # will build perl in case this package is installed. Since we don't care about
 # this script for the purposes of tiny, remove the dependency from here.
 RDEPENDS_${PN}-mtrace_pn-eglibc = ""
+
+INHERIT_DISTRO += "blacklist"
+PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-basic] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-gtk-directfb] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-lsb-sdk] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-rt] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-rt-sdk] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-sato] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-sato-dev] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
+PNBLACKLIST[qt4e-demo-image] = "not buildable with poky-tiny"
-- 
1.7.11.7


