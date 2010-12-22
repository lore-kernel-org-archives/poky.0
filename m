Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BCACD4C810CE;
	Wed, 22 Dec 2010 00:25:15 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBM6OALQ016700;
	Tue, 21 Dec 2010 22:24:12 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 22 Dec 2010 01:25:48 -0500
Message-Id: <45bf86a4bfbc23b6971839dcaf1697274a872905.1292998230.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292998230.git.bruce.ashfield@windriver.com>
References: <cover.1292998230.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1292998230.git.bruce.ashfield@windriver.com>
References: <cover.1292998230.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/3] qemu: match kernel headers to preferred kernel
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
X-List-Received-Date: Wed, 22 Dec 2010 06:25:15 -0000

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
1.7.0.4


