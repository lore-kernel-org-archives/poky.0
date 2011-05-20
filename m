Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 80CC14C8047B
	for <poky@yoctoproject.org>; Fri, 20 May 2011 07:19:26 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4KCJPFS001913
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 20 May 2011 05:19:25 -0700 (PDT)
Received: from localhost (128.224.162.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 20 May 2011 05:19:24 -0700
Message-ID: <2a1f54c36d74702b453845dcba5564ac6d357aa7.1305891945.git.kai.kang@windriver.com>
In-Reply-To: <cover.1305891945.git.kai.kang@windriver.com>
References: <cover.1305891945.git.kai.kang@windriver.com>
Old-Date: Fri, 20 May 2011 17:26:36 +0800
Date: Fri, 20 May 2011 20:19:59 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.196]
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] ghostscript: fix run failure on mpc8315e
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
X-List-Received-Date: Fri, 20 May 2011 12:19:31 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

When run gs on mpc8315, it fails with:
GPL Ghostscript 9.02: ./psi/interp.c(291): Fatal error -20 in gs_interp_init!
It is caused by cross compile.

Accoding to the ghostscript document on:
http://pages.cs.wisc.edu/~ghost/doc/cvs/Make.htm#Cross-compiling
it needs some manual work, so import patches from WindRiver Linux.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../ghostscript-8.64-mips64n32-build.patch         |  113 +++++++++++++++++++
 .../ghostscript/ghostscript-8.64-ppc32-build.patch |  113 +++++++++++++++++++
 .../ghostscript/ghostscript-8.64-x86-build.patch   |  115 ++++++++++++++++++++
 .../ghostscript-8.64-x86_64-build.patch            |  113 +++++++++++++++++++
 .../ghostscript/ghostscript-9.02-arm-build.patch   |  109 +++++++++++++++++++
 .../ghostscript/ghostscript_9.02.bb                |   17 +++-
 6 files changed, 577 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-mips64n32-build.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-ppc32-build.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86-build.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86_64-build.patch
 create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-arm-build.patch

