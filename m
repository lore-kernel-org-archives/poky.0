Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 112B94C80AA9
	for <poky@yoctoproject.org>; Mon, 16 May 2011 19:38:30 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 May 2011 17:38:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,222,1304319600"; d="scan'208";a="643535538"
Received: from miles.jf.intel.com (HELO localhost) ([10.7.199.89])
	by orsmga002.jf.intel.com with ESMTP; 16 May 2011 17:38:21 -0700
Message-Id: <f4ea0df72912b2d9493ff355f8be5e8f25962bfa.1305592601.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1305592601.git.scott.a.garman@intel.com>
References: <cover.1305592601.git.scott.a.garman@intel.com>
Old-Date: Mon, 16 May 2011 17:34:13 -0700
Date: Mon, 16 May 2011 17:38:21 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 1/1] recipes: add Upstream-Status to various recipe	patches
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
X-List-Received-Date: Tue, 17 May 2011 00:38:31 -0000

From: Scott Garman <scott.a.garman@intel.com>

Add Upstream-Status tag to patches for the following recipes:

apmd
insserv
linuxdoc-tools
mtools (GPLv3 version)
openjade
sgmlspl
at
sudo

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-bsp/apmd/apmd-3.2.2-14/libtool.patch  |   28 +++++++++++--------
 meta/recipes-bsp/apmd/apmd-3.2.2-14/unlinux.patch  |   20 ++++++++-----
 .../insserv/files/disable_runtests.patch           |   11 +++++---
 meta/recipes-devtools/insserv/files/makefile.patch |   11 +++++---
 .../linuxdoc-tools-native/disable_dvips_doc.patch  |    4 +++
 .../linuxdoc-tools-native/disable_sgml2rtf.patch   |    4 +++
 .../linuxdoc-tools-native/disable_tex_doc.patch    |    4 +++
 .../linuxdoc-tools-native/disable_txt_doc.patch    |    4 +++
 .../mtools/mtools/mtools-makeinfo.patch            |    6 ++++
 .../mtools/mtools/no-x11.gplv3.patch               |   10 +++++--
 .../openjade/openjade-1.3.2/makefile.patch         |    4 +++
 .../user-declared-default-constructor.patch        |    4 +++
 meta/recipes-devtools/sgmlspl/files/combined.patch |    3 ++
 meta/recipes-extended/at/at-3.1.12/configure.patch |    8 ++++-
 .../at/at-3.1.12/fix_parallel_build_error.patch    |    4 +++
 meta/recipes-extended/sudo/files/libtool.patch     |   10 +++++--
 16 files changed, 99 insertions(+), 36 deletions(-)

diff --git a/meta/recipes-bsp/apmd/apmd-3.2.2-14/libtool.patch b/meta/recipes-bsp/apmd/apmd-3.2.2-14/libtool.patch
index 711e777..834ee08 100644
--- a/meta/recipes-bsp/apmd/apmd-3.2.2-14/libtool.patch
+++ b/meta/recipes-bsp/apmd/apmd-3.2.2-14/libtool.patch
@@ -1,15 +1,19 @@
-# Add by RP to address "unable to infer tagged configuration" error:
-#    commit 35de05e61b88c0808a5e885bb0efdf420555d5ad
-#    Author: Richard Purdie <rpurdie@rpsys.net>
-#    Date:   Sun Jun 1 16:13:38 2008 +0000
-#
-#    apmd: Use libtool --tag options to avoid problems with libtool 2.2.4 (from poky)
-#
-# However I didn't see same issue with current libtool-2.2.10. Also per my understanding,
-# the default tag, if not specified, falls back to CC. So disable it from patching, but
-# keep it here. If we encounter similar issue in the future, we could then push upstream
-#
-# Comment added by Kevin Tian <kevin.tian@intel.com>, 2010-07-16
+Add by RP to address "unable to infer tagged configuration" error:
+   commit 35de05e61b88c0808a5e885bb0efdf420555d5ad
+   Author: Richard Purdie <rpurdie@rpsys.net>
+   Date:   Sun Jun 1 16:13:38 2008 +0000
+
+   apmd: Use libtool --tag options to avoid problems with libtool 2.2.4 (from poky)
+
+However I didn't see same issue with current libtool-2.2.10. Also per my understanding,
+the default tag, if not specified, falls back to CC. So disable it from patching, but
+keep it here. If we encounter similar issue in the future, we could then push upstream
+
+Comment added by Kevin Tian <kevin.tian@intel.com>, 2010-07-16
+
+Upstream-Status: Pending
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
 
 Index: apmd-3.2.2.orig/Makefile
 ===================================================================
