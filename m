Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69FE14C80BEF
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:45:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="375845264"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
Message-Id: <0ce74824480ef2c3db58ab8b6207f4beba2c60f9.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 11 Jan 2011 07:43:49 -0800
Date: Mon, 17 Jan 2011 14:45:53 -0800
To: poky@yoctoproject.org
Subject: [PATCH 08/12] blktrace: fix build issue with gcc dso linking change
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

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libXrender library explicitely for linking to
work without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../blktrace/dso_linking_change_build_fix.patch    |   26 ++++++++++++++++++++
 meta/recipes-kernel/blktrace/blktrace_git.bb       |    5 ++-
 2 files changed, 29 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-kernel/blktrace/blktrace/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-kernel/blktrace/blktrace/dso_linking_change_build_fix.patch b/meta/recipes-kernel/blktrace/blktrace/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..5b74339
--- /dev/null
+++ b/meta/recipes-kernel/blktrace/blktrace/dso_linking_change_build_fix.patch
@@ -0,0 +1,26 @@
+after gcc linking has changed, all the libraries must be explicitely specified 
+This patch avoids this linking error:
+
+| make[1]: Entering directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/blktrace-1.0.1+git0+1e09f6e9012826fca69fa07222b7bc53c3e629ee-r1/git/btreplay'^M
+| ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types -I. -I.. -I../btt -D_GNU_SOURCE -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -UCOUNT_IOS -UDEBUG -DNDEBUG -o btreplay btreplay.o -laio -lrt^M
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: >: invalid DSO for symbol `pthread_join@@GLIBC_2.0' definition^M
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/lib/libpthread.so.0: could not read symbols: Bad value^M
+| collect2: ld returned 1 exit status^M
+| make[1]: *** [btreplay] Error 1
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+Index: git/btreplay/Makefile
+===================================================================
+--- git.orig/btreplay/Makefile
++++ git/btreplay/Makefile
+@@ -11,7 +11,7 @@ XCFLAGS	= -D_GNU_SOURCE -D_LARGEFILE_SOU
+ override CFLAGS += $(INCS) $(XCFLAGS) $(OCFLAGS)
+ 
+ PROGS	= btrecord btreplay
+-LIBS	= -laio -lrt
++LIBS	= -laio -lrt -lpthread
+ 
+ all: depend $(PROGS)
+ 
diff --git a/meta/recipes-kernel/blktrace/blktrace_git.bb b/meta/recipes-kernel/blktrace/blktrace_git.bb
index 85e4a4b..7cd8127 100644
--- a/meta/recipes-kernel/blktrace/blktrace_git.bb
+++ b/meta/recipes-kernel/blktrace/blktrace_git.bb
@@ -4,11 +4,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 DEPENDS = "libaio"
 
-PR = r1
+PR = r2
 PV = "1.0.1+git${SRCPV}"
 
 SRC_URI = "git://git.kernel.dk/blktrace.git;protocol=git \
-           file://blktrace-makefile.patch"
+           file://blktrace-makefile.patch \
+           file://dso_linking_change_build_fix.patch"
 
 SRC_URI[md5sum] = "588aa9ab8a14d1766ab3f061d728ed89"
 SRC_URI[sha256sum] = "f3cb6a3df1b3dc67369c7c4da3444a7897aa8a18e55937b368e0a6aa2f64b3aa"
-- 
1.7.3.4