diff --git a/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-mips64n32-build.patch b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-mips64n32-build.patch
new file mode 100644
index 0000000..9618754
--- /dev/null
+++ b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-mips64n32-build.patch
@@ -0,0 +1,113 @@
+import patch from windriver linux to cross compile on mips
+
+Upstream-status: Pending
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+# Author: Chi Xu <chi.xu@windriver.com>
+# Date: Feb 26 2010
+# Summary: Generate arch.h for mips64n32 and mips64
+#
+
+diff -Nru ghostscript-8.64.orig/base/lib.mak ghostscript-8.64/base/lib.mak
+--- ghostscript-8.64.orig/base/lib.mak	2010-02-10 10:30:02.000000000 +0800
++++ ghostscript-8.64/base/lib.mak	2010-02-24 09:31:04.000000000 +0800
+@@ -50,8 +50,8 @@
+ stdpre_h=$(GLSRC)stdpre.h $(stdpn_h)
+ stdint__h=$(GLSRC)stdint_.h $(std_h)
+
+-$(GLGEN)arch.h : $(GENARCH_XE)
+-	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
++##$(GLGEN)arch.h : $(GENARCH_XE)
++##	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
+
+ # Platform interfaces
+
+diff -Nru ghostscript-8.64.orig/obj/arch.h ghostscript-8.64/obj/arch.h
+--- ghostscript-8.64.orig/obj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-8.64/obj/arch.h	2010-02-24 09:30:25.000000000 +0800
+@@ -0,0 +1,40 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 4
++#define ARCH_ALIGN_PTR_MOD 4
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 8
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 2
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 4
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 1
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
+diff -Nru ghostscript-8.64.orig/soobj/arch.h ghostscript-8.64/soobj/arch.h
+--- ghostscript-8.64.orig/soobj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-8.64/soobj/arch.h	2010-02-24 09:30:32.000000000 +0800
+@@ -0,0 +1,40 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 4
++#define ARCH_ALIGN_PTR_MOD 4
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 8
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 2
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 4
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 1
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
diff --git a/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-ppc32-build.patch b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-ppc32-build.patch
new file mode 100644
index 0000000..0f3571d
--- /dev/null
+++ b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-ppc32-build.patch
@@ -0,0 +1,113 @@
+import patch from windriver linux to cross compile on ppc32
+
+Upstream-status: Pending
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+# Author: Chi Xu <chi.xu@windriver.com>
+# Date: Feb 26 2010
+# Summary: Generate arch.h for ppc32
+#
+
+diff -Nru ghostscript-8.64.orig/base/lib.mak ghostscript-8.64/base/lib.mak
+--- ghostscript-8.64.orig/base/lib.mak	2010-02-10 10:30:02.000000000 +0800
++++ ghostscript-8.64/base/lib.mak	2010-02-10 10:56:21.000000000 +0800
+@@ -50,8 +50,8 @@
+ stdpre_h=$(GLSRC)stdpre.h $(stdpn_h)
+ stdint__h=$(GLSRC)stdint_.h $(std_h)
+
+-$(GLGEN)arch.h : $(GENARCH_XE)
+-	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
++##$(GLGEN)arch.h : $(GENARCH_XE)
++##	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
+
+ # Platform interfaces
+
+diff -Nru ghostscript-8.64.orig/obj/arch.h ghostscript-8.64/obj/arch.h
+--- ghostscript-8.64.orig/obj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-8.64/obj/arch.h	2010-02-10 10:31:44.000000000 +0800
+@@ -0,0 +1,40 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 4
++#define ARCH_ALIGN_PTR_MOD 4
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 8
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 2
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 4
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 1
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
+diff -Nru ghostscript-8.64.orig/soobj/arch.h ghostscript-8.64/soobj/arch.h
+--- ghostscript-8.64.orig/soobj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-8.64/soobj/arch.h	2010-02-10 10:31:24.000000000 +0800
+@@ -0,0 +1,40 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 4
++#define ARCH_ALIGN_PTR_MOD 4
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 8
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 2
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 4
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 1
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
diff --git a/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86-build.patch b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86-build.patch
new file mode 100644
index 0000000..257cc30
--- /dev/null
+++ b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86-build.patch
@@ -0,0 +1,115 @@
+import patch from windriver linux to cross compile on x86
+
+Upstream-status: Pending
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+# Author: Chi Xu <chi.xu@windriver.com>
+# Date: Feb 26 2010
+# Summary: Generate arch.h for x86
+#
+
+diff -Nru ghostscript-8.64.orig/base/lib.mak ghostscript-8.64/base/lib.mak
+--- ghostscript-8.64.orig/base/lib.mak	2010-02-10 10:30:02.000000000 +0800
++++ ghostscript-8.64/base/lib.mak	2010-02-11 17:55:02.000000000 +0800
+@@ -50,8 +50,8 @@
+ stdpre_h=$(GLSRC)stdpre.h $(stdpn_h)
+ stdint__h=$(GLSRC)stdint_.h $(std_h)
+
+-$(GLGEN)arch.h : $(GENARCH_XE)
+-	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
++##$(GLGEN)arch.h : $(GENARCH_XE)
++##	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
+
+ # Platform interfaces
+
+diff -Nru ghostscript-8.64.orig/obj/arch.h ghostscript-8.64/obj/arch.h
+--- ghostscript-8.64.orig/obj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-8.64/obj/arch.h	2010-02-11 17:54:08.000000000 +0800
+@@ -0,0 +1,41 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 4
++#define ARCH_ALIGN_PTR_MOD 4
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 4
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 2
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 4
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 0
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
++
+diff -Nru ghostscript-8.64.orig/soobj/arch.h ghostscript-8.64/soobj/arch.h
+--- ghostscript-8.64.orig/soobj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-8.64/soobj/arch.h	2010-02-11 17:54:17.000000000 +0800
+@@ -0,0 +1,41 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 4
++#define ARCH_ALIGN_PTR_MOD 4
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 4
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 2
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 4
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 0
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
++
diff --git a/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86_64-build.patch b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86_64-build.patch
new file mode 100644
index 0000000..ddce1c5
--- /dev/null
+++ b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-8.64-x86_64-build.patch
@@ -0,0 +1,113 @@
+import patch from windriver linux to cross compile on x86_64
+
+Upstream-status: Pending
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+# Author: Chi Xu <chi.xu@windriver.com>
+# Date: Feb 26 2010
+# Summary: Generate arch.h for x86_64
+#
+
+diff -Nru ghostscript-8.64.orig/base/lib.mak ghostscript-8.64/base/lib.mak
+--- ghostscript-8.64.orig/base/lib.mak	2010-02-10 10:30:02.000000000 +0800
++++ ghostscript-8.64/base/lib.mak	2010-02-21 14:04:54.000000000 +0800
+@@ -50,8 +50,8 @@
+ stdpre_h=$(GLSRC)stdpre.h $(stdpn_h)
+ stdint__h=$(GLSRC)stdint_.h $(std_h)
+
+-$(GLGEN)arch.h : $(GENARCH_XE)
+-	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
++##$(GLGEN)arch.h : $(GENARCH_XE)
++##	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
+
+ # Platform interfaces
+
+diff -Nru ghostscript-8.64.orig/obj/arch.h ghostscript-8.64/obj/arch.h
+--- ghostscript-8.64.orig/obj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-8.64/obj/arch.h	2010-02-21 14:06:08.000000000 +0800
+@@ -0,0 +1,40 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 8
++#define ARCH_ALIGN_PTR_MOD 8
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 8
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 3
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 8
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 0
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
+diff -Nru ghostscript-8.64.orig/soobj/arch.h ghostscript-8.64/soobj/arch.h
+--- ghostscript-8.64.orig/soobj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-8.64/soobj/arch.h	2010-02-21 14:06:21.000000000 +0800
+@@ -0,0 +1,40 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 8
++#define ARCH_ALIGN_PTR_MOD 8
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 8
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 3
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 8
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 0
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
diff --git a/meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-arm-build.patch b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-arm-build.patch
new file mode 100644
index 0000000..cce0ab4
--- /dev/null
+++ b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-arm-build.patch
@@ -0,0 +1,109 @@
+create the arch.h on mpc8315e and make it as patch, just to help
+cross compile on arm platform
+
+Upstream-status: Pending
+
+Signed-off-by: Kang Kai <kai.kang@windriver.com>
+
+diff -Nru ghostscript-9.02.orig/base/lib.mak ghostscript-9.02/base/lib.mak
+--- ghostscript-9.02.orig/base/lib.mak	2010-02-10 10:30:02.000000000 +0800
++++ ghostscript-9.02/base/lib.mak	2010-02-11 17:55:02.000000000 +0800
+@@ -50,8 +50,8 @@
+ stdpre_h=$(GLSRC)stdpre.h $(stdpn_h)
+ stdint__h=$(GLSRC)stdint_.h $(std_h)
+
+-$(GLGEN)arch.h : $(GENARCH_XE)
+-	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
++##$(GLGEN)arch.h : $(GENARCH_XE)
++##	$(EXP)$(GENARCH_XE) $(GLGEN)arch.h
+
+ # Platform interfaces
+
+diff -Nru ghostscript-9.02.orig/obj/arch.h ghostscript-9.02/obj/arch.h
+--- ghostscript-9.02.orig/obj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-9.02/obj/arch.h	2010-02-11 17:54:08.000000000 +0800
+@@ -0,0 +1,40 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 4
++#define ARCH_ALIGN_PTR_MOD 4
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 8
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 2
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 4
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 0
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
+diff -Nru ghostscript-9.02.orig/soobj/arch.h ghostscript-9.02/soobj/arch.h
+--- ghostscript-9.02.orig/soobj/arch.h	1970-01-01 08:00:00.000000000 +0800
++++ ghostscript-9.02/soobj/arch.h	2010-02-11 17:54:17.000000000 +0800
+@@ -0,0 +1,40 @@
++/* Parameters derived from machine and compiler architecture. */
++/* This file is generated mechanically by genarch.c. */
++
++	 /* ---------------- Scalar alignments ---------------- */
++
++#define ARCH_ALIGN_SHORT_MOD 2
++#define ARCH_ALIGN_INT_MOD 4
++#define ARCH_ALIGN_LONG_MOD 4
++#define ARCH_ALIGN_PTR_MOD 4
++#define ARCH_ALIGN_FLOAT_MOD 4
++#define ARCH_ALIGN_DOUBLE_MOD 8
++
++	 /* ---------------- Scalar sizes ---------------- */
++
++#define ARCH_LOG2_SIZEOF_CHAR 0
++#define ARCH_LOG2_SIZEOF_SHORT 1
++#define ARCH_LOG2_SIZEOF_INT 2
++#define ARCH_LOG2_SIZEOF_LONG 2
++#define ARCH_LOG2_SIZEOF_LONG_LONG 3
++#define ARCH_SIZEOF_GX_COLOR_INDEX 8
++#define ARCH_SIZEOF_PTR 4
++#define ARCH_SIZEOF_FLOAT 4
++#define ARCH_SIZEOF_DOUBLE 8
++#define ARCH_FLOAT_MANTISSA_BITS 24
++#define ARCH_DOUBLE_MANTISSA_BITS 53
++
++	 /* ---------------- Unsigned max values ---------------- */
++
++#define ARCH_MAX_UCHAR ((unsigned char)0xff + (unsigned char)0)
++#define ARCH_MAX_USHORT ((unsigned short)0xffff + (unsigned short)0)
++#define ARCH_MAX_UINT ((unsigned int)~0 + (unsigned int)0)
++#define ARCH_MAX_ULONG ((unsigned long)~0L + (unsigned long)0)
++
++	 /* ---------------- Miscellaneous ---------------- */
++
++#define ARCH_IS_BIG_ENDIAN 0
++#define ARCH_PTRS_ARE_SIGNED 0
++#define ARCH_FLOATS_ARE_IEEE 1
++#define ARCH_ARITH_RSHIFT 2
++#define ARCH_DIV_NEG_POS_TRUNCATES 1
diff --git a/meta/recipes-extended/ghostscript/ghostscript_9.02.bb b/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
index dcdedad..fbbf181 100644
--- a/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
+++ b/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
@@ -15,19 +15,24 @@ SECTION = "console/utils"
 LICENSE = "GPLv3"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=d151214b3131251dfc9d858593acbd24"
 
