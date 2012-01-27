Return-Path: <paul.gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCCACE00599
	for <poky@yoctoproject.org>; Fri, 27 Jan 2012 08:21:23 -0800 (PST)
Received: from yow-pgortmak-d2.corp.ad.wrs.com
	(yow-pgortmak-d2.ottawa.windriver.com [128.224.146.165])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0RGLLEW020184
	for <poky@yoctoproject.org>; Fri, 27 Jan 2012 08:21:23 -0800 (PST)
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 27 Jan 2012 11:21:21 -0500
Message-Id: <1327681281-11454-4-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
References: <1327681281-11454-1-git-send-email-paul.gortmaker@windriver.com>
Subject: [PATCH 3/3] u-boot: Add recipe for u-boot v2011.12
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

The v2011.12 is the latest stable release of u-boot.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 meta/recipes-bsp/u-boot/u-boot_2011.12.bb |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-bsp/u-boot/u-boot_2011.12.bb

diff --git a/meta/recipes-bsp/u-boot/u-boot_2011.12.bb b/meta/recipes-bsp/u-boot/u-boot_2011.12.bb
new file mode 100644
index 0000000..1dc0476
--- /dev/null
+++ b/meta/recipes-bsp/u-boot/u-boot_2011.12.bb
@@ -0,0 +1,20 @@
+require u-boot.inc
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
+                    file://README;beginline=1;endline=22;md5=5ba4218ac89af7846802d0348df3fb90"
+
+EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX}"
+
+# This revision corresponds to the tag "v2011.12"
+# We use the revision in order to avoid having to fetch it from the repo during parse
+SRCREV = "cba9a894fdb1cb49b60fcd1d1d6919cbd7995dd5"
+
+PV = "v2011.12+git${SRCPV}"
+PR = "r0"
+
+SRC_URI = "git://git.denx.de/u-boot.git;branch=master;protocol=git"
+
+S = "${WORKDIR}/git"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
1.7.7


