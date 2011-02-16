Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17A704C8090F
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:14:45 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1G5EiM2023731
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 21:14:44 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:44 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:43 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue, 15 Feb 2011 23:12:41 -0600
Message-Id: <b3e08a8dc285906c0fd4fde175c1c53fd70b8961.1297832946.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297832946.git.mark.hatle@windriver.com>
References: <cover.1297832946.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297832946.git.mark.hatle@windriver.com>
References: <cover.1297832946.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 16 Feb 2011 05:14:44.0029 (UTC)
	FILETIME=[6BF766D0:01CBCD98]
Subject: [PATCH 2/4] rpm: Avoid fsync when writing files
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
X-List-Received-Date: Wed, 16 Feb 2011 05:14:45 -0000

By default RPM strives for the safest possible file creation and
enforces fsync on each file.  This changes that default by backporting
the fsync disabled from the latest CVS snapshot.

This will cut a few minutes off the rootfs generation using RPM.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch |   34 +++++++++++++++++++++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb          |    1 +
 2 files changed, 35 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch

diff --git a/meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch b/meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch
new file mode 100644
index 0000000..33039ad
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch
@@ -0,0 +1,34 @@
+Backport from RPM 5.4.1 CVS, disabled fsync.
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+diff -ur rpm-5.4.0.orig/CHANGES rpm-5.4.0/CHANGES
+--- rpm-5.4.0.orig/CHANGES	2010-12-29 07:51:38.000000000 -0600
++++ rpm-5.4.0/CHANGES	2011-02-15 20:54:27.021926840 -0600
+@@ -1,4 +1,5 @@
+ 5.4.0 -> 5.4.1:
++    - jbj: remove fsync(2) after file install, its intolerably slow.
+ 
+ 5.3.7 -> 5.4.0:
+     - jbj: remove markReplacedFiles.
+diff -ur rpm-5.4.0.orig/lib/fsm.c rpm-5.4.0/lib/fsm.c
+--- rpm-5.4.0.orig/lib/fsm.c	2009-12-10 12:52:18.000000000 -0600
++++ rpm-5.4.0/lib/fsm.c	2011-02-15 20:55:04.372938221 -0600
+@@ -1017,7 +1017,17 @@
+ 	    (void) fsmNext(fsm, IOSM_NOTIFY);
+     }
+ 
++#ifdef DYING
++/* Measurements from installing kernel-source package:
++ * +fsync
++ *     total:               1      0.000000 MB    640.854524 secs
++ * +fdatasync
++ *     total:               1      0.000000 MB    419.983200 secs
++ * w/o fsync/fdsatasync:
++ *     total:               1      0.000000 MB     12.492918 secs
++ */
+     xx = fsync(Fileno(fsm->wfd));
++#endif
+ 
+     if (st->st_size > 0 && (fsm->fdigest || fsm->digest)) {
+ 	void * digest = NULL;
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index 93951d2..45dd4e1 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -54,6 +54,7 @@ SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;ex
 	   file://header-include-fix.patch \
 	   file://rpm-platform.patch \
 	   file://rpm-showrc.patch \
+	   file://rpm-nofsync.patch \
 	  "
 
 #           file://hdraddorappend.patch \
-- 
1.7.3.4


