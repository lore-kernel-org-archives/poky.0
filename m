Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DE694C800A4;
	Tue,  1 Mar 2011 11:48:11 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p21Hm7Sn003330;
	Tue, 1 Mar 2011 09:48:09 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue,  1 Mar 2011 12:49:38 -0500
Message-Id: <fe5cb491f63d0534023346c1d2e0419b4aa641d4.1299001559.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1299001559.git.bruce.ashfield@windriver.com>
References: <cover.1299001559.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1299001559.git.bruce.ashfield@windriver.com>
References: <cover.1299001559.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] u-boot: remove do_install from u-boot.inc
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
X-List-Received-Date: Tue, 01 Mar 2011 17:48:11 -0000

Fixes [BUGID #777]

The do_install rule in u-boot.inc was installing a host
tool into the target ${bindir}, which is subsequently
stripped with target strip during packaging, and the
obvious error ensues.

The native u-boot recipe has its own install rule, and
the machine specific u-boot doesn't require mkimage or
anything else in the do_install function. So we remove
it completely until it is needed again.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/recipes-bsp/uboot/u-boot.inc |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)

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
-- 
1.7.0.4


