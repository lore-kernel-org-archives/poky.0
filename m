Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66D084C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 15:55:44 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 7DB69304F8
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 16:55:37 -0500 (EST)
Message-Id: <748343a5ec43c6e76274dacd653eb3194eb6ed1b.1291326732.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1291326732.git.scott.a.garman@intel.com>
References: <cover.1291326732.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Mon, 29 Nov 2010 20:47:12 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 7DB69304F8.33380
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/3] libatomics-ops: recipe updates, fix build for mips
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
X-List-Received-Date: Thu, 02 Dec 2010 21:55:44 -0000

* Added another patch from Gentoo/OE to allow package to build for
  mips arches
* Added SUMMARY, HOMEPAGE, and SECTION fields
* Added source checksums

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../gentoo/libatomic_ops-1.2-mips.patch            |  125 ++++++++++++++++++++
 .../pulseaudio/libatomics-ops_1.2.bb               |   17 ++-
 2 files changed, 137 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-multimedia/pulseaudio/libatomics-ops/gentoo/libatomic_ops-1.2-mips.patch

diff --git a/meta/recipes-multimedia/pulseaudio/libatomics-ops/gentoo/libatomic_ops-1.2-mips.patch b/meta/recipes-multimedia/pulseaudio/libatomics-ops/gentoo/libatomic_ops-1.2-mips.patch
new file mode 100644
index 0000000..29f07b9
--- /dev/null
+++ b/meta/recipes-multimedia/pulseaudio/libatomics-ops/gentoo/libatomic_ops-1.2-mips.patch
@@ -0,0 +1,125 @@
+# Patch copied from the OpenEmbedded libatomics-ops recipe. Original
+# source was from Gentoo.
+#
+# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+diff --git a/src/atomic_ops.h b/src/atomic_ops.h
+index c23f30b..791b360 100755
+--- a/src/atomic_ops.h
++++ b/src/atomic_ops.h
+@@ -220,6 +220,9 @@
+ # if defined(__cris__) || defined(CRIS)
+ #   include "atomic_ops/sysdeps/gcc/cris.h"
+ # endif
++# if defined(__mips__) 
++#   include "atomic_ops/sysdeps/gcc/mips.h"
++# endif
+ #endif /* __GNUC__ && !AO_USE_PTHREAD_DEFS */
+ 
+ #if defined(__INTEL_COMPILER) && !defined(AO_USE_PTHREAD_DEFS)
+diff --git a/src/atomic_ops/sysdeps/Makefile.am b/src/atomic_ops/sysdeps/Makefile.am
+index 74122b4..d6737c0 100644
+--- a/src/atomic_ops/sysdeps/Makefile.am
++++ b/src/atomic_ops/sysdeps/Makefile.am
+@@ -29,6 +29,7 @@ nobase_sysdep_HEADERS= generic_pthread.h \
+ 	  gcc/powerpc.h gcc/sparc.h \
+ 	  gcc/hppa.h gcc/m68k.h gcc/s390.h \
+ 	  gcc/ia64.h gcc/x86_64.h gcc/cris.h \
++	  gcc/mips.h \
+ 	\
+ 	  icc/ia64.h \
+ 	\
+diff --git a/src/atomic_ops/sysdeps/gcc/mips.h b/src/atomic_ops/sysdeps/gcc/mips.h
+new file mode 100644
+index 0000000..e7f3a5d
+--- /dev/null
++++ b/src/atomic_ops/sysdeps/gcc/mips.h
+@@ -0,0 +1,89 @@
++/* 
++ * Copyright (c) 2005  Thiemo Seufer <ths@networkno.de>
++ * Copyright (c) 2007  Zhang Le <r0bertz@gentoo.org>
++ *
++ * THIS MATERIAL IS PROVIDED AS IS, WITH ABSOLUTELY NO WARRANTY EXPRESSED
++ * OR IMPLIED.  ANY USE IS AT YOUR OWN RISK.
++ *
++ * Permission is hereby granted to use or copy this program
++ * for any purpose,  provided the above notices are retained on all copies.
++ * Permission to modify the code and to distribute modified code is granted,
++ * provided the above notices are retained, and a notice that the code was
++ * modified is included with the above copyright notice.
++ */
++
++#include "../all_aligned_atomic_load_store.h"
++#include "../test_and_set_t_is_ao_t.h"
++
++/* Data dependence does not imply read ordering.  */
++#define AO_NO_DD_ORDERING
++
++AO_INLINE void
++AO_nop_full()
++{
++  __asm__ __volatile__(
++      "       .set push           \n"
++      "       .set mips3          \n"
++      "       .set noreorder      \n"
++      "       .set nomacro        \n"
++      "       sync                \n"
++      "       .set pop              "
++      : : : "memory");
++}
++
++#define AO_HAVE_nop_full
++
++AO_INLINE int
++AO_compare_and_swap(volatile AO_t *addr, AO_t old, AO_t new_val)
++{
++  register int was_equal = 0;
++  register int temp;
++
++  __asm__ __volatile__(
++      "       .set push           \n"
++      "       .set mips3          \n"
++      "       .set noreorder      \n"
++      "       .set nomacro        \n"
++      "1:     ll      %0, %1      \n"
++      "       bne     %0, %4, 2f  \n"
++      "       move    %0, %3      \n"
++      "       sc      %0, %1      \n"
++      "       .set pop            \n"
++      "       beqz    %0, 1b      \n"
++      "       li      %2, 1       \n"
++      "2:                           "
++      : "=&r" (temp), "+R" (*addr), "+r" (was_equal)
++      : "r" (new_val), "r" (old)
++      : "memory");
++  return was_equal;
++}
++
++#define AO_HAVE_compare_and_swap
++
++AO_INLINE AO_t
++AO_fetch_and_add_full (volatile AO_t *p, AO_t incr)
++{
++  AO_t result, temp;
++  __asm__ __volatile__(
++      "       .set push           \n"
++      "       .set mips3          \n"
++      "       .set noreorder      \n"
++      "       .set nomacro        \n"
++      "1:     ll      %1, %2      \n"
++      "       addu    %0, %1, %3  \n"
++      "       sc      %0, %2      \n"
++      "       beqz    %0, 1b      \n"
++      "       addu    %0, %1, %3  \n"
++      "       sync                \n"
++      "       .set pop            \n"
++      : "=&r" (result), "=&r" (temp), "=m" (*p)
++      : "r" (incr), "m" (*p)
++      : "memory");
++  return result;
++}
++
++#define AO_HAVE_fetch_and_add_full
++
++/*
++ * FIXME: fetch_and_add_full implemented, any others?
++ */
diff --git a/meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb b/meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb
index 0160c3d..79f4517 100644
--- a/meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb
+++ b/meta/recipes-multimedia/pulseaudio/libatomics-ops_1.2.bb
@@ -1,13 +1,20 @@
+SUMMARY = "A library for atomic integer operations"
 DESCRIPTION = "A library for atomic integer operations"
