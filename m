Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6CB374C811F8
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:29:28 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Dec 2010 08:29:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="868560975"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2010 08:29:27 -0800
Message-Id: <a8b8557e4cb34b594bb620eb276bcaf7a8e0a8e3.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 12:27:52 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/14] owl-video-widget: fix Makefile for super strict make 3.82
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
X-List-Received-Date: Wed, 15 Dec 2010 16:29:28 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../owl-video-widget/owl-video/make-382.patch      |   15 +++++++++++++++
 .../recipes-sato/owl-video-widget/owl-video_svn.bb |    3 ++-
 2 files changed, 17 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-sato/owl-video-widget/owl-video/make-382.patch

diff --git a/meta/recipes-sato/owl-video-widget/owl-video/make-382.patch b/meta/recipes-sato/owl-video-widget/owl-video/make-382.patch
new file mode 100644
index 0000000..7d8aff7
--- /dev/null
+++ b/meta/recipes-sato/owl-video-widget/owl-video/make-382.patch
@@ -0,0 +1,15 @@
+Make 3.82 is much stricter and demands tabs. Obey.
+
+JL - 15/12/10
+
+Index: video/Makefile.am
+===================================================================
+--- video.orig/Makefile.am
++++ video/Makefile.am
+@@ -4,5 +4,5 @@ SUBDIRS = src
+ MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub configure depcomp intltool-extract intltool-merge intltool-update install-sh ltmain.sh Makefile.in missing
+ 
+ snapshot:
+-        $(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
++	$(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
+ 
diff --git a/meta/recipes-sato/owl-video-widget/owl-video_svn.bb b/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
index 07c52ef..5419bea 100644
--- a/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
+++ b/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
@@ -21,7 +21,8 @@ SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=video;proto=http \
            file://stock_volume-min.png \
            file://stock_volume-med.png \
            file://stock_volume-max.png \
-           file://owl-video-widget.desktop"
+           file://owl-video-widget.desktop \
+	   file://make-382.patch"
 
 inherit autotools pkgconfig
 
-- 
1.7.3.3


