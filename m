Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C24E64C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 10:33:13 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Dec 2010 08:33:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,356,1288594800"; d="scan'208";a="687831269"
Received: from unknown (HELO localhost) ([10.255.16.75])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 08:33:12 -0800
Message-Id: <5093f5d5cb0c0a1387bdbf96a216997fb008c026.1292516982.git.josh@linux.intel.com>
In-Reply-To: <cover.1292516982.git.josh@linux.intel.com>
References: <cover.1292516982.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Tue, 14 Dec 2010 18:29:43 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/8] libowl-av: fix for Make 3.82
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
X-List-Received-Date: Thu, 16 Dec 2010 16:33:14 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../owl-video-widget/libowl-av/make-382.patch      |   11 +++++++++++
 .../recipes-sato/owl-video-widget/libowl-av_svn.bb |    5 +++--
 2 files changed, 14 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-sato/owl-video-widget/libowl-av/make-382.patch

diff --git a/meta/recipes-sato/owl-video-widget/libowl-av/make-382.patch b/meta/recipes-sato/owl-video-widget/libowl-av/make-382.patch
new file mode 100644
index 0000000..6ba37fb
--- /dev/null
+++ b/meta/recipes-sato/owl-video-widget/libowl-av/make-382.patch
@@ -0,0 +1,11 @@
+Index: libowl-av/Makefile.am
+===================================================================
+--- libowl-av.orig/Makefile.am
++++ libowl-av/Makefile.am
+@@ -14,5 +14,5 @@ EXTRA_DIST = libowl-av.pc.in libowl-av.v
+ MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub configure depcomp intltool-extract intltool-merge intltool-update install-sh ltmain.sh Makefile.in missing
+ 
+ snapshot:
+-        $(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
++	$(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
+ 
diff --git a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
index e00d3b6..4eeeed6 100644
--- a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
+++ b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
@@ -13,11 +13,12 @@ RDEPENDS = "gst-meta-base"
 RRECOMMENDS = "gst-meta-audio gst-meta-video"
 
 PV = "0.0+svnr${SRCREV}"
-PR = "r4"
+PR = "r5"
 
 S = "${WORKDIR}/${PN}"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http \
-           file://gst_change_state.patch"
+           file://gst_change_state.patch \
+	   file://make-382.patch"
 
 inherit autotools pkgconfig
-- 
1.7.3.3


