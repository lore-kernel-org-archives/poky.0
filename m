Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 748ADE006B0
	for <poky@yoctoproject.org>; Fri, 23 Dec 2011 09:59:03 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 23 Dec 2011 09:59:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="50150320"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Dec 2011 09:59:03 -0800
From: nitin.a.kamble@intel.com
To: poky@yoctoproject.org
Date: Fri, 23 Dec 2011 09:59:01 -0800
Message-Id: <f3c376b1d1fcd2a85422619705c725074c7615a4.1324662983.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.4
In-Reply-To: <cover.1324662983.git.nitin.a.kamble@intel.com>
References: <cover.1324662983.git.nitin.a.kamble@intel.com>
Subject: [edison 1/1] gcc-4.6: Fix gcc ICE on qt4-x11-free/armv7-a
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
X-List-Received-Date: Fri, 23 Dec 2011 17:59:03 -0000

From: Khem Raj <raj.khem@gmail.com>

Backport fix for PR 47551 fixes the ICE seen on armv7-a/qt4-x11-free
Bump up SRCREV past gcc 4.6.2 release

(From OE-Core rev: dd2fdf9f5a3923c37e4ea2e46e347bb0657c2f5b)

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

(From Yocto master rev: 7022a8f8045bdf82b9209b8cd62fb09c4a7a24f8)
Backporting the oecore fix into edison branch.
This fixes bug: [YOCTO #1863]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/gcc/gcc-4.6.inc           |    9 ++--
 meta/recipes-devtools/gcc/gcc-4.6/pr47551.patch |   63 +++++++++++++++++++++++
 2 files changed, 68 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.6/pr47551.patch

diff --git a/meta/recipes-devtools/gcc/gcc-4.6.inc b/meta/recipes-devtools/gcc/gcc-4.6.inc
index d460940..d96394a 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.6.inc
@@ -1,6 +1,6 @@
 require gcc-common.inc
 
-PR = "r16"
+PR = "r17"
 
 # Third digit in PV should be incremented after a minor release
 # happens from this branch on gcc e.g. currently its 4.6.0
@@ -8,7 +8,7 @@ PR = "r16"
 # on branch then PV should be incremented to 4.6.1+svnr${SRCPV}
 # to reflect that change
 
-PV = "4.6.1+svnr${SRCPV}"
+PV = "4.6.2+svnr${SRCPV}"
 
 # BINV should be incremented after updating to a revision
 # after a minor gcc release (e.g. 4.6.1 or 4.6.2) has been made
@@ -16,9 +16,9 @@ PV = "4.6.1+svnr${SRCPV}"
 # 4.6.1 then the value below will have 2 which will mean 4.6.2
 # which will be next minor release and so on.
 
-BINV = "4.6.2"
+BINV = "4.6.3"
 
-SRCREV = 180099
+SRCREV = 181430
 BRANCH = "gcc-4_6-branch"
 FILESPATH = "${@base_set_filespath([ '${FILE_DIRNAME}/gcc-4.6' ], d)}"
 
@@ -70,6 +70,7 @@ SRC_URI = "svn://gcc.gnu.org/svn/gcc/branches;module=${BRANCH};proto=http \
            file://fix-for-ice-50099.patch \
 	   file://pr46934.patch \
 	   file://pr32219.patch \
+	   file://pr47551.patch \
 	  "
 
 SRC_URI_append_sh3  = " file://sh3-installfix-fixheaders.patch "
diff --git a/meta/recipes-devtools/gcc/gcc-4.6/pr47551.patch b/meta/recipes-devtools/gcc/gcc-4.6/pr47551.patch
new file mode 100644
index 0000000..5271ffa
--- /dev/null
+++ b/meta/recipes-devtools/gcc/gcc-4.6/pr47551.patch
@@ -0,0 +1,63 @@
+2011-02-02  Richard Sandiford  <richard.sandiford@linaro.org>
+
+	gcc/
+	PR target/47551
+	* config/arm/arm.c (coproc_secondary_reload_class): Handle
+	structure modes.  Don't check neon_vector_mem_operand for
+	vector or structure modes.
+
+	gcc/testsuite/
+	PR target/47551
+	* gcc.target/arm/neon-modes-2.c: New test.
+
+=== modified file 'gcc/config/arm/arm.c'
+--- old/gcc/config/arm/arm.c	2011-02-21 14:04:51 +0000
++++ new/gcc/config/arm/arm.c	2011-03-02 11:38:43 +0000
+@@ -9139,11 +9139,14 @@
+       return GENERAL_REGS;
+     }
+ 
++  /* The neon move patterns handle all legitimate vector and struct
++     addresses.  */
+   if (TARGET_NEON
++      && MEM_P (x)
+       && (GET_MODE_CLASS (mode) == MODE_VECTOR_INT
+-          || GET_MODE_CLASS (mode) == MODE_VECTOR_FLOAT)
+-      && neon_vector_mem_operand (x, 0))
+-     return NO_REGS;
++	  || GET_MODE_CLASS (mode) == MODE_VECTOR_FLOAT
++	  || VALID_NEON_STRUCT_MODE (mode)))
++    return NO_REGS;
+ 
+   if (arm_coproc_mem_operand (x, wb) || s_register_operand (x, mode))
+     return NO_REGS;
+
+=== added file 'gcc/testsuite/gcc.target/arm/neon-modes-2.c'
+--- old/gcc/testsuite/gcc.target/arm/neon-modes-2.c	1970-01-01 00:00:00 +0000
++++ new/gcc/testsuite/gcc.target/arm/neon-modes-2.c	2011-02-02 10:02:45 +0000
+@@ -0,0 +1,24 @@
++/* { dg-do compile } */
++/* { dg-require-effective-target arm_neon_ok } */
++/* { dg-options "-O1" } */
++/* { dg-add-options arm_neon } */
++
++#include "arm_neon.h"
++
++#define SETUP(A) x##A = vld3_u32 (ptr + A * 0x20)
++#define MODIFY(A) x##A = vld3_lane_u32 (ptr + A * 0x20 + 0x10, x##A, 1)
++#define STORE(A) vst3_u32 (ptr + A * 0x20, x##A)
++
++#define MANY(A) A (0), A (1), A (2), A (3), A (4), A (5)
++
++void
++bar (uint32_t *ptr, int y)
++{
++  uint32x2x3_t MANY (SETUP);
++  int *x = __builtin_alloca (y);
++  int z[0x1000];
++  foo (x, z);
++  MANY (MODIFY);
++  foo (x, z);
++  MANY (STORE);
++}
+
-- 
1.7.6.4


