Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24B614C81068
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 08:48:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Nov 2010 06:48:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="575119264"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 18 Nov 2010 06:48:31 -0800
Message-Id: <aa05f023cac77d48e6db2745c358832ce81027b0.1290091760.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290091759.git.dongxiao.xu@intel.com>
References: <cover.1290091759.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 18 Nov 2010 13:11:57 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/7] netbase: Upgrade to version 4.43
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
X-List-Received-Date: Thu, 18 Nov 2010 14:48:32 -0000

Also fixed its metadata

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../{netbase => netbase-4.43}/colinux/interfaces   |    0
 .../{netbase => netbase-4.43}/epia/interfaces      |    0
 .../netbase/{netbase => netbase-4.43}/hosts        |    0
 .../netbase/{netbase => netbase-4.43}/init         |    0
 .../netbase/{netbase => netbase-4.43}/interfaces   |    0
 .../{netbase => netbase-4.43}/mtx-1/interfaces     |    0
 .../netbase/{netbase => netbase-4.43}/nfsroot      |    0
 .../{netbase => netbase-4.43}/nokia800/interfaces  |    0
 .../netbase/{netbase => netbase-4.43}/openmn/hosts |    0
 .../{netbase => netbase-4.43}/openmn/interfaces    |    0
 .../{netbase => netbase-4.43}/qemuarm/interfaces   |    0
 .../{netbase => netbase-4.43}/qemuarmv6/interfaces |    0
 .../{netbase => netbase-4.43}/qemuarmv7/interfaces |    0
 .../qemux86-64/interfaces                          |    0
 .../{netbase => netbase-4.43}/qemux86/interfaces   |    0
 .../{netbase => netbase-4.43}/tosa/interfaces      |    0
 .../{netbase => netbase-4.43}/wrt54/interfaces     |    0
 .../{netbase => netbase-4.43}/xxs1500/interfaces   |    0
 .../netbase/{netbase_4.41.bb => netbase_4.43.bb}   |    6 +++++-
 19 files changed, 5 insertions(+), 1 deletions(-)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/colinux/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/epia/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/hosts (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/init (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/mtx-1/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/nfsroot (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/nokia800/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/openmn/hosts (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/openmn/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemuarm/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemuarmv6/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemuarmv7/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemux86-64/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemux86/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/tosa/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/wrt54/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/xxs1500/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase_4.41.bb => netbase_4.43.bb} (90%)

diff --git a/meta/recipes-core/netbase/netbase/colinux/interfaces b/meta/recipes-core/netbase/netbase-4.43/colinux/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/colinux/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/colinux/interfaces
diff --git a/meta/recipes-core/netbase/netbase/epia/interfaces b/meta/recipes-core/netbase/netbase-4.43/epia/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/epia/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/epia/interfaces
diff --git a/meta/recipes-core/netbase/netbase/hosts b/meta/recipes-core/netbase/netbase-4.43/hosts
similarity index 100%
rename from meta/recipes-core/netbase/netbase/hosts
rename to meta/recipes-core/netbase/netbase-4.43/hosts
diff --git a/meta/recipes-core/netbase/netbase/init b/meta/recipes-core/netbase/netbase-4.43/init
similarity index 100%
rename from meta/recipes-core/netbase/netbase/init
rename to meta/recipes-core/netbase/netbase-4.43/init
diff --git a/meta/recipes-core/netbase/netbase/interfaces b/meta/recipes-core/netbase/netbase-4.43/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/interfaces
diff --git a/meta/recipes-core/netbase/netbase/mtx-1/interfaces b/meta/recipes-core/netbase/netbase-4.43/mtx-1/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/mtx-1/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/mtx-1/interfaces
diff --git a/meta/recipes-core/netbase/netbase/nfsroot b/meta/recipes-core/netbase/netbase-4.43/nfsroot
similarity index 100%
rename from meta/recipes-core/netbase/netbase/nfsroot
rename to meta/recipes-core/netbase/netbase-4.43/nfsroot
diff --git a/meta/recipes-core/netbase/netbase/nokia800/interfaces b/meta/recipes-core/netbase/netbase-4.43/nokia800/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/nokia800/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/nokia800/interfaces
diff --git a/meta/recipes-core/netbase/netbase/openmn/hosts b/meta/recipes-core/netbase/netbase-4.43/openmn/hosts
similarity index 100%
rename from meta/recipes-core/netbase/netbase/openmn/hosts
rename to meta/recipes-core/netbase/netbase-4.43/openmn/hosts
diff --git a/meta/recipes-core/netbase/netbase/openmn/interfaces b/meta/recipes-core/netbase/netbase-4.43/openmn/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/openmn/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/openmn/interfaces
diff --git a/meta/recipes-core/netbase/netbase/qemuarm/interfaces b/meta/recipes-core/netbase/netbase-4.43/qemuarm/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/qemuarm/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/qemuarm/interfaces
diff --git a/meta/recipes-core/netbase/netbase/qemuarmv6/interfaces b/meta/recipes-core/netbase/netbase-4.43/qemuarmv6/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/qemuarmv6/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/qemuarmv6/interfaces
diff --git a/meta/recipes-core/netbase/netbase/qemuarmv7/interfaces b/meta/recipes-core/netbase/netbase-4.43/qemuarmv7/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/qemuarmv7/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/qemuarmv7/interfaces
diff --git a/meta/recipes-core/netbase/netbase/qemux86-64/interfaces b/meta/recipes-core/netbase/netbase-4.43/qemux86-64/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/qemux86-64/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/qemux86-64/interfaces
diff --git a/meta/recipes-core/netbase/netbase/qemux86/interfaces b/meta/recipes-core/netbase/netbase-4.43/qemux86/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/qemux86/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/qemux86/interfaces
diff --git a/meta/recipes-core/netbase/netbase/tosa/interfaces b/meta/recipes-core/netbase/netbase-4.43/tosa/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/tosa/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/tosa/interfaces
diff --git a/meta/recipes-core/netbase/netbase/wrt54/interfaces b/meta/recipes-core/netbase/netbase-4.43/wrt54/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/wrt54/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/wrt54/interfaces
diff --git a/meta/recipes-core/netbase/netbase/xxs1500/interfaces b/meta/recipes-core/netbase/netbase-4.43/xxs1500/interfaces
similarity index 100%
rename from meta/recipes-core/netbase/netbase/xxs1500/interfaces
rename to meta/recipes-core/netbase/netbase-4.43/xxs1500/interfaces
diff --git a/meta/recipes-core/netbase/netbase_4.41.bb b/meta/recipes-core/netbase/netbase_4.43.bb
similarity index 90%
rename from meta/recipes-core/netbase/netbase_4.41.bb
rename to meta/recipes-core/netbase/netbase_4.43.bb
index 585313b..198a8d7 100644
--- a/meta/recipes-core/netbase/netbase_4.41.bb
+++ b/meta/recipes-core/netbase/netbase_4.43.bb
@@ -3,7 +3,8 @@ DESCRIPTION = "This package provides the necessary infrastructure for basic TCP/
 HOMEPAGE = "http://packages.debian.org/netbase"
 SECTION = "base"
 LICENSE = "GPLv2"
-PR = "r1"
+LIC_FILES_CHKSUM = "file://debian/copyright;md5=3dd6192d306f582dee7687da3d8748ab"
+PR = "r0"
 
 inherit update-rc.d
 
@@ -55,3 +56,6 @@ PACKAGE_ARCH_omap-2430sdp = "${MACHINE_ARCH}"
 PACKAGE_ARCH_qemuarm = "${MACHINE_ARCH}"
 PACKAGE_ARCH_qemux86 = "${MACHINE_ARCH}"
 PACKAGE_ARCH_qemux86-64 = "${MACHINE_ARCH}"
+
+SRC_URI[md5sum] = "875d6db52cc8cef565a77ef898ed47cf"
+SRC_URI[sha256sum] = "5a6da788356776330b77eda97157285e1c426c2d3bd9136407373965365e9dbf"
-- 
1.7.0.4


