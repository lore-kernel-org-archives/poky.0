Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C0E64C81199
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:32 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 May 2011 17:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="435293401"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 17:20:32 -0700
Message-Id: <3fababb902d96342ffedbf2859346bd4c2b9e268.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:33:01 -0700
Date: Thu, 12 May 2011 17:20:32 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 12/25] gdb: update upstream-status of patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:32 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../fix_for_build_error_internal_error_call.patch  |    2 ++
 .../gdb/gdb/gdbserver-cflags-last.diff             |    2 ++
 .../gdb/gdb/kill_arm_map_symbols.patch             |    2 ++
 .../recipes-devtools/gdb/gdb/libiberty-cross.patch |    2 ++
 meta/recipes-devtools/gdb/gdb/no-werror.patch      |    2 ++
 .../recipes-devtools/gdb/gdb/sim-install-6.6.patch |    2 ++
 meta/recipes-devtools/gdb/gdb/sim-install.patch    |    2 ++
 meta/recipes-devtools/gdb/gdb/uclibc.patch         |    2 ++
 8 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/gdb/gdb/fix_for_build_error_internal_error_call.patch b/meta/recipes-devtools/gdb/gdb/fix_for_build_error_internal_error_call.patch
index f39eaa9..afb1783 100644
--- a/meta/recipes-devtools/gdb/gdb/fix_for_build_error_internal_error_call.patch
+++ b/meta/recipes-devtools/gdb/gdb/fix_for_build_error_internal_error_call.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 The prototype of function internall_error has changed. And one place in the code was not synced up with the new prototype, causing build error. This patche fixes that.
 
 Nitin A Kamble <nitin.a.kamble@intel.com>
diff --git a/meta/recipes-devtools/gdb/gdb/gdbserver-cflags-last.diff b/meta/recipes-devtools/gdb/gdb/gdbserver-cflags-last.diff
index 41395f9..0475a42 100644
--- a/meta/recipes-devtools/gdb/gdb/gdbserver-cflags-last.diff
+++ b/meta/recipes-devtools/gdb/gdb/gdbserver-cflags-last.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gdb/gdbserver/Makefile.in
 ===================================================================
 --- gdb/gdbserver/Makefile.in.orig
diff --git a/meta/recipes-devtools/gdb/gdb/kill_arm_map_symbols.patch b/meta/recipes-devtools/gdb/gdb/kill_arm_map_symbols.patch
index 1771421..c1756f7 100644
--- a/meta/recipes-devtools/gdb/gdb/kill_arm_map_symbols.patch
+++ b/meta/recipes-devtools/gdb/gdb/kill_arm_map_symbols.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 Index: gdb-6.3/gdb/arm-tdep.c
 ===================================================================
 --- gdb-6.3.orig/gdb/arm-tdep.c	2004-08-03 02:02:20.000000000 +0000
diff --git a/meta/recipes-devtools/gdb/gdb/libiberty-cross.patch b/meta/recipes-devtools/gdb/gdb/libiberty-cross.patch
index 0d1897f..d051fdf 100644
--- a/meta/recipes-devtools/gdb/gdb/libiberty-cross.patch
+++ b/meta/recipes-devtools/gdb/gdb/libiberty-cross.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- libiberty/configure.in.old	2004-03-31 21:25:25.000000000 +0100
 +++ libiberty/configure.in	2004-03-31 21:18:02.000000000 +0100
 @@ -100,6 +100,7 @@
diff --git a/meta/recipes-devtools/gdb/gdb/no-werror.patch b/meta/recipes-devtools/gdb/gdb/no-werror.patch
index 0926073..989e2c5 100644
--- a/meta/recipes-devtools/gdb/gdb/no-werror.patch
+++ b/meta/recipes-devtools/gdb/gdb/no-werror.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 ---
  bfd/warning.m4   |    2 +-
  configure.ac     |    2 +-
diff --git a/meta/recipes-devtools/gdb/gdb/sim-install-6.6.patch b/meta/recipes-devtools/gdb/gdb/sim-install-6.6.patch
index a39ceab..f67c25d 100644
--- a/meta/recipes-devtools/gdb/gdb/sim-install-6.6.patch
+++ b/meta/recipes-devtools/gdb/gdb/sim-install-6.6.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 --- gdb-6.1/sim/common/Makefile.in~	2004-01-15 21:25:06.000000000 +0000
 +++ gdb-6.1/sim/common/Makefile.in	2004-07-22 17:07:46.237809032 +0100
 @@ -34,7 +34,7 @@
diff --git a/meta/recipes-devtools/gdb/gdb/sim-install.patch b/meta/recipes-devtools/gdb/gdb/sim-install.patch
index 3c88c4c..a663ba7 100644
--- a/meta/recipes-devtools/gdb/gdb/sim-install.patch
+++ b/meta/recipes-devtools/gdb/gdb/sim-install.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 --- gdb-6.1/sim/common/Makefile.in~	2004-01-15 21:25:06.000000000 +0000
 +++ gdb-6.1/sim/common/Makefile.in	2004-07-22 17:07:46.237809032 +0100
 @@ -34,7 +34,7 @@
diff --git a/meta/recipes-devtools/gdb/gdb/uclibc.patch b/meta/recipes-devtools/gdb/gdb/uclibc.patch
index 3d6b7ba..f5fd518 100644
--- a/meta/recipes-devtools/gdb/gdb/uclibc.patch
+++ b/meta/recipes-devtools/gdb/gdb/uclibc.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- binutils-2.15.91.0.1/bfd/config.bfd~binutils-2.15.90.0.3-uclibc-100-conf
 +++ binutils-2.15.91.0.1/bfd/config.bfd
 @@ -128,7 +128,7 @@
-- 
1.7.3.4


