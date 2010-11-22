Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F93D4C80FAD
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 17:19:30 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Nov 2010 15:19:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,239,1288594800"; d="scan'208";a="351973838"
Received: from unknown (HELO localhost) ([10.255.13.161])
	by azsmga001.ch.intel.com with ESMTP; 22 Nov 2010 15:19:19 -0800
Message-Id: <01abe3ae64c0ee6fde2fc813abe6e8ca39dc0720.1290467442.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1290467442.git.tom.zanussi@intel.com>
References: <cover.1290467442.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Mon, 22 Nov 2010 17:07:23 -0600
To: poky@yoctoproject.org
Subject: [PATCH 1/1] blktrace: new package
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
X-List-Received-Date: Mon, 22 Nov 2010 23:19:30 -0000

Add blktrace, a tool for generating traces of the I/O traffic on block
devices.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    1 +
 meta/recipes-core/tasks/task-poky-tools.bb         |    3 +-
 .../blktrace/blktrace/blktrace-makefile.patch      |   53 ++++++++++++++++++++
 meta/recipes-kernel/blktrace/blktrace_git.bb       |   25 +++++++++
 4 files changed, 81 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
 create mode 100644 meta/recipes-kernel/blktrace/blktrace_git.bb

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 859e3ca..f55ece2 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -177,4 +177,5 @@ SRCDATE_yaffs2-utils-native ??= "20071107"
 SRCDATE_yaffs2-utils ??= "20071107"
 SRCREV_pn-zaurusd ??= "358"
 SRCREV_pn-zypper ??= "9eb0e248e06c8d20ad054be2439149d9ede37531"
+SRCREV_pn-blktrace ??= "1e09f6e9012826fca69fa07222b7bc53c3e629ee"
 
diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
index 0a2533c..90361ba 100644
--- a/meta/recipes-core/tasks/task-poky-tools.bb
+++ b/meta/recipes-core/tasks/task-poky-tools.bb
@@ -46,7 +46,8 @@ RDEPENDS_task-poky-tools-profile = "\
 RRECOMMENDS_task-poky-tools-profile = "\
     perf \
     trace-cmd \
-    kernel-module-oprofile"
+    kernel-module-oprofile \
+    blktrace"
 
 #    exmap-console
 #    exmap-server
diff --git a/meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch b/meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
new file mode 100644
index 0000000..87ee24e
--- /dev/null
+++ b/meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
@@ -0,0 +1,53 @@
+Index: git/Makefile
+===================================================================
+--- git.orig/Makefile	2010-11-22 11:20:14.303472770 -0600
++++ git/Makefile	2010-11-22 14:11:19.152635423 -0600
+@@ -1,5 +1,3 @@
+-CC	= gcc
+-CFLAGS	= -Wall -O2 -g -W
+ ALL_CFLAGS = $(CFLAGS) -D_GNU_SOURCE -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
+ PROGS	= blkparse blktrace verify_blkparse blkrawverify blkiomon
+ LIBS	= -lpthread
+@@ -11,13 +9,13 @@
+ all: $(ALL)
+ 
+ btt/btt:
+-	$(MAKE) -C btt
++	CC="${CC}" CFLAGS="${CFLAGS}" $(MAKE) -C btt CC="${CC}" CFLAGS="${CFLAGS}"
+ 
+ btreplay/btrecord:
+-	$(MAKE) -C btreplay
++	CC="${CC}" CFLAGS="${CFLAGS}" $(MAKE) -C btreplay CC="${CC}" CFLAGS="${CFLAGS}"
+ 
+ btreplay/btreplay:
+-	$(MAKE) -C btreplay
++	CC="${CC}" CFLAGS="${CFLAGS}" $(MAKE) -C btreplay CC="${CC}" CFLAGS="${CFLAGS}"
+ 
+ %.o: %.c
+ 	$(CC) -o $*.o -c $(ALL_CFLAGS) $<
+Index: git/btreplay/Makefile
+===================================================================
+--- git.orig/btreplay/Makefile	2010-11-22 11:21:12.972679035 -0600
++++ git/btreplay/Makefile	2010-11-22 14:07:01.492839945 -0600
+@@ -5,8 +5,6 @@
+ # 	NDEBUG		- Defined: no asserts, Undefined: asserts
+ #
+ 
+-CC	= gcc
+-CFLAGS	= -Wall -W -O2 -g
+ INCS	= -I. -I.. -I../btt
+ OCFLAGS	= -UCOUNT_IOS -UDEBUG -DNDEBUG
+ XCFLAGS	= -D_GNU_SOURCE -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
+Index: git/btt/Makefile
+===================================================================
+--- git.orig/btt/Makefile	2010-11-22 11:21:01.833758370 -0600
++++ git/btt/Makefile	2010-11-22 14:07:15.783258253 -0600
+@@ -5,8 +5,6 @@
+ # 	NDEBUG		- Defined: no asserts, Undefined: asserts
+ #
+ 
+-CC	= gcc
+-CFLAGS	= -Wall -W -O2 -g
+ INCS	= -I. -I..
+ XCFLAGS	= -D_GNU_SOURCE -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
+ override CFLAGS += $(INCS) $(XCFLAGS)
diff --git a/meta/recipes-kernel/blktrace/blktrace_git.bb b/meta/recipes-kernel/blktrace/blktrace_git.bb
new file mode 100644
index 0000000..85e4a4b
--- /dev/null
+++ b/meta/recipes-kernel/blktrace/blktrace_git.bb
@@ -0,0 +1,25 @@
+DESCRIPTION = "blktrace - generate traces of the I/O traffic on block devices"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+DEPENDS = "libaio"
+
+PR = r1
+PV = "1.0.1+git${SRCPV}"
+
+SRC_URI = "git://git.kernel.dk/blktrace.git;protocol=git \
+           file://blktrace-makefile.patch"
+
+SRC_URI[md5sum] = "588aa9ab8a14d1766ab3f061d728ed89"
+SRC_URI[sha256sum] = "f3cb6a3df1b3dc67369c7c4da3444a7897aa8a18e55937b368e0a6aa2f64b3aa"
+
+S = "${WORKDIR}/git"
+
+do_compile() { 
+	oe_runmake ARCH="${ARCH}" CC="${CC}" LD="${LD}" prefix=${prefix}
+}
+
+do_install() {
+	oe_runmake ARCH="${ARCH}" CC="${CC}" LD="${LD}" \
+                   prefix=${prefix} DESTDIR=${D} install
+}
-- 
1.7.0.4


