Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C615F4C80A47
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:12 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485433"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:11 -0700
Message-Id: <00ab05370318c764309544a2dbff93d8fb1f6c5d.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 14:36:15 +0800
Date: Tue, 10 May 2011 17:01:40 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 14/39] glibc: add upstream status for glibc's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:13 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../glibc/glibc-2.10.1/arm-check-pf.patch          |    2 ++
 .../glibc/glibc-2.10.1/arm-longlong.patch          |    2 ++
 .../arm-lowlevellock-include-tls.patch             |    2 ++
 .../glibc/glibc-2.10.1/arm-memcpy.patch            |    2 ++
 .../glibc/glibc-2.10.1/dl-cache-libcmp.patch       |    2 ++
 .../glibc/glibc-2.10.1/fhs-linux-paths.patch       |    2 ++
 .../glibc-arm-IO-acquire-lock-fix.diff             |    2 ++
 .../glibc/glibc-2.10.1/glibc-arm-no-asm-page.patch |    2 ++
 .../glibc/glibc-2.10.1/glibc-check_pf.patch        |    2 ++
 .../glibc/glibc-2.10.1/ldd-unbash.patch            |    2 ++
 .../glibc/glibc-2.10.1/ldsocache-varrun.patch      |    2 ++
 .../glibc/glibc-2.10.1/local-args6.diff            |    2 ++
 .../glibc/glibc-2.10.1/march-i686.patch            |    1 +
 .../glibc/glibc-2.10.1/mips-rld-map-check.patch    |    2 ++
 .../glibc/glibc-2.10.1/nptl-crosscompile.patch     |    2 ++
 .../glibc/glibc-2.10.1/nscd-init.patch             |    2 ++
 .../glibc/glibc-2.10.1/powerpc-sqrt-hack.diff      |    2 ++
 .../recipes-core/glibc/glibc-2.10.1/rulesfix.patch |    2 ++
 18 files changed, 35 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/glibc/glibc-2.10.1/arm-check-pf.patch b/meta/recipes-core/glibc/glibc-2.10.1/arm-check-pf.patch
index b9c7226..b045405 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/arm-check-pf.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/arm-check-pf.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 Index: glibc-2.9/ports/sysdeps/unix/sysv/linux/arm/check_pf.c
 ===================================================================
 --- glibc-2.9.orig/ports/sysdeps/unix/sysv/linux/arm/check_pf.c	2009-06-19 20:45:32.451372131 +0400
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/arm-longlong.patch b/meta/recipes-core/glibc/glibc-2.10.1/arm-longlong.patch
index 28aca83..ce67d7e 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/arm-longlong.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/arm-longlong.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- glibc-2.4/stdlib/longlong.h.ark	2006-03-11 22:49:27.000000000 +0100
 +++ glibc-2.4/stdlib/longlong.h	2006-03-11 22:55:12.000000000 +0100
 @@ -206,6 +206,14 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/arm-lowlevellock-include-tls.patch b/meta/recipes-core/glibc/glibc-2.10.1/arm-lowlevellock-include-tls.patch
index 5c8062e..3f81295 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/arm-lowlevellock-include-tls.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/arm-lowlevellock-include-tls.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 Index: glibc-2.9/ports/sysdeps/unix/sysv/linux/arm/nptl/lowlevellock.h
 ===================================================================
 --- glibc-2.9.orig/ports/sysdeps/unix/sysv/linux/arm/nptl/lowlevellock.h	2009-06-19 20:54:35.446686910 +0400
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/arm-memcpy.patch b/meta/recipes-core/glibc/glibc-2.10.1/arm-memcpy.patch
index bc2b3da..f50d481 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/arm-memcpy.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/arm-memcpy.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- /dev/null	2004-02-02 20:32:13.000000000 +0000
 +++ sysdeps/arm/memmove.S	2004-03-20 18:37:23.000000000 +0000
 @@ -0,0 +1,251 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/dl-cache-libcmp.patch b/meta/recipes-core/glibc/glibc-2.10.1/dl-cache-libcmp.patch
