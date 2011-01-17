Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0547C4C80BEF
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:45:52 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jan 2011 14:45:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="647924961"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jan 2011 14:45:52 -0800
Message-Id: <aaa7b99c3e1c19f93ba98fec4fca8c8397a0d502.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 11 Jan 2011 03:49:06 -0800
Date: Mon, 17 Jan 2011 14:45:52 -0800
To: poky@yoctoproject.org
Subject: [PATCH 04/12] oprofileui: fix the build failure after gcc dso change
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
X-List-Received-Date: Mon, 17 Jan 2011 22:45:53 -0000

With a change in gcc all the libraries needs to be specified explicitely
for linking. That breaks compile for this package as libm is not
explicitely specified. This commit fixes that linking  issue.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-kernel/oprofile/oprofileui-svn.inc    |    5 ++-
 .../oprofileui/dso_linking_change_build_fix.patch  |   25 ++++++++++++++++++++
 2 files changed, 28 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-kernel/oprofile/oprofileui/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-kernel/oprofile/oprofileui-svn.inc b/meta/recipes-kernel/oprofile/oprofileui-svn.inc
index 0e7e794..5d40914 100644
--- a/meta/recipes-kernel/oprofile/oprofileui-svn.inc
+++ b/meta/recipes-kernel/oprofile/oprofileui-svn.inc
@@ -1,8 +1,9 @@
 require oprofileui.inc
 
 PV = "0.0+svnr${SRCPV}"
-PR = "r0"
+PR = "r1"
 
 S = "${WORKDIR}/trunk"
 
-SRC_URI = "svn://svn.o-hand.com/repos/oprofileui;module=trunk;proto=http"
+SRC_URI = "svn://svn.o-hand.com/repos/oprofileui;module=trunk;proto=http \
+           file://dso_linking_change_build_fix.patch "
diff --git a/meta/recipes-kernel/oprofile/oprofileui/dso_linking_change_build_fix.patch b/meta/recipes-kernel/oprofile/oprofileui/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..4b44c69
--- /dev/null
+++ b/meta/recipes-kernel/oprofile/oprofileui/dso_linking_change_build_fix.patch
@@ -0,0 +1,25 @@
+With dso linking change in gcc, all the libraries are needed to be explicitely specified to linker now. It breaks this package in following way. The libm library needs to be specified explicitely.
+
+| make[2]: Entering directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/oprofileui-0.0+svnr197-r0/trunk/src'^M
+| ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -Wall -g -std=gnu99 -DPKG_DATA_DIR=\""/usr/share/oprofileui"\"  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o oprofile-viewer main.o client.o archive.o archive_window.o archive_save_window.o view.o report.o parser.o image.o symbol.o module.o symbol_instance.o module_instance.o callee_symbol_instance.o caller_symbol_instance.o state-util.o -pthread -lglade-2.0 -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lxml2 -lgnomevfs-2 -lgmodule-2.0 -lgconf-2 -ldbus-glib-1 -ldbus-1 -lpthread -lgobject-2.0 -lgthread-2.0 -lrt -lglib-2.0   -pthread -lavahi-ui -lgtk-x11-2.0 -lavahi-common -lavahi-client -lavahi-glib -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   ../protocol/libop.a^M
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: ^X^B: invalid DSO for symbol `log@@GLIBC_2.0' definition^M
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/lib/libm.so.6: could not read symbols: Bad value^M
+| collect2: ld returned 1 exit status^M
+| make[2]: *** [oprofile-viewer] Error 1^M
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+Index: trunk/src/Makefile.am
+===================================================================
+--- trunk.orig/src/Makefile.am
++++ trunk/src/Makefile.am
+@@ -56,7 +56,7 @@ oprofile_viewer_SOURCES = \
+ 
+ oprofile_viewer_LDFLAGS = 
+ 
+-oprofile_viewer_LDADD = $(OPROFILEUI_LIBS) $(AVAHI_LIBS) $(top_builddir)/protocol/libop.a
++oprofile_viewer_LDADD = $(OPROFILEUI_LIBS) -lm $(AVAHI_LIBS) $(top_builddir)/protocol/libop.a
+ 
+ testparser_SOURCES = \
+ 	parser.c \
-- 
1.7.3.4


