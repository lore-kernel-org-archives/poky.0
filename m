Return-Path: <paul.gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55909E00599
	for <poky@yoctoproject.org>; Fri, 27 Jan 2012 08:21:23 -0800 (PST)
Received: from yow-pgortmak-d2.corp.ad.wrs.com
	(yow-pgortmak-d2.ottawa.windriver.com [128.224.146.165])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0RGLLEV020184
	for <poky@yoctoproject.org>; Fri, 27 Jan 2012 08:21:22 -0800 (PST)
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 27 Jan 2012 11:21:20 -0500
Message-Id: <1327681281-11454-3-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
Subject: [PATCH 2/3] u-boot: make FILESDIR a shared setting.
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
X-List-Received-Date: Fri, 27 Jan 2012 16:21:23 -0000

The setting is the same in both recipes, so move it to
the shared settings in u-boot.inc

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 meta/recipes-bsp/u-boot/u-boot.inc        |    1 +
 meta/recipes-bsp/u-boot/u-boot_2011.03.bb |    2 --
 meta/recipes-bsp/u-boot/u-boot_2011.06.bb |    2 --
 3 files changed, 1 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-bsp/u-boot/u-boot.inc b/meta/recipes-bsp/u-boot/u-boot.inc
index c19eb48..1979a56 100644
--- a/meta/recipes-bsp/u-boot/u-boot.inc
+++ b/meta/recipes-bsp/u-boot/u-boot.inc
@@ -36,6 +36,7 @@ do_install () {
 }
 
 FILES_${PN} = "/boot"
+FILESDIR = "${@os.path.dirname(d.getVar('FILE',1))}/u-boot-git/${MACHINE}"
 
 do_deploy () {
 	install ${S}/u-boot.bin ${DEPLOYDIR}/${UBOOT_IMAGE}
diff --git a/meta/recipes-bsp/u-boot/u-boot_2011.03.bb b/meta/recipes-bsp/u-boot/u-boot_2011.03.bb
index fea1c74..aa2e03a 100644
--- a/meta/recipes-bsp/u-boot/u-boot_2011.03.bb
+++ b/meta/recipes-bsp/u-boot/u-boot_2011.03.bb
@@ -13,8 +13,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
 # GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS
 EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
 
-FILESDIR = "${@os.path.dirname(d.getVar('FILE',1))}/u-boot-git/${MACHINE}"
-
 # This revision corresponds to the tag "v2011.03"
 # We use the revision in order to avoid having to fetch it from the repo during parse
 SRCREV = "19b54a701811220221fc4d5089a2bb18892018ca"
diff --git a/meta/recipes-bsp/u-boot/u-boot_2011.06.bb b/meta/recipes-bsp/u-boot/u-boot_2011.06.bb
index 1bb6c48..295af1a 100644
--- a/meta/recipes-bsp/u-boot/u-boot_2011.06.bb
+++ b/meta/recipes-bsp/u-boot/u-boot_2011.06.bb
@@ -10,8 +10,6 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
                     file://README;beginline=1;endline=22;md5=5ba4218ac89af7846802d0348df3fb90"
 
-FILESDIR = "${@os.path.dirname(d.getVar('FILE',1))}/u-boot-git/${MACHINE}"
-
 # GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS
 EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
 
-- 
1.7.7


