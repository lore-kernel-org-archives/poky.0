Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BBD334C80FD4
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 00:12:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Dec 2010 22:12:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,323,1288594800"; d="scan'208";a="685756057"
Received: from unknown (HELO localhost) ([10.255.13.24])
	by orsmga001.jf.intel.com with ESMTP; 09 Dec 2010 22:12:37 -0800
Message-Id: <f1efbd9054ac220901019d42bba6c80d9f4605bf.1291961212.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1291961212.git.tom.zanussi@intel.com>
References: <cover.1291961212.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Wed, 8 Dec 2010 01:50:04 -0600
To: poky@yoctoproject.org
Subject: [PATCH 1/1] Add sysprof, a system-wide performance profiler for Linux.
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
X-List-Received-Date: Fri, 10 Dec 2010 06:12:39 -0000

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    1 +
 meta/recipes-core/tasks/task-poky-tools.bb         |    1 +
 .../sysprof/files/ppc-macro-fix.patch              |   13 +++++++++++
 meta/recipes-kernel/sysprof/files/rmb-arm.patch    |   18 ++++++++++++++++
 meta/recipes-kernel/sysprof/files/rmb-mips.patch   |   20 ++++++++++++++++++
 meta/recipes-kernel/sysprof/sysprof_git.bb         |   22 ++++++++++++++++++++
 6 files changed, 75 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/sysprof/files/ppc-macro-fix.patch
 create mode 100644 meta/recipes-kernel/sysprof/files/rmb-arm.patch
 create mode 100644 meta/recipes-kernel/sysprof/files/rmb-mips.patch
 create mode 100644 meta/recipes-kernel/sysprof/sysprof_git.bb

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 7f3468d..1c7a8de 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -179,4 +179,5 @@ SRCDATE_yaffs2-utils ??= "20071107"
 SRCREV_pn-zaurusd ??= "358"
 SRCREV_pn-zypper ??= "9eb0e248e06c8d20ad054be2439149d9ede37531"
 SRCREV_pn-blktrace ??= "1e09f6e9012826fca69fa07222b7bc53c3e629ee"
+SRCREV_pn-sysprof ??= "38a6af1f0a45e528fd2842983da71e0f23c70d6a"
 
diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
index 029790c..e507ce4 100644
--- a/meta/recipes-core/tasks/task-poky-tools.bb
+++ b/meta/recipes-core/tasks/task-poky-tools.bb
@@ -49,6 +49,7 @@ RRECOMMENDS_task-poky-tools-profile = "\
     perf \
     trace-cmd \
     kernel-module-oprofile \
+    sysprof \
     "
 
 #    exmap-console
diff --git a/meta/recipes-kernel/sysprof/files/ppc-macro-fix.patch b/meta/recipes-kernel/sysprof/files/ppc-macro-fix.patch
new file mode 100644
index 0000000..a2e015a
--- /dev/null
+++ b/meta/recipes-kernel/sysprof/files/ppc-macro-fix.patch
@@ -0,0 +1,13 @@
+Index: git/collector.c
+===================================================================
+--- git.orig/collector.c	2010-12-09 19:42:12.292040001 -0600
++++ git/collector.c	2010-12-09 19:42:23.352039997 -0600
+@@ -175,7 +175,7 @@
+ #define __NR_perf_counter_open 337
+ #elif defined(__hppa__)
+ #define __NR_perf_counter_open 318
+-#elif defined(__ppc__) || defined(__ppc64__)
++#elif defined(__powerpc__) || defined(__powerpc64__)
+ #define __NR_perf_counter_open 319
+ #elif defined(__s390__)
+ #define __NR_perf_counter_open 331
diff --git a/meta/recipes-kernel/sysprof/files/rmb-arm.patch b/meta/recipes-kernel/sysprof/files/rmb-arm.patch
new file mode 100644
index 0000000..60e7f70
--- /dev/null
+++ b/meta/recipes-kernel/sysprof/files/rmb-arm.patch
@@ -0,0 +1,18 @@
+Index: git/util.h
+===================================================================
+--- git.orig/util.h	2010-12-07 22:41:57.156243001 -0600
++++ git/util.h	2010-12-07 22:43:47.616243002 -0600
+@@ -37,4 +37,13 @@
+ #define cpu_relax()     asm volatile("" ::: "memory");
+ #endif
+ 
++#ifdef __arm__
++/*
++ * Use the __kuser_memory_barrier helper in the CPU helper page. See
++ * arch/arm/kernel/entry-armv.S in the kernel source for details.
++ */
++#define rmb()		((void(*)(void))0xffff0fa0)()
++#define cpu_relax()	asm volatile("":::"memory")
++#endif
++
+ #endif
diff --git a/meta/recipes-kernel/sysprof/files/rmb-mips.patch b/meta/recipes-kernel/sysprof/files/rmb-mips.patch
new file mode 100644
index 0000000..84f968e
--- /dev/null
+++ b/meta/recipes-kernel/sysprof/files/rmb-mips.patch
@@ -0,0 +1,20 @@
+Index: git/util.h
+===================================================================
+--- git.orig/util.h	2010-12-08 01:22:44.486243001 -0600
++++ git/util.h	2010-12-08 01:23:27.836243001 -0600
+@@ -37,4 +37,15 @@
+ #define cpu_relax()     asm volatile("" ::: "memory");
+ #endif
+ 
++#ifdef __mips__
++#define rmb()		asm volatile(					\
++				".set	mips2\n\t"			\
++				"sync\n\t"				\
++				".set	mips0"				\
++				: /* no output */			\
++				: /* no input */			\
++				: "memory")
++#define cpu_relax()	asm volatile("" ::: "memory")
++#endif
++
+ #endif
diff --git a/meta/recipes-kernel/sysprof/sysprof_git.bb b/meta/recipes-kernel/sysprof/sysprof_git.bb
new file mode 100644
index 0000000..d649c16
--- /dev/null
+++ b/meta/recipes-kernel/sysprof/sysprof_git.bb
@@ -0,0 +1,22 @@
+DESCRIPTION = "sysprof - System-wide Performance Profiler for Linux"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
+DEPENDS = "gtk+ libglade"
+
+PR = r0
+PV = "1.1.6+git${SRCPV}"
+
+SRC_URI = "git://git.gnome.org/sysprof;protocol=git \
+           "
+
+SRC_URI_append_arm  = " file://rmb-arm.patch"
+SRC_URI_append_mips = " file://rmb-mips.patch"
+SRC_URI_append_powerpc = " file://ppc-macro-fix.patch"
+
+SRC_URI[md5sum]    = "80902a7b3d6f7cb83eb6b47e87538747"
+SRC_URI[sha256sum] = "1c6403278fa4f3b37a1fb9f0784e496dce1703fe84ac03b2650bf469133a0cb3"
+
+S = "${WORKDIR}/git"
+
+inherit autotools
-- 
1.7.0.4


