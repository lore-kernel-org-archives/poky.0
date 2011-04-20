Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8877D4C80581
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 07:58:34 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Apr 2011 05:58:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,246,1301900400"; d="scan'208";a="736021261"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by orsmga001.jf.intel.com with ESMTP; 20 Apr 2011 05:58:33 -0700
Message-Id: <b995b405c68992dd04cdd856947d612f1bbd0156.1303303969.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1303303969.git.edwin.zhai@intel.com>
References: <cover.1303303969.git.edwin.zhai@intel.com>
Old-Date: Thu, 14 Apr 2011 10:27:27 +0800
Date: Wed, 20 Apr 2011 20:58:25 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/2] gtkhtml2: Upgrade to svn r1161 (from r1144)
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
X-List-Received-Date: Wed, 20 Apr 2011 12:58:34 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb        |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 9a3ae7e..4da44ce 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -49,7 +49,7 @@ SRCREV_pn-fstests ??= "426"
 SRCREV_pn-gaku ??= "399"
 SRCREV_pn-gconf-dbus ??= "705"
 SRCREV_pn-gconf-dbus-native ??= "705"
-SRCREV_pn-gtkhtml2 ??= "1144"
+SRCREV_pn-gtkhtml2 ??= "1161"
 SRCREV_pn-gtk-sato-engine ??= "163"
 SRCREV_pn-gtk-theme-torturer ??= "99962ae39bb5aadb31929b25c58e1a053f9c9545"
 SRCREV_pn-gtk-theme-darkilouche ??= "b4ce102a303d1176107a9d9d28c14f7da78feedd"
diff --git a/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb b/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb
index ac921bf..ea99b23 100644
--- a/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb
+++ b/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "A GTK+ HTML rendering library."
 LICENSE = "LGPLv2"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=55ca817ccb7d5b5b66355690e9abc605"
 PV = "2.11.0+svnr${SRCPV}"
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "svn://anonymous@svn.gnome.org/svn/gtkhtml2/;module=trunk \
 	http://svn.o-hand.com/repos/web/trunk/patches/at-import_box-pos.patch;patch=1;pnum=0;maxrev=1157;name=patch1 \
-- 
1.7.1


