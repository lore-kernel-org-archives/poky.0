Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 985924C80772
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 03:39:06 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p249d6D0005372
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 4 Mar 2011 01:39:06 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 4 Mar 2011 01:39:05 -0800
Message-ID: <61e9821c548e90d838ae31c5a579c4f06c669ef7.1299231297.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1299231297.git.xiaofeng.yan@windriver.com>
References: <cover.1299231297.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 4 Mar 2011 17:29:29 +0800
Date: Fri, 4 Mar 2011 17:38:13 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] task-poky-lsb: Add packges needed by LSB Test Suite
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
X-List-Received-Date: Fri, 04 Mar 2011 09:39:06 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

These packages added into task-poky-lsb.bb are absent in lsb-image during lsb test

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/tasks/task-poky-lsb.bb |   16 +++++++++++++++-
 1 files changed, 15 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-poky-lsb.bb b/meta/recipes-extended/tasks/task-poky-lsb.bb
index a78e5ae..07f8e6f 100644
--- a/meta/recipes-extended/tasks/task-poky-lsb.bb
+++ b/meta/recipes-extended/tasks/task-poky-lsb.bb
@@ -114,6 +114,7 @@ RDEPENDS_task-poky-misc = "\
     gettext \
     groff \
     lsb \
+    lsbsetup \
     lsof \
     man \
     man-pages \
@@ -129,6 +130,7 @@ RDEPENDS_task-poky-lsb-command-add = "\
     fontconfig-utils \
     mailx \
     msmtp \
+    chkconfig \
 "
 #    cups
 
@@ -157,6 +159,10 @@ RDEPENDS_task-poky-lsb-graphic-add = "\
     libxi \
     libxtst \
     qt4-plugin-sqldriver-sqlite \
+    libx11-locale \
+    xorg-minimal-fonts \
+    gdk-pixbuf \
+
 "
 
 RDEPENDS_task-poky-lsb-graphic-add_qemux86 = "\
@@ -172,9 +178,17 @@ RDEPENDS_task-poky-lsb-runtime-add = "\
     ldd \
     pam-plugin-wheel \
     e2fsprogs-mke2fs \
-    eglibc-localedata-posix \
     mkfontdir \
     liburi-perl \
     libxml-parser-perl \
     libxml-perl \
+    eglibc-extra-nss \
+    eglibc-localedatas \
+    eglibc-gconvs \
+    eglibc-charmaps \
+    eglibc-binarys \
+    eglibc-pcprofile \
+    eglibc-pic \
+    eglibc-utils \
+
 "
-- 
1.7.0.4


