Return-Path: <constantinx.musca@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 110E3E01246
	for <poky@yoctoproject.org>; Fri, 18 Jan 2013 04:06:45 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2013 04:06:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,491,1355126400"; d="scan'208";a="278610717"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2013 04:06:23 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Fri, 18 Jan 2013 14:07:07 +0200
Message-Id: <1358510827-14877-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH] gtk-directfb: rename to directfb
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
X-List-Received-Date: Fri, 18 Jan 2013 12:06:45 -0000

- core-image-gtk-directfb has been renamed to core-image-directfb
- packagegroup-core-gtk-directfb has been renamed to
packagegroup-core-directfb
- DirectFB is not supported by gtk versions >= 2.18

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc | 2 +-
 meta-yocto/conf/distro/include/maintainers.inc  | 2 +-
 meta-yocto/conf/distro/poky-tiny.conf           | 2 +-
 meta-yocto/conf/local.conf.sample.extended      | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 0699c5f..24a6ddf 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -284,7 +284,7 @@ DISTRO_PN_ALIAS_pn-packagegroup-core-boot = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-clutter = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-console = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-device-devel = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-gtk-directfb = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-directfb = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-lsb = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-nfs = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core = "OE-Core"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 5efb7d0..5c7d4a5 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -606,7 +606,7 @@ RECIPE_MAINTAINER_pn-packagegroup-core-buildessential = "Saul Wold <sgw@linux.in
 RECIPE_MAINTAINER_pn-packagegroup-core-clutter = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-console = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-device-devel = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-packagegroup-core-gtk-directfb = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-directfb = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-lsb = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-nfs = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-qt4e = "Paul Eggleton <paul.eggleton@linux.intel.com>"
diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 9197a7c..347280a 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -126,7 +126,7 @@ PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-basic] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-gtk-directfb] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-directfb] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-lsb-sdk] = "not buildable with poky-tiny"
diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index de46911..e5dfc89 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -15,7 +15,7 @@
 
 #DISTRO_FEATURES = "alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci ${DISTRO_FEATURES_LIBC}"
 
-# If you want to get an image based on gtk+directfb without x11, Please copy this variable to build/conf/local.conf
+# If you want to get an image based on directfb without x11, Please copy this variable to build/conf/local.conf
 #DISTRO_FEATURES = "alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g directfb ${DISTRO_FEATURES_LIBC}"
 
 # ENABLE_BINARY_LOCALE_GENERATION controls the generation of binary locale
-- 
1.7.11.7