index 2fedfa6..199aaa6 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/dl-cache-libcmp.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/dl-cache-libcmp.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- glibc-2.4/elf/Versions.ark	2006-03-11 23:30:09.000000000 +0100
 +++ glibc-2.4/elf/Versions	2006-03-11 23:31:44.000000000 +0100
 @@ -63,5 +63,7 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/fhs-linux-paths.patch b/meta/recipes-core/glibc/glibc-2.10.1/fhs-linux-paths.patch
index 1f32f6d..91c6781 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/fhs-linux-paths.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/fhs-linux-paths.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- glibc-2.1.1/sysdeps/unix/sysv/linux/paths.h~	Thu May 27 13:16:33 1999
 +++ glibc-2.1.1/sysdeps/unix/sysv/linux/paths.h	Thu May 27 13:17:55 1999
 @@ -71,7 +71,7 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/glibc-arm-IO-acquire-lock-fix.diff b/meta/recipes-core/glibc/glibc-2.10.1/glibc-arm-IO-acquire-lock-fix.diff
index a552cf0..843c5e8 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/glibc-arm-IO-acquire-lock-fix.diff
+++ b/meta/recipes-core/glibc/glibc-2.10.1/glibc-arm-IO-acquire-lock-fix.diff
@@ -1,5 +1,7 @@
 Arm needs a similar fix as http://sourceware.org/ml/libc-ports/2007-12/msg00000.html
 
+Upstream-Status: Inappropriate [not used]
+
 --- /tmp/stdio-lock.h	2008-03-04 18:51:15.555038993 +0100
 +++ glibc-2.7/ports/sysdeps/unix/sysv/linux/arm/bits/stdio-lock.h	2008-03-04 18:51:28.445035052 +0100
 @@ -50,6 +50,8 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/glibc-arm-no-asm-page.patch b/meta/recipes-core/glibc/glibc-2.10.1/glibc-arm-no-asm-page.patch
index 7eb1717..9dba9d2 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/glibc-arm-no-asm-page.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/glibc-arm-no-asm-page.patch
@@ -1,5 +1,7 @@
 http://sourceware.org/ml/libc-ports/2008-04/msg00005.html
 
+Upstream-Status: Inappropriate [not used]
+
 
 Index: glibc-2.6.1/ports/sysdeps/unix/sysv/linux/arm/ioperm.c
 ===================================================================
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/glibc-check_pf.patch b/meta/recipes-core/glibc/glibc-2.10.1/glibc-check_pf.patch
index 3cff6bb..a0e55bf 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/glibc-check_pf.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/glibc-check_pf.patch
@@ -51,6 +51,8 @@ CodeSourcery
 	* sysdeps/unix/sysv/linux/arm/check_pf.c: New file.
 	* sysdeps/unix/sysv/linux/arm/eabi/check_pf.c: New file.
 
+Upstream-Status: Inappropriate [not used]
+
 Index: sysdeps/unix/sysv/linux/arm/check_pf.c
 ===================================================================
 RCS file: sysdeps/unix/sysv/linux/arm/check_pf.c
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/ldd-unbash.patch b/meta/recipes-core/glibc/glibc-2.10.1/ldd-unbash.patch
index 2fb8854..1601310 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/ldd-unbash.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/ldd-unbash.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- glibc-2.5/elf/ldd.bash.in.org	2006-04-30 16:06:20.000000000 +0000
 +++ glibc-2.5/elf/ldd.bash.in	2007-03-30 19:18:57.000000000 +0000
 @@ -110,7 +110,7 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/ldsocache-varrun.patch b/meta/recipes-core/glibc/glibc-2.10.1/ldsocache-varrun.patch
index 9994d4f..c303c64 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/ldsocache-varrun.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/ldsocache-varrun.patch
@@ -5,6 +5,8 @@ where /etc is JFFS2 or CRAMFS but /var is a ramdisk.
 # Patch managed by http://www.mn-logistik.de/unsupported/pxa250/patcher
 #
 
