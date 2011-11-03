Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEE11E00307
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960392"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:22 -0700
Message-Id: <2816cc0db87004a4a6dd7580887cd843101c241f.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 10/17] valgrind: supporting on Linux kernel 3.x
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:32 -0000

From: Lin Tong <tong.lin@intel.com>

The old valgrind package do not support for Linux kernel 3.x, only for
kernel 2.4 and 2.6. Now adding the configuration to the configure.in
file to support Linux kernel 3.0.

This commit fixes the problem in valgrind [YOCTO #1129]

(From OE-Core rev: 5fc1e6d27f52e2032aa7a8ca20bb90d939d03c77)

Signed-off-by: Lin Tong <tong.lin@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Applied to Bernard's valgrind 3.6.0
Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../valgrind-3.6.0/fix_unsupporting_kernel_3.patch |   26 ++++++++++++++++++++
 meta/recipes-devtools/valgrind/valgrind_3.6.0.bb   |    5 ++-
 2 files changed, 29 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/valgrind/valgrind-3.6.0/fix_unsupporting_kernel_3.patch

diff --git a/meta/recipes-devtools/valgrind/valgrind-3.6.0/fix_unsupporting_kernel_3.patch b/meta/recipes-devtools/valgrind/valgrind-3.6.0/fix_unsupporting_kernel_3.patch
new file mode 100644
index 0000000..346ffeb
--- /dev/null
+++ b/meta/recipes-devtools/valgrind/valgrind-3.6.0/fix_unsupporting_kernel_3.patch
@@ -0,0 +1,26 @@
+valgrind: Add 3.x statements to "case" for supporting the kernel 3.x
+
+Signed-off-by: Lin Tong <tong.lin@intel.com>
+
+Upstream-Status: Pending
+
+diff --git a/configure.in b/configure.in
+index 3878619..1cb7dc7 100644
+--- a/configure.in
++++ b/configure.in
+@@ -229,10 +229,14 @@ case "${host_os}" in
+         	    AC_MSG_RESULT([2.4 family (${kernel})])
+         	    AC_DEFINE([KERNEL_2_4], 1, [Define to 1 if you're using Linux 2.4.x])
+         	    ;;
++             3.*)
++                    AC_MSG_RESULT([3 family (${kernel})])
++                    AC_DEFINE([KERNEL_3], 1, [Define to 1 if you're using Linux 3.x])
++                    ;;
+ 
+              *) 
+         	    AC_MSG_RESULT([unsupported (${kernel})])
+-        	    AC_MSG_ERROR([Valgrind works on kernels 2.4, 2.6])
++        	    AC_MSG_ERROR([Valgrind works on kernels 2.4, 2.6, 3.x])
+         	    ;;
+         esac
+ 
diff --git a/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb b/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb
index a33a540..066c16d 100644
--- a/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb
+++ b/meta/recipes-devtools/valgrind/valgrind_3.6.0.bb
@@ -7,11 +7,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=c46082167a314d785d012a244748d803 \
                     file://include/valgrind.h;beginline=1;endline=56;md5=13a71cedba99112334d8596162aec37e \
                     file://COPYING.DOCS;md5=8fdeb5abdb235a08e76835f8f3260215"
 DEPENDS = "virtual/libx11"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://www.valgrind.org/downloads/valgrind-${PV}.tar.bz2 \
 	   file://fix_issue_caused_by_ccache.patch \
-           file://fixed-perl-path.patch"
+           file://fixed-perl-path.patch \
+	   file://fix_unsupporting_kernel_3.patch"
 
 SRC_URI[md5sum] = "b289c5f4ab8e39741602445f1dd09b34"
 SRC_URI[sha256sum] = "bc0f0153b5a47b986f1d8efa2c488e0aea85a1cf2c4b11c52be127903080285f"
-- 
1.7.7


