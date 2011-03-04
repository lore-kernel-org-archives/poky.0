Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC6F54C80AAC
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 13:42:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2011 11:42:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,265,1297065600"; d="scan'208";a="609190655"
Received: from unknown (HELO localhost) ([10.255.12.102])
	by orsmga002.jf.intel.com with ESMTP; 04 Mar 2011 11:42:18 -0800
Message-Id: <472f89dec06f0be43ff3e0638cac3f55f7b7e7cf.1299267630.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299267630.git.sgw@linux.intel.com>
References: <cover.1299267630.git.sgw@linux.intel.com>
Old-Date: Fri, 4 Mar 2011 17:38:13 +0800
Date: Fri, 04 Mar 2011 11:42:18 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 12/13] task-poky-lsb: Add packges needed by LSB Test Suite
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
X-List-Received-Date: Fri, 04 Mar 2011 19:42:44 -0000

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

These packages added into task-poky-lsb.bb are absent in lsb-image during lsb test

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-extended/tasks/task-poky-lsb.bb |   16 +++++++++++++++-
 1 files changed, 15 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-poky-lsb.bb b/meta/recipes-extended/tasks/task-poky-lsb.bb
index ee3ca2c..65b7565 100644
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
 
@@ -158,6 +160,10 @@ RDEPENDS_task-poky-lsb-graphic-add = "\
     libxi \
     libxtst \
     qt4-plugin-sqldriver-sqlite \
+    libx11-locale \
+    xorg-minimal-fonts \
+    gdk-pixbuf \
+
 "
 
 RDEPENDS_task-poky-lsb-graphic-add_qemux86 = "\
@@ -173,9 +179,17 @@ RDEPENDS_task-poky-lsb-runtime-add = "\
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
1.7.1.1


