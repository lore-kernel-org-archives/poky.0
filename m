Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 550044C80A8C
	for <poky@yoctoproject.org>; Mon, 23 May 2011 06:57:39 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4NBvcqf005027
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 23 May 2011 04:57:38 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 23 May 2011 04:57:38 -0700
Message-ID: <cf9012e8d10ed3bbd4cbbcd8ade25f8be05d3808.1306150610.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1306150610.git.xiaofeng.yan@windriver.com>
References: <cover.1306150610.git.xiaofeng.yan@windriver.com>
Old-Date: Mon, 23 May 2011 16:50:22 +0800
Date: Mon, 23 May 2011 19:56:01 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] poky-lsb: Add libQtOpenGL* to lsb image for all platform
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
X-List-Received-Date: Mon, 23 May 2011 11:57:39 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

For a lsb image prepared to meet lsb requirement, library "libQtOpenGL" must be included in it \
regardless of whether target platform provide graphic hardware or not?
In poky, meta-xlib is default configuration for libx11.
So qt4opengl can be supported when "meta-xlib" or "meta-dri" is enabled.
Adding libQtOpenGL to all target platform is only suitable in lsb image.
For other image, it depends on whether target platform has graphic function or not.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta-yocto/conf/distro/poky-lsb.conf         |    2 +-
 meta/recipes-extended/tasks/task-core-lsb.bb |   18 +-----------------
 2 files changed, 2 insertions(+), 18 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index eb1cf82..29f526d 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -6,4 +6,4 @@ DISTROOVERRIDES = "poky:linuxstdbase"
 DISTRO_FEATURES += "pam largefile"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
-
+QT_GLFLAGS = "-opengl"
diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
index b6c5ae5..a0a359e 100644
--- a/meta/recipes-extended/tasks/task-core-lsb.bb
+++ b/meta/recipes-extended/tasks/task-core-lsb.bb
@@ -151,6 +151,7 @@ RDEPENDS_task-core-lsb-python-add = "\
 RDEPENDS_task-core-lsb-graphic-add = "\
     libqtcore4 \
     libqtgui4 \
+    libqtopengl4 \
     libqtsql4 \
     libqtsvg4 \
     libqtxml4 \
@@ -170,23 +171,6 @@ RDEPENDS_task-core-lsb-graphic-add = "\
     liberation-fonts \
 "
 
-RDEPENDS_task-core-lsb-graphic-add_qemux86 = "\
-    libqtopengl4 \
-"
-RDEPENDS_task-core-lsb-graphic-add_atom-pc = "\
-    libqtopengl4 \
-"
-RDEPENDS_task-core-lsb-graphic-add_qemuppc = "\
-    libqtopengl4 \
-"
-RDEPENDS_task-core-lsb-graphic-add_emenlow = "\
-    libqtopengl4 \
-"
-
-RDEPENDS_task-core-lsb-graphic-add_mpc8315e-rdb = "\
-    libqtopengl4 \
-"
-
 #    mesa-dri 
 
 RDEPENDS_task-core-lsb-runtime-add = "\
-- 
1.7.0.4


