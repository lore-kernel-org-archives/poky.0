Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEE0DE00308
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960399"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:27 -0700
Message-Id: <f76777b9f3463d2690519c768d762233570366c4.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 15/17] web: switch to git
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:33 -0000

The SVN repo is no longer available and we don't have a mirror of the
SVN tarball.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-sato/web/{web_svn.bb => web_git.bb}   |    7 ++++---
 2 files changed, 5 insertions(+), 4 deletions(-)
 rename meta/recipes-sato/web/{web_svn.bb => web_git.bb} (75%)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 20f54d9..0521fe5 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -180,7 +180,7 @@ SRCREV_pn-tidy ??= "e25416e1293e1074bfa6727c80527dcff5b1f3cb"
 SRCREV_pn-ubootchart ??= "10"
 SRCREV_pn-webkit-gtk ??= "72836"
 SRCREV_pn-web-webkit ??= "130"
-SRCREV_pn-web ??= "131"
+SRCREV_pn-web ??= "8adaf105a0cbfd835ea5d3915d7dee22586208e7"
 SRCREV_pn-xcb-proto ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
 SRCREV_pn-xcb-proto-native ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
 SRCREV_pn-xf86-video-intel ??= "87ea531c5dc5b39809395b277c330854aaaaf019"
diff --git a/meta/recipes-sato/web/web_svn.bb b/meta/recipes-sato/web/web_git.bb
similarity index 75%
rename from meta/recipes-sato/web/web_svn.bb
rename to meta/recipes-sato/web/web_git.bb
index bdcdaba..0432842 100644
--- a/meta/recipes-sato/web/web_svn.bb
+++ b/meta/recipes-sato/web/web_git.bb
@@ -4,15 +4,16 @@ DEPENDS = "libxml2 glib-2.0 gtk+ libglade gtkhtml2 curl gconf js libowl"
 DESCRIPTION = "Web is a multi-platform web browsing application."
 PR = "r4"
 
-PV = "0.0+svnr${SRCPV}"
+PV = "0.0+git${SRCPV}"
 
-SRC_URI = 	"svn://svn.o-hand.com/repos/${PN};module=trunk;proto=http \
+SRC_URI = 	"git://git.yoctoproject.org/web-sato;protocol=git \
 		file://owl-window-menu.patch \
+		file://makefile-whitespace.patch \
 		"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-S = "${WORKDIR}/trunk"
+S = "${WORKDIR}/git"
 
 do_unpack_append () {
 	bb.build.exec_func('do_remove_patches', d)
-- 
1.7.7