+Upstream-Status: Inappropriate [not used]
+
 --- libc/sysdeps/generic/dl-cache.h~ldsocache-varrun
 +++ libc/sysdeps/generic/dl-cache.h
 @@ -29,7 +29,7 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/local-args6.diff b/meta/recipes-core/glibc/glibc-2.10.1/local-args6.diff
index 28c957f..d6f3e0e 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/local-args6.diff
+++ b/meta/recipes-core/glibc/glibc-2.10.1/local-args6.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- glibc-2.7/ports/sysdeps/unix/sysv/linux/arm/nptl/sysdep-cancel.h.orig
 +++ glibc-2.7/ports/sysdeps/unix/sysv/linux/arm/nptl/sysdep-cancel.h
 @@ -73,6 +73,9 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/march-i686.patch b/meta/recipes-core/glibc/glibc-2.10.1/march-i686.patch
index 0461603..687235c 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/march-i686.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/march-i686.patch
@@ -4,6 +4,7 @@
        * nptl/sysdeps/pthread/pt-initfini.c: Ditto.
 
 
+Upstream-Status: Inappropriate [not used]
 
 Index: sysdeps/unix/sysv/linux/i386/sysdep.h
 ===================================================================
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/mips-rld-map-check.patch b/meta/recipes-core/glibc/glibc-2.10.1/mips-rld-map-check.patch
index ed08d7e..2599e16 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/mips-rld-map-check.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/mips-rld-map-check.patch
@@ -4,6 +4,8 @@ a binutils bug, but libc shouldn't segfault in this case.
 
 see also: http://sourceware.org/bugilla/show_bug.cgi?id=11615
 
+Upstream-Status: Inappropriate [not used]
+
 9/19/2010 - added by Qing He <qing.he@intel.com>
 ---
 diff -ru glibc-2.10.1.orig/ports/sysdeps/mips/dl-machine.h glibc-2.10.1/ports/sysdeps/mips/dl-machine.h
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/nptl-crosscompile.patch b/meta/recipes-core/glibc/glibc-2.10.1/nptl-crosscompile.patch
index 18a46ad..7e3d9bb 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/nptl-crosscompile.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/nptl-crosscompile.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- glibc-2.4/nptl/sysdeps/pthread/configure.in.ark	2006-03-12 00:41:40.000000000 +0100
 +++ glibc-2.4/nptl/sysdeps/pthread/configure.in	2006-03-12 00:44:08.000000000 +0100
 @@ -45,5 +45,6 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/nscd-init.patch b/meta/recipes-core/glibc/glibc-2.10.1/nscd-init.patch
index 884609a..8017e49 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/nscd-init.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/nscd-init.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 --- nscd/nscd.init
 +++ nscd/nscd.init
 @@ -48,9 +48,8 @@
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/powerpc-sqrt-hack.diff b/meta/recipes-core/glibc/glibc-2.10.1/powerpc-sqrt-hack.diff
index 1046efb..bbc75d1 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/powerpc-sqrt-hack.diff
+++ b/meta/recipes-core/glibc/glibc-2.10.1/powerpc-sqrt-hack.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 diff -Nurd ../glibc-initial-2.5-r4/glibc-2.5/sysdeps/powerpc/fpu/e_sqrt.c glibc-2.5/sysdeps/powerpc/fpu/e_sqrt.c
 --- ../glibc-initial-2.5-r4/glibc-2.5/sysdeps/powerpc/fpu/e_sqrt.c	2006-04-14 07:44:30.000000000 +0200
 +++ glibc-2.5/sysdeps/powerpc/fpu/e_sqrt.c	2006-12-08 12:53:32.202227000 +0100
diff --git a/meta/recipes-core/glibc/glibc-2.10.1/rulesfix.patch b/meta/recipes-core/glibc/glibc-2.10.1/rulesfix.patch
index 67bfc94..585bb62 100644
--- a/meta/recipes-core/glibc/glibc-2.10.1/rulesfix.patch
+++ b/meta/recipes-core/glibc/glibc-2.10.1/rulesfix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 Index: glibc-2.9/Makerules
 ===================================================================
 --- glibc-2.9.orig/Makerules	2009-09-14 16:39:21.000000000 +0100
-- 
1.7.1


