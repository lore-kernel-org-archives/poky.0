Return-Path: <laurentiu.palcu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 839ADE00741
	for <poky@yoctoproject.org>; Tue, 19 Mar 2013 09:29:58 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2013 09:29:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="308920404"
Received: from lpalcu-linux.rb.intel.com (HELO localhost.localdomain)
	([10.237.105.165])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2013 09:29:55 -0700
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 19 Mar 2013 18:29:51 +0200
Message-Id: <1363710591-32021-4-git-send-email-laurentiu.palcu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1363710591-32021-1-git-send-email-laurentiu.palcu@intel.com>
References: <1363710591-32021-1-git-send-email-laurentiu.palcu@intel.com>
Subject: [PATCH 3/3] (distro-alias|maintainers|package-regex).inc: mesa-dri -> mesa
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
X-List-Received-Date: Tue, 19 Mar 2013 16:29:58 -0000

[YOCTO #3385]

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc  |    4 ++--
 meta-yocto/conf/distro/include/maintainers.inc   |    4 ++--
 meta-yocto/conf/distro/include/package_regex.inc |    8 ++++----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 2246097..043c262 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -237,8 +237,8 @@ DISTRO_PN_ALIAS_pn-matchbox-themes-gtk = "OpenedHand"
 DISTRO_PN_ALIAS_pn-matchbox-wm-2 = "Mandriva=matchbox-window-manager Debian=matchbox-window-manager"
 DISTRO_PN_ALIAS_pn-matchbox-wm = "OpenedHand"
 DISTRO_PN_ALIAS_pn-menu-cache = "OSPDT"
-DISTRO_PN_ALIAS_pn-mesa-dri = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
-DISTRO_PN_ALIAS_pn-mesa-dri-glsl-native = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
+DISTRO_PN_ALIAS_pn-mesa = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
+DISTRO_PN_ALIAS_pn-mesa-glsl-native = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 DISTRO_PN_ALIAS_pn-meta-environment-i586 = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-ide-support = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-gmae = "OE-Core"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 0f7a872..4bef81f 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -516,8 +516,8 @@ RECIPE_MAINTAINER_pn-mc = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mdadm = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-menu-cache = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-mesa-demos = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-mesa-dri-glsl-native = "Constantin Musca <constantinx.musca@intel.com>"
-RECIPE_MAINTAINER_pn-mesa-dri = "Constantin Musca <constantinx.musca@intel.com>"
+RECIPE_MAINTAINER_pn-mesa-glsl-native = "Constantin Musca <constantinx.musca@intel.com>"
+RECIPE_MAINTAINER_pn-mesa = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-metacity = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-meta-environment-i586 = "Jessica Zhang <jessica.zhang@intel.com>"
 RECIPE_MAINTAINER_pn-meta-ide-support = "Jessica Zhang <jessica.zhang@intel.com>"
diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index fb1473d..4025e40 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -263,10 +263,10 @@ REGEX_URI_pn-bind = "ftp://ftp.isc.org/isc/bind9/"
 REGEX_pn-bind = "[hH][rR][eE][fF]=\"ftp://ftp.isc.org:21/isc/bind9/(?P<pver>((P?\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-dhcp = "ftp://ftp.isc.org/isc/dhcp/"
 REGEX_pn-dhcp = "[hH][rR][eE][fF]=\"ftp://ftp.isc.org:21/isc/dhcp/(dhcp\-)?(?P<pver>((P?\d+[\.\-_]*)+))/\""
-REGEX_URI_pn-mesa-dri = "ftp://ftp.freedesktop.org/pub/mesa/"
-REGEX_pn-mesa-dri = "[hH][rR][eE][fF]=\"ftp://ftp.freedesktop.org:21/pub/mesa/(?P<pver>((\d+[\.\-_]*)+))/\""
-REGEX_URI_pn-mesa-dri-glsl-native = "ftp://ftp.freedesktop.org/pub/mesa/"
-REGEX_pn-mesa-dri-glsl-native = "[hH][rR][eE][fF]=\"ftp://ftp.freedesktop.org:21/pub/mesa/(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_URI_pn-mesa = "ftp://ftp.freedesktop.org/pub/mesa/"
+REGEX_pn-mesa = "[hH][rR][eE][fF]=\"ftp://ftp.freedesktop.org:21/pub/mesa/(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_URI_pn-mesa-glsl-native = "ftp://ftp.freedesktop.org/pub/mesa/"
+REGEX_pn-mesa-glsl-native = "[hH][rR][eE][fF]=\"ftp://ftp.freedesktop.org:21/pub/mesa/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-nspr = "ftp://ftp.mozilla.org/pub/mozilla.org/nspr/releases/"
 REGEX_pn-nspr = "[hH][rR][eE][fF]=\"ftp://ftp.mozilla.org:21/pub/mozilla.org/nspr/releases/v(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-createrepo = "http://createrepo.baseurl.org/download/"
-- 
1.7.9.5


