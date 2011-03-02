Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1EBF54C80AAE
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:20 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2011 10:00:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="608305344"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2011 10:00:18 -0800
Message-Id: <c34ac5c7536806a0d4f3c4af17f78ab711a8b408.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Tue, 1 Mar 2011 12:32:55 -0500
Date: Wed, 02 Mar 2011 10:00:18 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 05/26] u-boot: remove do_install from u-boot.inc
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:20 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

Fixes [BUGID #777]

The do_install rule in u-boot.inc was installing a host
tool into the target ${bindir}, which is subsequently
stripped with target strip during packaging, and the
obvious error ensues.

The native u-boot recipe has its own install rule, and
the machine specific u-boot doesn't require mkimage or
anything else in the do_install function. So we remove
it completely until it is needed again.

[sgw: PR bump]
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-bsp/uboot/u-boot.inc    |    5 -----
 meta/recipes-bsp/uboot/u-boot_git.bb |    2 +-
 2 files changed, 1 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-bsp/uboot/u-boot.inc b/meta/recipes-bsp/uboot/u-boot.inc
index 1457c04..d1cebee 100644
--- a/meta/recipes-bsp/uboot/u-boot.inc
+++ b/meta/recipes-bsp/uboot/u-boot.inc
@@ -31,8 +31,3 @@ do_deploy () {
 	ln -sf ${UBOOT_IMAGE} ${UBOOT_SYMLINK}
 }
 addtask deploy before do_build after do_compile
-
-do_install() {
-	install -d ${D}${bindir}
-	install -m 755 tools/mkimage ${D}${bindir}/
-}
diff --git a/meta/recipes-bsp/uboot/u-boot_git.bb b/meta/recipes-bsp/uboot/u-boot_git.bb
index b3207c6..4686a58 100644
--- a/meta/recipes-bsp/uboot/u-boot_git.bb
+++ b/meta/recipes-bsp/uboot/u-boot_git.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/u-boot-git/${MACHINE}"
 
 PV = "v2010.12+${PR}+git${SRCPV}"
-PR="r0"
+PR="r1"
 
 SRC_URI = "git://git.denx.de/u-boot.git;branch=master;protocol=git"
 
-- 
1.7.1