diff --git a/meta/recipes-bsp/apmd/apmd-3.2.2-14/unlinux.patch b/meta/recipes-bsp/apmd/apmd-3.2.2-14/unlinux.patch
index c64e7df..ec8206c 100644
--- a/meta/recipes-bsp/apmd/apmd-3.2.2-14/unlinux.patch
+++ b/meta/recipes-bsp/apmd/apmd-3.2.2-14/unlinux.patch
@@ -1,11 +1,15 @@
-# copy OE commit message here:
-#    commit 9456cdc1cf43e3ba9e6d88c63560c1b6fdee4359
-#    Author: Michael Krelin <hacker@klever.net>
-#    Date:   Tue May 29 12:27:45 2007 +0000
-#
-#    apmd: prevent build from interferring with host kernel headers. Closes #1257
-# 
-# comment added by Kevin Tian <kevin.tian@intel.com>, 2010-07-13
+copy OE commit message here:
+   commit 9456cdc1cf43e3ba9e6d88c63560c1b6fdee4359
+   Author: Michael Krelin <hacker@klever.net>
+   Date:   Tue May 29 12:27:45 2007 +0000
+
+   apmd: prevent build from interferring with host kernel headers. Closes #1257
+
+comment added by Kevin Tian <kevin.tian@intel.com>, 2010-07-13
+
+Upstream-Status: Pending
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
 
 --- apmd-3.2.2.orig/Makefile
 +++ apmd-3.2.2/Makefile
diff --git a/meta/recipes-devtools/insserv/files/disable_runtests.patch b/meta/recipes-devtools/insserv/files/disable_runtests.patch
index 4e40848..15a7dd8 100644
--- a/meta/recipes-devtools/insserv/files/disable_runtests.patch
+++ b/meta/recipes-devtools/insserv/files/disable_runtests.patch
@@ -1,7 +1,10 @@
-# Disable the make check runtime tests, which cannot be run when
-# cross-compiled.
-#
-# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+Disable the make check runtime tests, which cannot be run when
+cross-compiled.
+
+Upstream-Status: Pending
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN insserv-1.14.0.orig//Makefile insserv-1.14.0/Makefile
 --- insserv-1.14.0.orig//Makefile	2010-11-28 17:12:01.715597293 -0800
 +++ insserv-1.14.0/Makefile	2010-11-28 17:16:33.837780660 -0800
diff --git a/meta/recipes-devtools/insserv/files/makefile.patch b/meta/recipes-devtools/insserv/files/makefile.patch
index 19e99c6..5a248b6 100644
--- a/meta/recipes-devtools/insserv/files/makefile.patch
+++ b/meta/recipes-devtools/insserv/files/makefile.patch
@@ -1,7 +1,10 @@
-# Enable debug options and modify the use of CLFAGS (carried over
-# from the previous version's patch).
-#
-# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+Enable debug options and modify the use of CLFAGS (carried over
+from the previous version's patch).
+
+Upstream-Status: Pending
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN insserv-1.14.0.orig//Makefile insserv-1.14.0//Makefile
 --- insserv-1.14.0.orig//Makefile	2010-04-29 03:33:40.000000000 -0700
 +++ insserv-1.14.0//Makefile	2010-11-28 17:09:20.537996190 -0800
diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_dvips_doc.patch b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_dvips_doc.patch
index 7ac1a1f..490b367 100644
--- a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_dvips_doc.patch
+++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_dvips_doc.patch
@@ -2,7 +2,11 @@ Disable building documentation which requires the dvips utility.
 This patch should be dropped once we include a native version of
 dvips.
 
+Upstream-Status: Inappropriate [Other]
+Temporary workaround which disables documentation.
+
 Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN linuxdoc-tools-0.9.66.orig/doc/Makedoc.sh linuxdoc-tools-0.9.66/doc/Makedoc.sh
 --- linuxdoc-tools-0.9.66.orig/doc/Makedoc.sh	2011-02-25 15:26:41.142917782 -0800
 +++ linuxdoc-tools-0.9.66/doc/Makedoc.sh	2011-02-25 15:27:25.141917472 -0800
diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch
index 0fcaceb..424410d 100644
--- a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch
+++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_sgml2rtf.patch
@@ -3,7 +3,11 @@ link to a shared library version of flex. Flex only ships with a
 static lib. Rather than diverging from upstream flex, simply skip
 building this un-needed utility.
 
+Upstream-Status: Inappropriate [Other]
+Workaround which disables a feature.
+
 Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN linuxdoc-tools-0.9.66.orig//Makefile.in linuxdoc-tools-0.9.66/Makefile.in
 --- linuxdoc-tools-0.9.66.orig//Makefile.in	2009-11-09 11:58:25.000000000 -0800
 +++ linuxdoc-tools-0.9.66/Makefile.in	2011-02-24 15:37:46.556937051 -0800
diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_tex_doc.patch b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_tex_doc.patch
index f47693b..b62895c 100644
--- a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_tex_doc.patch
+++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_tex_doc.patch
@@ -2,7 +2,11 @@ Disable building documentation which requires the latex utility.
 This patch should be dropped once we include a native version of
 latex.
 
+Upstream-Status: Inappropriate [Other]
+Temporary workaround which disables documentation.
+
 Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN linuxdoc-tools-0.9.66.orig/doc/Makedoc.sh linuxdoc-tools-0.9.66/doc/Makedoc.sh
 --- linuxdoc-tools-0.9.66.orig/doc/Makedoc.sh	2009-11-09 11:58:25.000000000 -0800
 +++ linuxdoc-tools-0.9.66/doc/Makedoc.sh	2011-02-25 15:23:58.610016114 -0800
diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_txt_doc.patch b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_txt_doc.patch
index 17c7670..8d78411 100644
--- a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_txt_doc.patch
+++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_txt_doc.patch
@@ -9,7 +9,11 @@ during do_install:
 | troff: fatal error: can't find macro file s
 |  fmt_txt::postASP: Empty output file, error when calling groff. Aborting...
 
+Upstream-Status: Inappropriate [Other]
+Temporary workaround which disables documentation.
+
 Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN linuxdoc-tools-0.9.66.orig//doc/Makedoc.sh linuxdoc-tools-0.9.66/doc/Makedoc.sh
 --- linuxdoc-tools-0.9.66.orig//doc/Makedoc.sh	2009-11-09 11:58:25.000000000 -0800
 +++ linuxdoc-tools-0.9.66/doc/Makedoc.sh	2011-03-04 17:37:24.788923998 -0800
diff --git a/meta/recipes-devtools/mtools/mtools/mtools-makeinfo.patch b/meta/recipes-devtools/mtools/mtools/mtools-makeinfo.patch
index 35fae44..f4fe4c2 100644
--- a/meta/recipes-devtools/mtools/mtools/mtools-makeinfo.patch
+++ b/meta/recipes-devtools/mtools/mtools/mtools-makeinfo.patch
@@ -1,3 +1,9 @@
+Check for needed documentation-related utilities.
+
+Upstream-Status: Pending
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 --- mtools-3.9.9/configure.in.orig	2006-04-14 16:05:54.337655192 -0600
 +++ mtools-3.9.9/configure.in	2006-04-14 16:12:29.736545424 -0600
 @@ -21,6 +21,33 @@
diff --git a/meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch b/meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch
index 7d1f545..06fe6da 100644
--- a/meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch
+++ b/meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch
@@ -1,6 +1,10 @@
-# Disable building with X11 support.
-#
-# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+Disable building with X11 support.
+
+Upstream-Status: Inappropriate [Other]
+Workaround disables a feature.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN mtools-4.0.15.orig//Makefile.in mtools-4.0.15//Makefile.in
 --- mtools-4.0.15.orig//Makefile.in	2010-10-17 08:41:09.000000000 -0700
 +++ mtools-4.0.15//Makefile.in	2010-11-23 13:59:49.258258374 -0800
diff --git a/meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch b/meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch
index 84e1d63..968b9b4 100644
--- a/meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch
+++ b/meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch
@@ -1,7 +1,11 @@
 This patch fixes libtool QA issues with WORKDIR creeping in to
 libospgrove.la and libostyle.la. Patch obtained from OpenEmbedded.
 
