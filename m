Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF2624C80AB3
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:30 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 01:56:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231602"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:56:30 -0700
Message-Id: <959cf84f696d2e75ad9049c45732eb868d58ad65.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 16:43:09 +0800
Date: Tue, 10 May 2011 17:01:58 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 28/39] pulseaudio: add upstream status for pulseaudio patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:31 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../pulseaudio/pulseaudio-0.9.22/armv4+v5asm.patch |    2 ++
 .../pulseaudio-0.9.22/autoconf_version.patch       |    2 ++
 .../pulseaudio/pulseaudio-0.9.22/buildfix.patch    |    2 ++
 .../pulseaudio-0.9.22/configure_silent_rules.patch |    2 ++
 .../pulseaudio-0.9.22/gcc4-compile-fix.patch       |    2 ++
 .../pulseaudio/pulseaudio-0.9.22/tls_m4.patch      |    2 ++
 6 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/armv4+v5asm.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/armv4+v5asm.patch
index f07ee67..4ce5a48 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/armv4+v5asm.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/armv4+v5asm.patch
@@ -1,5 +1,7 @@
 Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [embedded specific]
+
 Index: pulseaudio-0.9.21/src/pulsecore/svolume_arm.c
 ===================================================================
 --- pulseaudio-0.9.21.orig/src/pulsecore/svolume_arm.c
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/autoconf_version.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/autoconf_version.patch
index 80d0003..86e3972 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/autoconf_version.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/autoconf_version.patch
@@ -1,5 +1,7 @@
 Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 Index: pulseaudio-0.9.15/configure.ac
 ===================================================================
 --- pulseaudio-0.9.15.orig/configure.ac	2009-04-14 00:09:53.000000000 +0100
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/buildfix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/buildfix.patch
index ea8d769..99ceff8 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/buildfix.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/buildfix.patch
@@ -1,5 +1,7 @@
 Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Pending
+
 Index: pulseaudio-0.9.11/src/pulsecore/atomic.h
 ===================================================================
 --- pulseaudio-0.9.11.orig/src/pulsecore/atomic.h
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/configure_silent_rules.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/configure_silent_rules.patch
index fd5abd5..d4a247a 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/configure_silent_rules.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/configure_silent_rules.patch
@@ -1,5 +1,7 @@
 Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 Index: pulseaudio-0.9.19/configure.ac
 ===================================================================
 --- pulseaudio-0.9.19.orig/configure.ac	2009-10-31 11:40:00.000000000 +0000
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/gcc4-compile-fix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/gcc4-compile-fix.patch
index 2969cba..f8b07ea 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/gcc4-compile-fix.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/gcc4-compile-fix.patch
@@ -5,6 +5,8 @@
 |
 Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Pending
+
 Index: pulseaudio-0.9.6/src/pulsecore/core-util.c
 ===================================================================
 --- pulseaudio-0.9.6.orig/src/pulsecore/core-util.c
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/tls_m4.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/tls_m4.patch
index a8292b2..bae0a25 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/tls_m4.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.22/tls_m4.patch
@@ -1,5 +1,7 @@
 Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 Index: pulseaudio-0.9.15/m4/tls.m4
 ===================================================================
 --- pulseaudio-0.9.15.orig/m4/tls.m4	2008-08-19 23:25:02.000000000 +0200
-- 
1.7.1


