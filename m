Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 272954C811EA
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:04 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 06:27:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="586663140"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 06:27:02 -0800
Message-Id: <0d7c1f1fb4f36c2ee643d25ee04f20a4644ccb2b.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Old-Date: Mon, 20 Dec 2010 14:52:56 -0500
Date: Thu, 23 Dec 2010  6:27:02 -0800
To: poky@yoctoproject.org
Subject: [PATCH 04/28] qemu: match kernel headers to preferred kernel
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:04 -0000

As the yocto-kernel advances, the libc headers must also
advance. This commit fixes the SRC_URI and SRCPV to work
properly with the latest linux-yocto kernel. It also switches
the qemu* targets to prefer this libc recipe.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/conf/machine/include/qemu.inc                 |    2 +-
 .../linux-libc-headers-yocto_git.bb                |   10 ++++------
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/meta/conf/machine/include/qemu.inc b/meta/conf/machine/include/qemu.inc
index 502e24f..d762d01 100644
--- a/meta/conf/machine/include/qemu.inc
+++ b/meta/conf/machine/include/qemu.inc
@@ -16,6 +16,6 @@ RDEPENDS_kernel-base = ""
 
 # Use a common kernel recipe for all QEMU machines
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
-#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
index 0515233..762b6a8 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
@@ -6,14 +6,12 @@ B = "${S}"
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS += "unifdef-native"
 PROVIDES = "linux-libc-headers"
-PV = "2.6.34+git-${SRCPV}"
-PR = "r1"
-
-SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;fullclone=1"
+PV = "2.6.37+git-${SRCPV}"
+PR = "r2"
 
 SRCREV_FORMAT = "meta_machine"
-SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
-           git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
+SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
+           git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;noclone=1;branch=meta;name=meta"
 
 set_arch() {
 	case ${TARGET_ARCH} in
-- 
1.7.2.3