+Upstream-Status: Inappropriate [Other]
+Workaround is specific to our build system.
+
 Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 Index: openjade-1.3.2/spgrove/Makefile.sub
 ===================================================================
 --- openjade-1.3.2.orig/spgrove/Makefile.sub
diff --git a/meta/recipes-devtools/openjade/openjade-1.3.2/user-declared-default-constructor.patch b/meta/recipes-devtools/openjade/openjade-1.3.2/user-declared-default-constructor.patch
index 2f2adfe..073af46 100644
--- a/meta/recipes-devtools/openjade/openjade-1.3.2/user-declared-default-constructor.patch
+++ b/meta/recipes-devtools/openjade/openjade-1.3.2/user-declared-default-constructor.patch
@@ -12,6 +12,10 @@ https://bugs.gentoo.org/358021
 http://clang.llvm.org/compatibility.html#default_init_const
 http://gcc.gnu.org/PR44499"
 
+Upstream-Status: Pending
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 --- a/jade/TeXFOTBuilder.cxx
 +++ b/jade/TeXFOTBuilder.cxx
 @@ -88,6 +88,8 @@ public:
diff --git a/meta/recipes-devtools/sgmlspl/files/combined.patch b/meta/recipes-devtools/sgmlspl/files/combined.patch
index 31536f5..bea3dab 100644
--- a/meta/recipes-devtools/sgmlspl/files/combined.patch
+++ b/meta/recipes-devtools/sgmlspl/files/combined.patch
@@ -1,6 +1,9 @@
 Patch obtained from OpenEmbedded.
 
+Upstream-Status: Pending
+
 Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 --- libsgmls-perl-1.03ii.orig/Makefile
 +++ libsgmls-perl-1.03ii/Makefile
 @@ -94,5 +94,5 @@
diff --git a/meta/recipes-extended/at/at-3.1.12/configure.patch b/meta/recipes-extended/at/at-3.1.12/configure.patch
index 2458ef3..079a6b4 100644
--- a/meta/recipes-extended/at/at-3.1.12/configure.patch
+++ b/meta/recipes-extended/at/at-3.1.12/configure.patch
@@ -1,5 +1,9 @@
-# Fix cross-compilation issues in configure.ac
-# Derived from an OE patch for at-3.1.8
+Fix cross-compilation issues in configure.ac
+Derived from an OE patch for at-3.1.8
+
+Upstream-Status: Pending
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
 
 Index: at-3.1.12/configure.ac
 ===================================================================
diff --git a/meta/recipes-extended/at/at-3.1.12/fix_parallel_build_error.patch b/meta/recipes-extended/at/at-3.1.12/fix_parallel_build_error.patch
index 6383660..877be35 100644
--- a/meta/recipes-extended/at/at-3.1.12/fix_parallel_build_error.patch
+++ b/meta/recipes-extended/at/at-3.1.12/fix_parallel_build_error.patch
@@ -9,6 +9,10 @@ Fixed the issue by adding a dependancy in the makefile.
 Nitin <nitin.a.kamble@intel.com>
 2010/09/02
 
+Upstream-Status: Pending
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 Index: at-3.1.12/Makefile.in
 ===================================================================
 --- at-3.1.12.orig/Makefile.in
diff --git a/meta/recipes-extended/sudo/files/libtool.patch b/meta/recipes-extended/sudo/files/libtool.patch
index 2375fc6..b0cd675 100644
--- a/meta/recipes-extended/sudo/files/libtool.patch
+++ b/meta/recipes-extended/sudo/files/libtool.patch
@@ -1,6 +1,10 @@
-# Fix path to libtool scripts so autoreconf can succeed.
-#
-# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+Fix path to libtool scripts so autoreconf can succeed.
+
+Upstream-Status: Inappropriate [Other]
+Workaround is specific to our build system.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 diff -urN sudo-1.7.4p4.orig//aclocal.m4 sudo-1.7.4p4//aclocal.m4
 --- sudo-1.7.4p4.orig//aclocal.m4	2010-08-06 07:17:36.000000000 -0700
 +++ sudo-1.7.4p4//aclocal.m4	2010-11-22 14:38:20.360957038 -0800
-- 
1.7.1


