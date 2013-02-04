Return-Path: <laurentiu.palcu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69935E006F5
	for <poky@yoctoproject.org>; Mon,  4 Feb 2013 03:43:05 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Feb 2013 03:43:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,598,1355126400"; d="scan'208";a="286271334"
Received: from lpalcu-linux (HELO localhost.localdomain) ([10.237.105.165])
	by fmsmga002.fm.intel.com with ESMTP; 04 Feb 2013 03:43:03 -0800
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Feb 2013 13:43:02 +0200
Message-Id: <1359978182-15464-1-git-send-email-laurentiu.palcu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] (distro_alias|maintainers|recipe_color).inc: remove update-modules
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
X-List-Received-Date: Mon, 04 Feb 2013 11:43:05 -0000

Remove update-modules references since recipe has been removed.

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |    1 -
 meta-yocto/conf/distro/include/maintainers.inc  |    1 -
 meta-yocto/conf/distro/include/recipe_color.inc |    1 -
 3 files changed, 3 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 2f56d44..a8c4df2 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -388,7 +388,6 @@ DISTRO_PN_ALIAS_pn-u-boot-mkimage = "Ubuntu=uboot-mkimage Debian=uboot-mkimage"
 DISTRO_PN_ALIAS_pn-udev-extraconf = "OE-Core"
 DISTRO_PN_ALIAS_pn-unfs-server = "OE-Core"
 DISTRO_PN_ALIAS_pn-update-alternatives-dpkg = "Opensuse=update-alternatives Mandriva=update-alternatives"
-DISTRO_PN_ALIAS_pn-update-modules = "OE-Core"
 DISTRO_PN_ALIAS_pn-update-rc.d = "OE-Core"
 DISTRO_PN_ALIAS_pn-usbinit = "OE-Core"
 DISTRO_PN_ALIAS_pn-util-macros = "Meego=xorg-x11-util-macros Fedora=xorg-x11-util-macros Mandriva=x11-util-macros"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 83e5202..dc76445 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -790,7 +790,6 @@ RECIPE_MAINTAINER_pn-unfs-server-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-unifdef = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-unzip = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-update-alternatives-dpkg = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-update-modules = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-update-rc.d = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-usbinit = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-usbutils = "Radu Moisan <radu.moisan@intel.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index f61250a..d5b6ce9 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -399,7 +399,6 @@ RECIPE_COLOR_pn-udev = "yellow"
 RECIPE_COLOR_pn-udev-extraconf = "yellow"
 RECIPE_COLOR_pn-unfs-server = "red"
 RECIPE_COLOR_pn-unzip = "yellow"
-RECIPE_COLOR_pn-update-modules = "yellow"
 RECIPE_COLOR_pn-update-rc.d = "yellow"
 RECIPE_COLOR_pn-usbinit = "red"
 RECIPE_COLOR_pn-util-macros = "yellow"
-- 
1.7.9.5