+HOMEPAGE = "http://www.hpl.hp.com/research/linux/atomic_ops/"
+SECTION = "optional"
 LICENSE = "GPLv2&MIT"
 LIC_FILES_CHKSUM = "file://doc/COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
-		    file://doc/LICENSING.txt;md5=607073e04548eac7d1f763e480477bab \
+                    file://doc/LICENSING.txt;md5=607073e04548eac7d1f763e480477bab \
 		   "
-PR = "r4"
+PR = "r5"
 
-SRC_URI = "http://www.hpl.hp.com/research/linux/atomic_ops/download/libatomic_ops-1.2.tar.gz \
-           file://fedora/libatomic_ops-1.2-ppclwzfix.patch;patch=1 \
-           file://doublefix.patch;patch=1"
+SRC_URI = "http://www.hpl.hp.com/research/linux/atomic_ops/download/libatomic_ops-${PV}.tar.gz \
+           file://fedora/libatomic_ops-1.2-ppclwzfix.patch \
+           file://gentoo/libatomic_ops-1.2-mips.patch \
+           file://doublefix.patch"
+
+SRC_URI[md5sum] = "1b65e48271c81e3fa2d7a9a69bab7504"
+SRC_URI[sha256sum] = "a3d8768aa8fd2f6ae79be2d756b3a6b48816b3889ae906be3d5ffb2de5a5c781"
 
 S = "${WORKDIR}/libatomic_ops-${PV}"
 
-- 
1.7.1


