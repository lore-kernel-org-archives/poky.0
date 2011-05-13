Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A6F64C8110B
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:30 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 17:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="642035975"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2011 17:20:30 -0700
Message-Id: <93912c4295a891c2a36c8dba70a6c34935f0e296.1305245923.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 15:14:00 -0700
Date: Thu, 12 May 2011 17:20:30 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 05/25] binutils: update upstream-status for patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:31 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 ...binutils-uclibc-300-001_ld_makefile_patch.patch |    1 +
 ...binutils-uclibc-300-006_better_file_error.patch |    1 +
 ...ils-uclibc-300-012_check_ldrunpath_length.patch |    1 +
 .../binutils-uclibc-gas-needs-libm.patch           |    1 +
 .../binutils-x86_64_i386_biarch.patch              |    1 +
 .../binutils-2.21/libiberty_path_fix.patch         |    2 ++
 .../binutils-2.21/libtool-2.4-update.patch         |    2 ++
 .../binutils/binutils-2.21/libtool-rpath-fix.patch |    2 ++
 8 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-001_ld_makefile_patch.patch b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-001_ld_makefile_patch.patch
index 04a7e61..07312d7 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-001_ld_makefile_patch.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-001_ld_makefile_patch.patch
@@ -24,6 +24,7 @@ case "$1" in
 esac
 
 exit 0
+Upstream-Status: Inappropriate [debian patch]
 
 @DPATCH@
 --- binutils-2.16.91.0.1/ld/Makefile.am
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-006_better_file_error.patch b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-006_better_file_error.patch
index f337611..35835b3 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-006_better_file_error.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-006_better_file_error.patch
@@ -22,6 +22,7 @@ case "$1" in
 esac
 
 exit 0
+Upstream-Status: Inappropriate [debian patch]
 
 @DPATCH@
 diff -urNad /home/james/debian/packages/binutils/binutils-2.14.90.0.6/bfd/opncls.c binutils-2.14.90.0.6/bfd/opncls.c
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-012_check_ldrunpath_length.patch b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-012_check_ldrunpath_length.patch
index b6f5a25..3944f2e 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-012_check_ldrunpath_length.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-012_check_ldrunpath_length.patch
@@ -22,6 +22,7 @@ case "$1" in
 esac
 
 exit 0
+Upstream-Status: Inappropriate [debian patch]
 
 @DPATCH@
 Index: src/ld/emultempl/elf32.em
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-gas-needs-libm.patch b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-gas-needs-libm.patch
index db838cf..5831579 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-gas-needs-libm.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-gas-needs-libm.patch
@@ -1,5 +1,6 @@
 Source: Khem Raj <raj.khem@gmail.com>
 Disposition: submit upstream.
+Upstream-Status: Pending
 
 Description:
 
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/binutils-x86_64_i386_biarch.patch b/meta/recipes-devtools/binutils/binutils-2.21/binutils-x86_64_i386_biarch.patch
index 4cd9e22..16c775c 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/binutils-x86_64_i386_biarch.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/binutils-x86_64_i386_biarch.patch
@@ -7,6 +7,7 @@
 #
 # Hacked to apply with quilt
 # Adapted to binutils 2.18.50.0.7
+Upstream-Status: Inappropriate [embedded specific]
 
 --- binutils/ld/emulparams/elf_i386.sh
 +++ binutils/ld/emulparams/elf_i386.sh
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/libiberty_path_fix.patch b/meta/recipes-devtools/binutils/binutils-2.21/libiberty_path_fix.patch
index 36a14d7..3772dfb 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/libiberty_path_fix.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/libiberty_path_fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 don't let the distro compiler point to the wrong installation location
 
 Thanks to RP for helping find the source code causing the issue.
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/libtool-2.4-update.patch b/meta/recipes-devtools/binutils/binutils-2.21/libtool-2.4-update.patch
index 52c4928..1f49db0 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/libtool-2.4-update.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/libtool-2.4-update.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 Index: binutils-2.21/libtool.m4
 ===================================================================
 --- binutils-2.21.orig/libtool.m4	2010-01-09 13:11:31.000000000 -0800
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/libtool-rpath-fix.patch b/meta/recipes-devtools/binutils/binutils-2.21/libtool-rpath-fix.patch
index a0058c1..2666d31 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/libtool-rpath-fix.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/libtool-rpath-fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 Enabling sysroot support in libtool exposed a bug where the final
 library had an RPATH encoded into it which still pointed to the
 sysroot. This works around the issue until it gets sorted out
-- 
1.7.3.4


