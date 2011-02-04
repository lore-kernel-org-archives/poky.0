Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95DD34C800E0
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 21:47:52 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p143lq1M024669
	for <poky@yoctoproject.org>; Thu, 3 Feb 2011 19:47:52 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 19:47:52 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 19:47:51 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 21:44:29 -0600
Message-Id: <bd04aa5aed25e8fadb9312fae32730f62e151b0a.1296790992.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296790992.git.mark.hatle@windriver.com>
References: <cover.1296790992.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296790992.git.mark.hatle@windriver.com>
References: <cover.1296790992.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 04 Feb 2011 03:47:51.0770 (UTC)
	FILETIME=[4C42CBA0:01CBC41E]
Subject: [PATCH 3/4] sysfsutils: Merge bug fix
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
X-List-Received-Date: Fri, 04 Feb 2011 03:47:52 -0000

Merge a small bug fix located in the Fedora Core 9 version of this
package.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 .../sysfsutils-2.0.0-class-dup.patch               |   21 ++++++++++++++++++++
 meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb   |    6 +++-
 2 files changed, 25 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/sysfsutils/sysfsutils-2.1.0/sysfsutils-2.0.0-class-dup.patch

diff --git a/meta/recipes-core/sysfsutils/sysfsutils-2.1.0/sysfsutils-2.0.0-class-dup.patch b/meta/recipes-core/sysfsutils/sysfsutils-2.1.0/sysfsutils-2.0.0-class-dup.patch
new file mode 100644
index 0000000..76597fb
--- /dev/null
+++ b/meta/recipes-core/sysfsutils/sysfsutils-2.1.0/sysfsutils-2.0.0-class-dup.patch
@@ -0,0 +1,21 @@
+This patch is from the Fedora Core 9 sysfsutils-2.1.0-3.fc9 package.
+
+It fixes a problem in the upstream package where not all devices 
+will be returned by the function.
+
+The package License indicates this is GPLv2 licensed.
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+diff -puN lib/sysfs_class.c~sysfsutils_class_dup lib/sysfs_class.c
+--- sysfsutils-2.1.0/lib/sysfs_class.c~sysfsutils_class_dup	2006-09-07 17:01:26.000000000 -0500
++++ sysfsutils-2.1.0-bjking1/lib/sysfs_class.c	2006-09-07 17:01:26.000000000 -0500
+@@ -66,7 +66,7 @@ static int cdev_name_equal(void *a, void
+ 		return 0;
+ 
+ 	if (strncmp((char *)a, ((struct sysfs_class_device *)b)->name,
+-				strlen((char *)a)) == 0)
++				SYSFS_NAME_LEN) == 0)
+ 		return 1;
+ 
+ 	return 0;
diff --git a/meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb b/meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb
index 26577f2..5343f64 100644
--- a/meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb
+++ b/meta/recipes-core/sysfsutils/sysfsutils_2.1.0.bb
@@ -8,9 +8,11 @@ LICENSE_libsysfs = "LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3d06403ea54c7574a9e581c6478cc393 \
                     file://cmd/GPL;md5=d41d4e2e1e108554e0388ea4aecd8d27 \
                     file://lib/LGPL;md5=b75d069791103ffe1c0d6435deeff72e"
-PR = "r0"
+PR = "r1"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/linux-diag/sysfsutils-${PV}.tar.gz"
+SRC_URI = "${SOURCEFORGE_MIRROR}/linux-diag/sysfsutils-${PV}.tar.gz \
+	  file://sysfsutils-2.0.0-class-dup.patch \
+	  "
 
 SRC_URI[md5sum] = "14e7dcd0436d2f49aa403f67e1ef7ddc"
 SRC_URI[sha256sum] = "e865de2c1f559fff0d3fc936e660c0efaf7afe662064f2fb97ccad1ec28d208a"
-- 
1.7.3.4


