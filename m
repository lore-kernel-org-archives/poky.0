Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8F1E4C80048
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:29:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 08:29:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="362092917"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 08:29:34 -0800
Message-Id: <171e709ae6f4b1a7640bf393f57aa787648cdc0f.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 12:58:09 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/14] dates: fix for Make 3.82
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
X-List-Received-Date: Wed, 15 Dec 2010 16:29:36 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-sato/pimlico/dates/make-382.patch |   16 ++++++++++++++++
 meta/recipes-sato/pimlico/dates_git.bb         |    5 +++--
 2 files changed, 19 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-sato/pimlico/dates/make-382.patch

diff --git a/meta/recipes-sato/pimlico/dates/make-382.patch b/meta/recipes-sato/pimlico/dates/make-382.patch
new file mode 100644
index 0000000..9147361
--- /dev/null
+++ b/meta/recipes-sato/pimlico/dates/make-382.patch
@@ -0,0 +1,16 @@
+Make 3.82 is offended by the use of spaces instead of tabs. This has been fixed
+in upstream git.
+
+JL - 15/12/10
+
+Index: git/Makefile.am
+===================================================================
+--- git.orig/Makefile.am
++++ git/Makefile.am
+@@ -7,5 +7,5 @@ DISTCLEANFILES = intltool-extract intlto
+ MAINTAINERCLEANFILES = $(DISTCLEANFILES) aclocal.m4 compile config.guess config.sub configure depcomp install-sh ltmain.sh Makefile.in missing
+ 
+ snapshot:
+-        $(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
++	$(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
+ 
diff --git a/meta/recipes-sato/pimlico/dates_git.bb b/meta/recipes-sato/pimlico/dates_git.bb
index 49ca4ec..d09f4e6 100644
--- a/meta/recipes-sato/pimlico/dates_git.bb
+++ b/meta/recipes-sato/pimlico/dates_git.bb
@@ -6,8 +6,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://src/gconf-bridge.c;endline=22;md5=ad7626c6daf4aec590474a243f4912fa"
 
 PV = "0.4.11+git${SRCPV}"
-PR = "r0"
+PR = "r1"
 
 S = "${WORKDIR}/git"
 
-SRC_URI = "git://git.gnome.org/${PN};protocol=git"
+SRC_URI = "git://git.gnome.org/${PN};protocol=git \
+	   file://make-382.patch"
-- 
1.7.3.3


