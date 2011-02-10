Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CA7B4C80053
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 01:03:57 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Feb 2011 23:03:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="601224936"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2011 23:03:57 -0800
Message-Id: <b716528ecf8c29d68b07c8b9bb6fccfe03caad8c.1297321220.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1297321220.git.dexuan.cui@intel.com>
References: <cover.1297321220.git.dexuan.cui@intel.com>
Old-Date: Thu, 10 Feb 2011 14:49:36 +0800
Date: Thu, 10 Feb 2011 15:03:01 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 1/1] lttng-ust: fix ppc build by removing ppc specific time reading function
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
X-List-Received-Date: Thu, 10 Feb 2011 07:03:58 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Here I introduced a patch from lttng mailing list to fix ppc build.
See the patch for more details.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...remove_ppc_specific_time_reading_function.patch |   85 ++++++++++++++++++++
 meta/recipes-kernel/lttng/lttng-ust_0.11.bb        |    6 +-
 2 files changed, 89 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-kernel/lttng/lttng-ust-0.11/remove_ppc_specific_time_reading_function.patch

diff --git a/meta/recipes-kernel/lttng/lttng-ust-0.11/remove_ppc_specific_time_reading_function.patch b/meta/recipes-kernel/lttng/lttng-ust-0.11/remove_ppc_specific_time_reading_function.patch
new file mode 100644
index 0000000..c5487fd
--- /dev/null
+++ b/meta/recipes-kernel/lttng/lttng-ust-0.11/remove_ppc_specific_time_reading_function.patch
@@ -0,0 +1,85 @@
+Dexuan Cui <dexuan.cui@intel.com>: I got the following patch from lttng dev
+mailing list:
+http://lists.casi.polymtl.ca/pipermail/ltt-dev/2011-February/003903.html
+The patch looks good and I think it would be in next release. At present,
+let's add it into SRC_URI.
+
+-----------------------------------------------------------------
+The PPC version of the trace_clock_read64 was using the TB register
+which is not constant accross implementations. The currently
+measured time base on PPC was not accurate.
+So, for now, we rely on the CLOCK_MONOTONIC.
+
+This patch remove a bunch of #ifdef for x86 and PPC, since we now rely on
+the same base clock. It also fix the build on PPC that was currently broken
+
+Signed-off-by: Yannick Brosseau <yannick.brosseau@gmail.com>
+-----------------------------------------------------------------
+
+--- a/include/ust/clock.h
++++ b/include/ust/clock.h
+@@ -39,7 +39,6 @@
+    precision and monotonicity.
+ */
+ 
+-#if __i386__ || __x86_64__
+ /* Only available for x86 arch */
+ #define CLOCK_TRACE_FREQ  14
+ #define CLOCK_TRACE  15
+@@ -47,36 +46,10 @@
+ 	struct timespec ts;
+ 	u64 lttng_ts;
+ };
+-#endif /* __i386__ || __x86_64__ */
+ 
+ extern int ust_clock_source;
+ 
+ /* Choosing correct trace clock */
+-#if __PPC__
+-static __inline__ u64 trace_clock_read64(void)
+-{
+-	unsigned long tb_l;
+-	unsigned long tb_h;
+-	unsigned long tb_h2;
+-	u64 tb;
+-
+-	__asm__ (
+-		"1:\n\t"
+-		"mftbu %[rhigh]\n\t"
+-		"mftb %[rlow]\n\t"
+-		"mftbu %[rhigh2]\n\t"
+-		"cmpw %[rhigh],%[rhigh2]\n\t"
+-		"bne 1b\n\t"
+-		: [rhigh] "=r" (tb_h), [rhigh2] "=r" (tb_h2), [rlow] "=r" (tb_l));
+-
+-	tb = tb_h;
+-	tb <<= 32;
+-	tb |= tb_l;
+-
+-	return tb;
+-}
+-
+-#else	/* !__PPC__ */
+ 
+ static __inline__ u64 trace_clock_read64(void)
+ {
+@@ -101,17 +74,17 @@
+ 	return retval;
+ }
+ 
+-#endif /* __PPC__ */
+-
+ static __inline__ u64 trace_clock_frequency(void)
+ {
+ 	struct timespec ts;
+ 	union lttng_timespec *lts = (union lttng_timespec *) &ts;
+ 
++#if __i386__ || __x86_64__
+ 	if (likely(ust_clock_source == CLOCK_TRACE)) {
+ 		clock_gettime(CLOCK_TRACE_FREQ, &ts);
+ 		return lts->lttng_ts;
+ 	}
++#endif
+ 	return 1000000000LL;
+ }
+ 
diff --git a/meta/recipes-kernel/lttng/lttng-ust_0.11.bb b/meta/recipes-kernel/lttng/lttng-ust_0.11.bb
index 575e35a..9d2063a 100644
--- a/meta/recipes-kernel/lttng/lttng-ust_0.11.bb
+++ b/meta/recipes-kernel/lttng/lttng-ust_0.11.bb
@@ -10,9 +10,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=e647752e045a8c45b6f583771bd561ef \
 
 DEPENDS = "liburcu"
 
-PR = "r0"
+PR = "r1"
 
-SRC_URI = "http://lttng.org/files/ust/releases/ust-${PV}.tar.gz"
+SRC_URI = "http://lttng.org/files/ust/releases/ust-${PV}.tar.gz \
+           file://remove_ppc_specific_time_reading_function.patch \
+           "
 
 SRC_URI[md5sum] = "0a23fa60df4da3fb5188e314001eb49c"
 SRC_URI[sha256sum] = "af8f699019ae260103bb401b6738d5e417e79732a509859b42a52e9a0f5edb35"
-- 
1.7.2


