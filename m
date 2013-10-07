Return-Path: <cristiana.voicu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88898E016BE
	for <poky@yoctoproject.org>; Mon,  7 Oct 2013 06:36:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Oct 2013 06:33:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1050,1371106800"; d="scan'208";a="415173539"
Received: from cvoicu-vostro-460.rb.intel.com ([10.237.105.65])
	by orsmga002.jf.intel.com with ESMTP; 07 Oct 2013 06:36:42 -0700
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Mon,  7 Oct 2013 16:41:13 +0300
Message-Id: <1381153273-16725-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH_V2] maintainers.inc: remove obsolete recipes
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
X-List-Received-Date: Mon, 07 Oct 2013 13:36:54 -0000

This patch removes some references on imake, xorg-cf-files and transfig
from maintainers, distro_alias, recipe_color, package_regex and seperatebuilddir
files. Transfig, imake and the associated xorg-cf-files were removed.

Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc  |    2 --
 meta-yocto/conf/distro/include/maintainers.inc   |    3 ---
 meta-yocto/conf/distro/include/package_regex.inc |    2 --
 meta-yocto/conf/distro/include/recipe_color.inc  |    2 --
 meta/conf/distro/include/seperatebuilddir.inc    |    4 ----
 5 files changed, 13 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 731380f..d27f3f2 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -160,7 +160,6 @@ DISTRO_PN_ALIAS_pn-hello-mod = "OE-Core"
 DISTRO_PN_ALIAS_pn-hostap-conf = "OE-Core"
 DISTRO_PN_ALIAS_pn-hwlatdetect = "OSPDT"
 DISTRO_PN_ALIAS_pn-icecc-create-env = "OE-Core"
-DISTRO_PN_ALIAS_pn-imake = "Mandriva=xutils Ubuntu=xutils"
 DISTRO_PN_ALIAS_pn-init-ifupdown = "Debian=ifupdown Ubuntu=ifupdown"
 DISTRO_PN_ALIAS_pn-initramfs-boot = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-framework = "OE-Core"
@@ -473,7 +472,6 @@ DISTRO_PN_ALIAS_pn-xineramaproto = "Meego=xorg-x11-proto-xineramaproto Ubuntu=x1
 DISTRO_PN_ALIAS_pn-xinput-calibrator = "Fedora=xinput-calibrator Mandravia=xinput-calibrator Ubuntu=xinput-calibrator"
 DISTRO_PN_ALIAS_pn-xkbcomp = "Ubuntu=x11-xkb-utils Fedora=xorg-x11-xkb-utils"
 DISTRO_PN_ALIAS_pn-xmodmap = "Meego=xorg-x11-utils-xmodmap Fedora=xorg-x11-server-utils Ubuntu=x11-xserver-utils"
-DISTRO_PN_ALIAS_pn-xorg-cf-files = "OE-Core"
 DISTRO_PN_ALIAS_pn-xorg-minimal-fonts = "Ubuntu=xfonts-base Fedora=xorg-x11-fonts-base"
 DISTRO_PN_ALIAS_pn-xprop = "Meego=xorg-x11-utils-xprop Fedora=xorg-x11-utils Ubuntu=x11-utils"
 DISTRO_PN_ALIAS_pn-xproto = "Meego=xorg-x11-proto-xproto Fedora=xorg-x11-proto-devel Ubuntu=x11proto-core-dev Debian=x11proto-core-dev Opensuse=xorg-x11-proto-devel Mandriva=x11-proto-devel"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 9aefca8..b6de775 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -245,7 +245,6 @@ RECIPE_MAINTAINER_pn-hostap-utils = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-hwlatdetect = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-icecc-create-env-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-icu = "Valentin Popa <valentin.popa@intel.com>"
-RECIPE_MAINTAINER_pn-imake = "Cristiana Voicu <cristiana.voicu@intel.com>"
 RECIPE_MAINTAINER_pn-initramfs-boot = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-initramfs-framework = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-initramfs-live-boot = "Saul Wold <sgw@linux.intel.com>"
@@ -645,7 +644,6 @@ RECIPE_MAINTAINER_pn-tiff = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-time = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tiny-init = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-trace-cmd = "Darren Hart <dvhart@linux.intel.com>"
-RECIPE_MAINTAINER_pn-transfig = "Cristiana Voicu <cristiana.voicu@intel.com>"
 RECIPE_MAINTAINER_pn-tremor = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-tslib = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Valentin Popa <valentin.popa@intel.com>"
