Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id F157F4C80FBE
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 10:33:20 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Dec 2010 08:33:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,355,1288594800"; d="scan'208";a="362653565"
Received: from unknown (HELO localhost) ([10.255.16.75])
	by azsmga001.ch.intel.com with ESMTP; 16 Dec 2010 08:33:19 -0800
Message-Id: <5e8efc4923c59c821b24935561754d148f9b69d0.1292516982.git.josh@linux.intel.com>
In-Reply-To: <cover.1292516982.git.josh@linux.intel.com>
References: <cover.1292516982.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 12:27:52 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/8] owl-video-widget: fix Makefile for super strict make 3.82
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
X-List-Received-Date: Thu, 16 Dec 2010 16:33:21 -0000

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


