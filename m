Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CFA304C8123F
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 23:56:12 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0S5uCOe021003
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 21:56:12 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:56:12 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:56:12 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu, 27 Jan 2011 23:52:09 -0600
Message-Id: <b0f9aa1d8ef4c94aca24a2e03446a36e14f8e09b.1296193803.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296193803.git.mark.hatle@windriver.com>
References: <cover.1296193803.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296193803.git.mark.hatle@windriver.com>
References: <cover.1296193803.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 28 Jan 2011 05:56:12.0172 (UTC)
	FILETIME=[112AA4C0:01CBBEB0]
Subject: [PATCH 1/1] poky-image-minimal*: Disable packaging tool by default
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
X-List-Received-Date: Fri, 28 Jan 2011 05:56:13 -0000

If the packaging database is removed by default, then there is no reason to
install the packaging tool, it just wastes space.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-core/images/poky-image-minimal-dev.bb |    7 ++++++-
 meta/recipes-core/images/poky-image-minimal.bb     |    6 +++++-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/images/poky-image-minimal-dev.bb b/meta/recipes-core/images/poky-image-minimal-dev.bb
index c64b657..1aa4874 100644
--- a/meta/recipes-core/images/poky-image-minimal-dev.bb
+++ b/meta/recipes-core/images/poky-image-minimal-dev.bb
@@ -1,7 +1,7 @@
 #
 # Copyright (C) 2007 OpenedHand Ltd.
 #
-IMAGE_INSTALL = "task-poky-boot ${ROOTFS_PKGMANAGE}"
+IMAGE_INSTALL = "task-poky-boot"
 
 IMAGE_FEATURES += "dev-pkgs"
 
@@ -13,3 +13,8 @@ inherit poky-image
 
 # remove not needed ipkg informations
 ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
+
+# If we've removed the packaging data files, it doesn't make sense to install
+# the packaging tools, since they won't work anyway...
+#IMAGE_INSTALL += "${ROOTFS_PKGMANAGE}"
+
diff --git a/meta/recipes-core/images/poky-image-minimal.bb b/meta/recipes-core/images/poky-image-minimal.bb
index 48136ed..93e0055 100644
--- a/meta/recipes-core/images/poky-image-minimal.bb
+++ b/meta/recipes-core/images/poky-image-minimal.bb
@@ -1,7 +1,7 @@
 #
 # Copyright (C) 2007 OpenedHand Ltd.
 #
-IMAGE_INSTALL = "task-poky-boot ${ROOTFS_PKGMANAGE}"
+IMAGE_INSTALL = "task-poky-boot"
 
 IMAGE_LINGUAS = " "
 
@@ -11,3 +11,7 @@ inherit poky-image
 
 # remove not needed ipkg informations
 ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
+
+# If we've removed the packaging data files, it doesn't make sense to install
+# the packaging tools, since they won't work anyway...
+#IMAGE_INSTALL += "${ROOTFS_PKGMANAGE}"
-- 
1.7.3.4