-PR = "r0"
+PR = "r1"
 
-DEPENDS = "tiff ${PN}-native"
+DEPENDS = "${PN}-native tiff jpeg fontconfig cups"
 DEPENDS_virtclass-native = ""
 
 SRC_URI = "http://downloads.ghostscript.com/public/ghostscript-${PV}.tar.bz2 \
            file://ghostscript-9.02-prevent_recompiling.patch \
            "
+SRC_URI_append_powerpc = "file://ghostscript-8.64-ppc32-build.patch"
+SRC_URI_append_i586 = "file://ghostscript-8.64-x86-build.patch"
+SRC_URI_append_x86_64 = "file://ghostscript-8.64-x86_64-build.patch"
+SRC_URI_append_mips = "file://ghostscript-8.64-mips64n32-build.patch"
+SRC_URI_append_arm = "file://ghostscript-9.02-arm-build.patch"
 
 SRC_URI[md5sum] = "f67151444bd56a7904579fc75a083dd6"
 SRC_URI[sha256sum] = "03ea2cad13a36f8f9160912012b79619a826e7148fada6d3531feb25409ee05a"
 
-EXTRA_OECONF = "--with-system-libtiff --without-jbig2dec --without-jasper --x-includes=${STAGING_DIR_HOST}/usr/include/X11 --x-libraries=${STAGING_DIR_HOST}/usr/lib"
+EXTRA_OECONF = "--without-x --with-system-libtiff --without-jbig2dec --without-jasper --with-fontpath=${datadir}/fonts"
 
 inherit autotools
 
@@ -42,6 +47,12 @@ do_configure () {
     done
 }
 
+do_install_append () {
+    mkdir -p ${D}${datadir}/ghostscript/${PV}/
+    cp -r Resource ${D}${datadir}/ghostscript/${PV}/
+    cp -r iccprofiles ${D}${datadir}/ghostscript/${PV}/
+}
+
 python do_patch_virtclass-native () {
     pass
 }
-- 
1.7.5.1.300.gc565c


