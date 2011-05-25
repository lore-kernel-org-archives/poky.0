Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AAE5C4C80A4F
	for <poky@yoctoproject.org>; Wed, 25 May 2011 02:05:40 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4P75dgb022690
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 25 May 2011 00:05:40 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 25 May 2011 00:05:39 -0700
Message-ID: <0b5d04ab554b376330a21f1067f1e177bfcaa3fe.1306297759.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1306297759.git.xiaofeng.yan@windriver.com>
References: <cover.1306297759.git.xiaofeng.yan@windriver.com>
Old-Date: Wed, 25 May 2011 10:23:20 +0800
Date: Wed, 25 May 2011 15:03:51 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 2/2] task-core-lsb: Install libQtOpenGL* to lsb image
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
X-List-Received-Date: Wed, 25 May 2011 07:05:40 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Fix bug [#YOCTO 1020]
It is part of fixing bug [YOCTO #1020]. If another patch to add configuration for compiling qtopengl to poky-lsb.conf is merged to poky, \
then this bug will be fixed.
LSB Test Suite need library "libQtOpenGL*" in lsb image.
If a image has "mesa-xlib" or "mesa-dri", then opegl will run on target platform.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/tasks/task-core-lsb.bb |   18 +-----------------
 1 files changed, 1 insertions(+), 17 deletions(-)

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


