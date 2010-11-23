Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id E3A194C811CF
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 12:56:44 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A4937302B8
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 13:56:36 -0500 (EST)
Message-Id: <682f5da290827112524e8217fe6dd9c52c596a8d.1290624288.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1290624288.git.scott.a.garman@intel.com>
References: <cover.1290624288.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 23 Nov 2010 14:45:23 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A4937302B8.201A3
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 3/4] mtools: add version 4.0.15
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
X-List-Received-Date: Wed, 24 Nov 2010 18:56:45 -0000

This is the latest release of mtools, which is also GPLv3. Leaving
the previous recipe as-is since it is GPLv2.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../mtools/mtools/no-x11.gplv3.patch               |   15 ++++++++++++++
 meta/recipes-devtools/mtools/mtools_4.0.15.bb      |   21 ++++++++++++++++++++
 2 files changed, 36 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch
 create mode 100644 meta/recipes-devtools/mtools/mtools_4.0.15.bb

diff --git a/meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch b/meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch
new file mode 100644
index 0000000..7d1f545
--- /dev/null
+++ b/meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch
@@ -0,0 +1,15 @@
+# Disable building with X11 support.
+#
+# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+diff -urN mtools-4.0.15.orig//Makefile.in mtools-4.0.15//Makefile.in
+--- mtools-4.0.15.orig//Makefile.in	2010-10-17 08:41:09.000000000 -0700
++++ mtools-4.0.15//Makefile.in	2010-11-23 13:59:49.258258374 -0800
+@@ -146,7 +146,7 @@
+ CXXFLAGS  = $(CPPFLAGS) $(DEFS) $(MYCXXFLAGS) -I. @extraincludedir@ -I@srcdir@ $(USERCFLAGS)
+ LINK      = $(CC) $(LDFLAGS) $(USERLDFLAGS) @extralibdir@
+ ALLLIBS   = $(USERLDLIBS) $(MACHDEPLIBS) $(SHLIB) $(LIBS)
+-X_LDFLAGS = $(X_EXTRA_LIBS) $(X_LIBS) -lXau -lX11 $(LIBS)
++X_LDFLAGS = $(X_EXTRA_LIBS) $(X_LIBS) $(LIBS)
+ X_CCFLAGS = $(X_CFLAGS) $(CFLAGS)
+ 
+ all:    mtools $(LINKS) mkmanifest @FLOPPYD@ mtools.1 mtools.5
diff --git a/meta/recipes-devtools/mtools/mtools_4.0.15.bb b/meta/recipes-devtools/mtools/mtools_4.0.15.bb
new file mode 100644
index 0000000..08f42cc
--- /dev/null
+++ b/meta/recipes-devtools/mtools/mtools_4.0.15.bb
@@ -0,0 +1,21 @@
+SUMMARY = "Utilities to access MS-DOS disks without mounting them"
+DESCRIPTION = "Mtools is a collection of utilities to access MS-DOS disks from GNU and Unix without mounting them."
+HOMEPAGE = "http://www.gnu.org/software/mtools/"
+SECTION = "optional"
+LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+PR = "r0"
+
+SRC_URI = "${GNU_MIRROR}/mtools/mtools-${PV}.tar.bz2 \
+           file://mtools-makeinfo.patch \
+           file://no-x11.gplv3.patch"
+
+SRC_URI[md5sum] = "b7550b649af77812cb696a780e853f47"
+SRC_URI[sha256sum] = "290defca107cc183a17c98d3f7d00db02228b724084a2a818f1dd6ea86973899"
+
+inherit autotools
+
+EXTRA_OECONF = "--without-x"
+
+BBCLASSEXTEND = "native"
-- 
1.7.1


