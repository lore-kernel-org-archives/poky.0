Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 702534C800AC
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 05:00:00 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3MA00WM028747
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 22 Apr 2011 03:00:00 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 22 Apr 2011 02:59:59 -0700
Message-ID: <5a650713581d5aa78cb3bdc7896342dc5c815db3.1303465539.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1303465539.git.xiaofeng.yan@windriver.com>
References: <cover.1303465539.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 22 Apr 2011 17:43:31 +0800
Date: Fri, 22 Apr 2011 17:47:04 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] task-poky-lsb.bb: Add qt3, xdg, font to lsb-image
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
X-List-Received-Date: Fri, 22 Apr 2011 10:00:00 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Fix [YOCTO #816,#520]
Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/tasks/task-core-lsb.bb |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-core-lsb.bb b/meta/recipes-extended/tasks/task-core-lsb.bb
index ef8acb1..85ead18 100644
--- a/meta/recipes-extended/tasks/task-core-lsb.bb
+++ b/meta/recipes-extended/tasks/task-core-lsb.bb
@@ -3,7 +3,7 @@
 #
 
 DESCRIPTION = "Create Small Image Tasks"
-PR = "r3"
+PR = "r4"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
@@ -33,6 +33,7 @@ PACKAGES = "\
     task-core-lsb-graphic-add \
     task-core-lsb-runtime-add \
     task-core-lsb-command-add \
+    task-core-lsb-qt3 \
     "
 
 
@@ -50,6 +51,7 @@ RDEPENDS_task-core-lsb = "\
     task-core-lsb-graphic-add \
     task-core-lsb-runtime-add \
     task-core-lsb-command-add \
+    task-core-lsb-qt3 \
     "
 
 RDEPENDS_task-core-sys-extended = "\
@@ -130,9 +132,14 @@ RDEPENDS_task-core-lsb-command-add = "\
     mailx \
     msmtp \
     chkconfig \
+    xdg-utils \
 "
 #    cups
 
+RDEPENDS_task-core-lsb-qt3 = "\
+    qt-x11-free \
+"
+
 RDEPENDS_task-core-lsb-perl-add = "\
     perl-modules \
     perl-dev \
@@ -160,10 +167,14 @@ RDEPENDS_task-core-lsb-graphic-add = "\
     libxtst \
     qt4-plugin-sqldriver-sqlite \
     libx11-locale \
+    libqt-mt3 \
+    lib
     xorg-minimal-fonts \
     gdk-pixbuf-loader-ico \
     gdk-pixbuf-loader-bmp \
     gdk-pixbuf-loader-ani \
+    libqt-mt3 \
+    liberation-fonts \
 "
 
 RDEPENDS_task-core-lsb-graphic-add_qemux86 = "\
-- 
1.7.0.4


