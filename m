Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2E914C80A89
	for <poky@yoctoproject.org>; Sat,  5 Mar 2011 00:23:23 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Mar 2011 22:23:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,268,1297065600"; d="scan'208";a="397989012"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by azsmga001.ch.intel.com with ESMTP; 04 Mar 2011 22:20:52 -0800
Message-Id: <98cbe1740021ab15f6ca890c35e3923b3ec11aec.1299305989.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299305989.git.sgw@linux.intel.com>
References: <cover.1299305989.git.sgw@linux.intel.com>
Old-Date: Fri, 4 Mar 2011 14:51:10 -0800
Date: Fri, 04 Mar 2011 22:20:52 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 1/3] task-poky-lsb: Remove new eglibc-* packages
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
X-List-Received-Date: Sat, 05 Mar 2011 06:23:24 -0000

From: Saul Wold <sgw@linux.intel.com>

Remove the new eglibc packages that were part of another
patch and did not get cleanup here.

(From OE-Core rev: bddd9012d2a6393afceef752389d0006f2e47681)

Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-extended/tasks/task-poky-lsb.bb |   13 +++++++------
 1 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-poky-lsb.bb b/meta/recipes-extended/tasks/task-poky-lsb.bb
index 65b7565..42fd8e0 100644
--- a/meta/recipes-extended/tasks/task-poky-lsb.bb
+++ b/meta/recipes-extended/tasks/task-poky-lsb.bb
@@ -163,7 +163,6 @@ RDEPENDS_task-poky-lsb-graphic-add = "\
     libx11-locale \
     xorg-minimal-fonts \
     gdk-pixbuf \
-
 "
 
 RDEPENDS_task-poky-lsb-graphic-add_qemux86 = "\
@@ -183,13 +182,15 @@ RDEPENDS_task-poky-lsb-runtime-add = "\
     liburi-perl \
     libxml-parser-perl \
     libxml-perl \
+    eglibc-localedata-posix \
     eglibc-extra-nss \
-    eglibc-localedatas \
-    eglibc-gconvs \
-    eglibc-charmaps \
-    eglibc-binarys \
     eglibc-pcprofile \
     eglibc-pic \
     eglibc-utils \
-
 "
+
+#    eglibc-localedatas \
+#    eglibc-gconvs \
+#    eglibc-charmaps \
+#    eglibc-binarys \
+#
-- 
1.7.1.1


