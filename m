Return-Path: <paul.gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F168E006B0
	for <poky@yoctoproject.org>; Fri, 27 Jan 2012 08:21:23 -0800 (PST)
Received: from yow-pgortmak-d2.corp.ad.wrs.com
	(yow-pgortmak-d2.ottawa.windriver.com [128.224.146.165])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0RGLLEU020184
	for <poky@yoctoproject.org>; Fri, 27 Jan 2012 08:21:22 -0800 (PST)
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 27 Jan 2012 11:21:19 -0500
Message-Id: <1327681281-11454-2-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
Subject: [PATCH 1/3] u-boot: Don't make the -Os removal part of global settings.
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

We don't want to force everyone to be stripping the -Os
flags from their u-boot builds.  Move it to the existing
recipes so that current behaviour is maintained, while
opening up the possibility for new recipes to avoid it.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 meta/recipes-bsp/u-boot/u-boot.inc        |    3 ---
 meta/recipes-bsp/u-boot/u-boot_2011.03.bb |    3 +++
 meta/recipes-bsp/u-boot/u-boot_2011.06.bb |    3 +++
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-bsp/u-boot/u-boot.inc b/meta/recipes-bsp/u-boot/u-boot.inc
index 4180345..c19eb48 100644
--- a/meta/recipes-bsp/u-boot/u-boot.inc
+++ b/meta/recipes-bsp/u-boot/u-boot.inc
@@ -7,9 +7,6 @@ inherit deploy
 
 PARALLEL_MAKE=""
 
-# GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS
-EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
-
 python () {
 	if not d.getVar("UBOOT_MACHINE", True):
 		PN = d.getVar("PN", True)
diff --git a/meta/recipes-bsp/u-boot/u-boot_2011.03.bb b/meta/recipes-bsp/u-boot/u-boot_2011.03.bb
index 1ebdbea..fea1c74 100644
--- a/meta/recipes-bsp/u-boot/u-boot_2011.03.bb
+++ b/meta/recipes-bsp/u-boot/u-boot_2011.03.bb
@@ -10,6 +10,9 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
                     file://README;beginline=1;endline=22;md5=3a00ef51d3fc96e9d6c1bc4708ccd3b5"
 
+# GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS
+EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
+
 FILESDIR = "${@os.path.dirname(d.getVar('FILE',1))}/u-boot-git/${MACHINE}"
 
 # This revision corresponds to the tag "v2011.03"
diff --git a/meta/recipes-bsp/u-boot/u-boot_2011.06.bb b/meta/recipes-bsp/u-boot/u-boot_2011.06.bb
index 8ebdbff..1bb6c48 100644
--- a/meta/recipes-bsp/u-boot/u-boot_2011.06.bb
+++ b/meta/recipes-bsp/u-boot/u-boot_2011.06.bb
@@ -12,6 +12,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
 
 FILESDIR = "${@os.path.dirname(d.getVar('FILE',1))}/u-boot-git/${MACHINE}"
 
+# GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS
+EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
+
 # This revision corresponds to the tag "v2011.06"
 # We use the revision in order to avoid having to fetch it from the repo during parse
 SRCREV = "b1af6f532e0d348b153d5c148369229d24af361a"
-- 
1.7.7


