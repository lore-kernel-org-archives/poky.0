Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AE0EC4C8112F
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 22:04:07 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 20:04:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,264,1288594800"; d="scan'208";a="578013913"
Received: from unknown (HELO localhost) ([10.255.13.200])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2010 20:04:06 -0800
Message-Id: <910315642f086925fe4861b7374400255728cd2b.1290830448.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1290830448.git.tom.zanussi@intel.com>
References: <cover.1290830448.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@linux.intel.com>
Date: Fri, 26 Nov 2010 11:57:22 -0600
To: poky@yoctoproject.org
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] sysprof: new package
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
X-List-Received-Date: Sat, 27 Nov 2010 04:04:08 -0000

Add sysprof, a system-wide performance profiler for Linux.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    1 +
 meta/recipes-core/tasks/task-poky-tools.bb         |    1 +
 meta/recipes-kernel/sysprof/sysprof_git.bb         |   18 ++++++++++++++++++
 3 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/sysprof/sysprof_git.bb

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index f55ece2..1c2d01a 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -178,4 +178,5 @@ SRCDATE_yaffs2-utils ??= "20071107"
 SRCREV_pn-zaurusd ??= "358"
 SRCREV_pn-zypper ??= "9eb0e248e06c8d20ad054be2439149d9ede37531"
 SRCREV_pn-blktrace ??= "1e09f6e9012826fca69fa07222b7bc53c3e629ee"
+SRCREV_pn-sysprof ??= "38a6af1f0a45e528fd2842983da71e0f23c70d6a"
 
diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
index dddef02..918d0a1 100644
--- a/meta/recipes-core/tasks/task-poky-tools.bb
+++ b/meta/recipes-core/tasks/task-poky-tools.bb
@@ -48,6 +48,7 @@ RRECOMMENDS_task-poky-tools-profile = "\
     trace-cmd \
     kernel-module-oprofile \
     blktrace \
+    sysprof \
     "
 
 #    exmap-console
diff --git a/meta/recipes-kernel/sysprof/sysprof_git.bb b/meta/recipes-kernel/sysprof/sysprof_git.bb
new file mode 100644
index 0000000..cc2616e
--- /dev/null
+++ b/meta/recipes-kernel/sysprof/sysprof_git.bb
@@ -0,0 +1,18 @@
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
+SRC_URI[md5sum] = "80902a7b3d6f7cb83eb6b47e87538747"
+SRC_URI[sha256sum] = "1c6403278fa4f3b37a1fb9f0784e496dce1703fe84ac03b2650bf469133a0cb3"
+
+S = "${WORKDIR}/git"
+
+inherit autotools
-- 
1.7.0.4


