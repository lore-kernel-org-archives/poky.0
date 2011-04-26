Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A25314C80578
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:04 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Apr 2011 23:43:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="425501278"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 25 Apr 2011 23:43:03 -0700
Message-Id: <8132a8bce3cd68a8a6934faa92b71cda083e650e.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Tue, 19 Apr 2011 14:58:37 +0800
Date: Tue, 26 Apr 2011 14:45:58 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 01/13] rxvt-unicode: upgrade to version 9.10
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:05 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Remove some patches since some logic doesn't exist in upstream.
This upgrades fixes CVE:
http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2006-0126

Also it fixes [Yocto #980]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../recipes-sato/rxvt-unicode/files/makefile.patch |   20 ----------
 meta/recipes-sato/rxvt-unicode/files/rxvt.desktop  |   11 ------
 .../rxvt-unicode/files/signedchar.patch            |   11 ------
 meta/recipes-sato/rxvt-unicode/files/xwc.patch     |   28 --------------
 .../rxvt-unicode/rxvt-unicode-5.6/xwc.patch        |   24 ------------
 .../rxvt-unicode/rxvt-unicode-9.10/rxvt.desktop    |    9 +++++
 .../{files => rxvt-unicode-9.10}/rxvt.png          |  Bin 2847 -> 2847 bytes
 .../rxvt-unicode/rxvt-unicode-9.10/xwc.patch       |   26 +++++++++++++
 .../{rxvt-unicode_5.6.bb => rxvt-unicode_9.10.bb}  |   39 ++++++++------------
 9 files changed, 51 insertions(+), 117 deletions(-)
 delete mode 100644 meta/recipes-sato/rxvt-unicode/files/makefile.patch
 delete mode 100644 meta/recipes-sato/rxvt-unicode/files/rxvt.desktop
 delete mode 100644 meta/recipes-sato/rxvt-unicode/files/signedchar.patch
 delete mode 100644 meta/recipes-sato/rxvt-unicode/files/xwc.patch
 delete mode 100644 meta/recipes-sato/rxvt-unicode/rxvt-unicode-5.6/xwc.patch
 create mode 100644 meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/rxvt.desktop
 rename meta/recipes-sato/rxvt-unicode/{files => rxvt-unicode-9.10}/rxvt.png (100%)
 create mode 100644 meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/xwc.patch
 rename meta/recipes-sato/rxvt-unicode/{rxvt-unicode_5.6.bb => rxvt-unicode_9.10.bb} (69%)

diff --git a/meta/recipes-sato/rxvt-unicode/files/makefile.patch b/meta/recipes-sato/rxvt-unicode/files/makefile.patch
deleted file mode 100644
index 86f82ee..0000000
--- a/meta/recipes-sato/rxvt-unicode/files/makefile.patch
+++ /dev/null
@@ -1,20 +0,0 @@
---- ../rxvt-unicode-cvs-r0/rxvt-unicode/Makefile.in	2004-08-12 22:32:40 +01:00
-+++ rxvt-unicode/Makefile.in	2004-12-24 03:09:00 +00:00
-@@ -9,7 +9,7 @@
- first_rule: all
- dummy:
- 
--subdirs = src doc src/test
-+subdirs = src src/test
- allsubdirs = W11 $(subdirs)
- 
- DIST =	INSTALL README.configure configure Makefile Makefile.in ChangeLog
-@@ -24,7 +24,7 @@
- 
- #-------------------------------------------------------------------------
- 
--all allbin alldoc tags:
-+all allbin tags:
- 	@if test x@host_os@ = xcygwin; then (cd W11; ${MAKE} $@) || exit 1; fi
- 	@for I in ${subdirs}; do (cd $$I; ${MAKE} $@) || exit 1; done
- 
diff --git a/meta/recipes-sato/rxvt-unicode/files/rxvt.desktop b/meta/recipes-sato/rxvt-unicode/files/rxvt.desktop
deleted file mode 100644
index a419c98..0000000
--- a/meta/recipes-sato/rxvt-unicode/files/rxvt.desktop
+++ /dev/null
@@ -1,11 +0,0 @@
-[Desktop Entry]
-Encoding=UTF-8
-Name=Terminal
-Comment=When all else fails.
-Exec=/usr/bin/rxvt
-Icon=utilities-terminal.png
-Terminal=false
-Type=Application
-Categories=Utility
-StartupNotify=false
-
diff --git a/meta/recipes-sato/rxvt-unicode/files/signedchar.patch b/meta/recipes-sato/rxvt-unicode/files/signedchar.patch
deleted file mode 100644
index 6faa175..0000000
--- a/meta/recipes-sato/rxvt-unicode/files/signedchar.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- ../rxvt-unicode-cvs-r0/rxvt-unicode/src/command.C	2004-12-21 06:43:00 +00:00
-+++ rxvt-unicode/src/command.C	2004-12-24 02:31:36 +00:00
-@@ -1862,7 +1862,7 @@
- #endif				/* NO_SCROLLBAR_REPORT */
- 
-         {
--          char            upordown = 0;
-+          signed char            upordown = 0;
- 
-           if (scrollBar.style == R_SB_NEXT)
-             {
diff --git a/meta/recipes-sato/rxvt-unicode/files/xwc.patch b/meta/recipes-sato/rxvt-unicode/files/xwc.patch
deleted file mode 100644
index 7cf5965..0000000
--- a/meta/recipes-sato/rxvt-unicode/files/xwc.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-
-#
-# Patch managed by http://www.holgerschurig.de/patcher.html
-#
-
---- rxvt-unicode-4.8/src/screen.C~xwc.c
-+++ rxvt-unicode-4.8/src/screen.C
-@@ -3058,7 +3058,7 @@
-   else
-     rxvt_warn ("can't get primary selection, ignoring.\n");
- 
--#if 0
-+#ifdef HAVE_XWC
-   XTextProperty ct;
- 
-   if (XwcTextListToTextProperty (display->display, &selection.text, 1, XStringStyle, &ct) >= 0)
-@@ -3632,9 +3632,11 @@
-         }
-       else
- #endif
-+#ifdef HAVE_XWC
-       if (XwcTextListToTextProperty (display->display, &cl, 1, (XICCEncodingStyle) style, &ct) >= 0)
-         freect = 1;
-       else
-+#endif
-         {
-           /* if we failed to convert then send it raw */
-           ct.value = (unsigned char *)cl;
diff --git a/meta/recipes-sato/rxvt-unicode/rxvt-unicode-5.6/xwc.patch b/meta/recipes-sato/rxvt-unicode/rxvt-unicode-5.6/xwc.patch
deleted file mode 100644
index eb87b84..0000000
--- a/meta/recipes-sato/rxvt-unicode/rxvt-unicode-5.6/xwc.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-diff -urNd ../rxvt-unicode-5.3-r2/rxvt-unicode-5.3/src/screen.C rxvt-unicode-5.3/src/screen.C
---- ../rxvt-unicode-5.3-r2/rxvt-unicode-5.3/src/screen.C	2005-02-22 21:39:10 +00:00
-+++ rxvt-unicode-5.3/src/screen.C	2005-04-05 22:12:45 +01:00
-@@ -3064,7 +3064,7 @@
-   else
-     rxvt_warn ("can't get primary selection, ignoring.\n");
- 
--#if 0
-+#ifdef HAVE_XWC
-   XTextProperty ct;
- 
-   if (XwcTextListToTextProperty (display->display, &selection.text, 1, XStringStyle, &ct) >= 0)
-@@ -3648,9 +3648,11 @@
-         }
-       else
- #endif
-+#ifdef HAVE_XWC
-       if (XwcTextListToTextProperty (disp, &cl, 1, (XICCEncodingStyle) style, &ct) >= 0)
-         freect = 1;
-       else
-+#endif
-         {
-           /* if we failed to convert then send it raw */
-           ct.value = (unsigned char *)cl;
diff --git a/meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/rxvt.desktop b/meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/rxvt.desktop
new file mode 100644
index 0000000..882ea41
--- /dev/null
+++ b/meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/rxvt.desktop
@@ -0,0 +1,9 @@
+[Desktop Entry]
+Version=1.0
+Name=Terminal
+Comment=A unicode capable rxvt clone
+Exec=rxvt
+Icon=terminal
+Terminal=false
+Type=Application
+Categories=Utility;TerminalEmulator;
diff --git a/meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/xwc.patch b/meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/xwc.patch
new file mode 100644
index 0000000..16efeef
--- /dev/null
+++ b/meta/recipes-sato/rxvt-unicode/rxvt-unicode-9.10/xwc.patch
@@ -0,0 +1,26 @@
+Upstream-Status: Pending
+
+diff -ruN rxvt-unicode-9.10-orig//src/screen.C rxvt-unicode-9.10/src/screen.C
+--- rxvt-unicode-9.10-orig//src/screen.C	2011-04-19 13:34:01.327664984 +0800
++++ rxvt-unicode-9.10/src/screen.C	2011-04-19 13:34:47.037665001 +0800
+@@ -3152,7 +3152,7 @@
+       return false;
+     }
+ 
+-#if 0
++#if HAVE_XWC
+   XTextProperty ct;
+ 
+   if (XwcTextListToTextProperty (dpy, &selection.text, 1, XStringStyle, &ct) >= 0)
+@@ -3734,9 +3734,11 @@
+         }
+       else
+ #endif
++#ifdef HAVE_XWC
+       if (XwcTextListToTextProperty (dpy, &cl, 1, (XICCEncodingStyle) style, &ct) >= 0)
+         freect = 1;
+       else
++#endif
+         {
+           /* if we failed to convert then send it raw */
+           ct.value = (unsigned char *)cl;
diff --git a/meta/recipes-sato/rxvt-unicode/rxvt-unicode_5.6.bb b/meta/recipes-sato/rxvt-unicode/rxvt-unicode_9.10.bb
similarity index 69%
rename from meta/recipes-sato/rxvt-unicode/rxvt-unicode_5.6.bb
rename to meta/recipes-sato/rxvt-unicode/rxvt-unicode_9.10.bb
index d130895..9657e21 100644
--- a/meta/recipes-sato/rxvt-unicode/rxvt-unicode_5.6.bb
+++ b/meta/recipes-sato/rxvt-unicode/rxvt-unicode_9.10.bb
@@ -5,13 +5,14 @@ terminal emulator rxvt, modified to store text in Unicode \
 (either UCS-2 or UCS-4) and to use locale-correct input and \
 output. It also supports mixing multiple fonts at the \
 same time, including Xft fonts."
-LICENSE = "GPL"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+                    file://src/main.C;beginline=1;endline=31;md5=633e23cdeb89fe980ded9a3af4f335c2"
 SRC_URI = "http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode-${PV}.tar.bz2 \
-	   file://xwc.patch;patch=1 \
-	   file://signedchar.patch;patch=1 \
+	   file://xwc.patch \
 	   file://rxvt.desktop \
 	   file://rxvt.png"
-PR = "r5"
+PR = "r0"
 
 inherit autotools update-alternatives
 
@@ -35,29 +36,18 @@ EXTRA_OECONF = "--enable-menubar --enable-xim \
 		--enable-text-blink --enable-rxvt-scroll \
 		--enable-combining --enable-shared \
 		--enable-xgetdefault \
+                --disable-perl \
 		--with-x=${STAGING_DIR_HOST}${prefix}"
-EXTRA_OEMAKE = "'XINC=-I${STAGING_INCDIR}' \
-		'XLIB=-L${STAGING_LIBDIR} -lX11'"
 
-do_configure () {
-	mv autoconf/configure.in . || true
-	rm autoconf/libtool.m4
-	libtoolize --force
-	autotools_do_configure
-	echo '#define RXVT_UTMP_FILE "${localstatedir}/run/utmp"' >> config.h
-	echo '#define RXVT_WTMP_FILE "${localstatedir}/log/wtmp"' >> config.h
-	echo '#define RXVT_LASTLOG_FILE "${localstatedir}/log/lastlog"' >> config.h
-	echo '#define HAVE_XLOCALE 1' >> config.h
+do_configure_prepend () {
+	cp aclocal.m4 acinclude.m4
 }
 
-do_compile () {
-	if test -e ${S}/${HOST_SYS}-libtool; then
-		LIBTOOL=${S}/${HOST_SYS}-libtool
-	else
-		LIBTOOL=${S}/libtool
-	fi
-	# docs need "yodl" and I have no idea what that is
-	oe_runmake -C src "LIBTOOL=$LIBTOOL"
+do_compile_prepend () {
+	echo '#define UTMP_FILE "${localstatedir}/run/utmp"' >> config.h
+	echo '#define WTMP_FILE "${localstatedir}/log/wtmp"' >> config.h
+	echo '#define LASTLOG_FILE "${localstatedir}/log/lastlog"' >> config.h
+	echo '#define HAVE_XLOCALE 1' >> config.h
 }
 
 do_install_append () {
@@ -70,3 +60,6 @@ do_install_append () {
 }
 
 FILES_${PN} += "${datadir}/applications/rxvt.desktop ${datadir}/pixmaps/rxvt.png"
+
+SRC_URI[md5sum] = "a23aa40b31e843878b6f9c44768de430"
+SRC_URI[sha256sum] = "1c238f7e545b1a8da81239b826fb2a7d196c73effbcbd211db7a50995a0a067a"
-- 
1.7.1