@@ -719,7 +717,6 @@ RECIPE_MAINTAINER_pn-xinput-calibrator = "Laurentiu Palcu <laurentiu.palcu@intel
 RECIPE_MAINTAINER_pn-xkbcomp = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xkeyboard-config = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xmodmap = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-RECIPE_MAINTAINER_pn-xorg-cf-files = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-xorg-minimal-fonts = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xprop = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xproto = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 2f080dd..89cd366 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -259,8 +259,6 @@ REGEX_URI_pn-tiff = "ftp://ftp.remotesensing.org/pub/libtiff/"
 REGEX_pn-tiff = "[hH][rR][eE][fF]=\"ftp://ftp.remotesensing.org:21/pub/libtiff/tiff-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-tiff-native = "ftp://ftp.remotesensing.org/pub/libtiff/"
 REGEX_pn-tiff-native = "[hH][rR][eE][fF]=\"ftp://ftp.remotesensing.org:21/pub/libtiff/tiff-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
-REGEX_URI_pn-transfig-native = "http://sourceforge.net/projects/mcj/files/mcj-source/"
-REGEX_pn-transfig-native = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/mcj/files/mcj-source/transfig.(?P<pver>((\d+[\.\-_]*)+[a-z]?)).tar.gz/download\""
 REGEX_URI_pn-tslib = "http://sourceforge.net/projects/tslib.berlios/files/"
 REGEX_pn-tslib = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/tslib.berlios/files/tslib\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.bz2/download\""
 REGEX_URI_pn-tzdata = "ftp://ftp.iana.org/tz/releases/"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 70871f1..6fd4966 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -127,7 +127,6 @@ RECIPE_COLOR_pn-hostap-conf = "red"
 RECIPE_COLOR_pn-hostap-utils="yellow"
 RECIPE_COLOR_pn-icon-naming-utils = "red"
 RECIPE_COLOR_pn-icu = "yellow"
-RECIPE_COLOR_pn-imake = "red"
 RECIPE_COLOR_pn-initramfs-boot = "yellow"
 RECIPE_COLOR_pn-initramfs-live-boot = "yellow"
 RECIPE_COLOR_pn-initramfs-live-install = "yellow"
@@ -383,7 +382,6 @@ RECIPE_COLOR_pn-telepathy-gabble = "red"
 RECIPE_COLOR_pn-tidy = "red"
 RECIPE_COLOR_pn-time = "yellow"
 RECIPE_COLOR_pn-tinylogin = "yellow"
-RECIPE_COLOR_pn-transfig = "yellow"
 RECIPE_COLOR_pn-trapproto = "yellow"
 RECIPE_COLOR_pn-tslib = "yellow"
 RECIPE_COLOR_pn-ttf-bitstream-vera = "yellow"
diff --git a/meta/conf/distro/include/seperatebuilddir.inc b/meta/conf/distro/include/seperatebuilddir.inc
index 8f2ebfa..c067183 100644
--- a/meta/conf/distro/include/seperatebuilddir.inc
+++ b/meta/conf/distro/include/seperatebuilddir.inc
@@ -234,8 +234,6 @@ B_pn-help2man-native = "${SEPB}"
 B_pn-icon-naming-utils-native = "${SEPB}"
 B_pn-icu = "${SEPB}"
 B_pn-icu-native = "${SEPB}"
-B_pn-imake = "${SEPB}"
-B_pn-imake-native = "${SEPB}"
 B_pn-inputproto = "${SEPB}"
 B_pn-inputproto-native = "${SEPB}"
 B_pn-intltool = "${SEPB}"
@@ -753,8 +751,6 @@ B_pn-xkbcomp = "${SEPB}"
 B_pn-xkbcomp-native = "${SEPB}"
 B_pn-xkeyboard-config = "${SEPB}"
 B_pn-xmodmap = "${SEPB}"
-B_pn-xorg-cf-files = "${SEPB}"
-B_pn-xorg-cf-files-native = "${SEPB}"
 B_pn-xprop = "${SEPB}"
 B_pn-xproto = "${SEPB}"
 B_pn-xproto-native = "${SEPB}"
-- 
1.7.9.5


