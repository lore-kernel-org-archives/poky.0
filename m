Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73BB14C80104
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 21:47:53 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p143lqLk024672
	for <poky@yoctoproject.org>; Thu, 3 Feb 2011 19:47:53 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 19:47:52 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 19:47:52 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 21:44:30 -0600
Message-Id: <0abcd67d79e31550a09365d7aec3597d7d5126a1.1296790992.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296790992.git.mark.hatle@windriver.com>
References: <cover.1296790992.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296790992.git.mark.hatle@windriver.com>
References: <cover.1296790992.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 04 Feb 2011 03:47:52.0504 (UTC)
	FILETIME=[4CB2CB80:01CBC41E]
Subject: [PATCH 4/4] util-linux: Add mount lock patch
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
X-List-Received-Date: Fri, 04 Feb 2011 03:47:53 -0000

Add the mount lock patch that moves the lock file from the potentially R/O
/etc, to the R/W /var/lock directory.

This resolves a problem when mounting when / (and /etc) is mounted R/O.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 .../util-linux-ng-2.16-mount_lock_path.patch       |   25 ++++++++++++++++++++
 meta/recipes-core/util-linux/util-linux_2.17.2.bb  |    5 ++-
 2 files changed, 28 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/util-linux/util-linux-2.17.2/util-linux-ng-2.16-mount_lock_path.patch

diff --git a/meta/recipes-core/util-linux/util-linux-2.17.2/util-linux-ng-2.16-mount_lock_path.patch b/meta/recipes-core/util-linux/util-linux-2.17.2/util-linux-ng-2.16-mount_lock_path.patch
new file mode 100644
index 0000000..8e79d8b
--- /dev/null
+++ b/meta/recipes-core/util-linux/util-linux-2.17.2/util-linux-ng-2.16-mount_lock_path.patch
@@ -0,0 +1,25 @@
+The FHS indicates that /etc must be capable of being mounted R/O.
+
+The FHS also indicates that lock files belong in /var/lock, and /var must
+be R/W as soon as possible during boot.
+
+This patch moves the mtab lock file from the potentially R/O /etc, to the
+R/W /var/lock area.  This lock file is used when mounting disks and making
+other mount adjustments.  The _PATH_MOUNTED_TMP is not adjusted, as failing
+to write to this file does not cause any functional limitations.
+
+(Note, if /etc is R/O, then /etc/mtab should be a symlink to /proc/mounts)
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+--- util-linux-ng-2.16/include/pathnames.h.orig
++++ util-linux-ng-2.16/include/pathnames.h
+@@ -90,7 +90,7 @@
+ # endif
+ #endif
+ 
+-#define _PATH_MOUNTED_LOCK	_PATH_MOUNTED "~"
++#define _PATH_MOUNTED_LOCK	"/var/lock/mtab~"
+ #define _PATH_MOUNTED_TMP	_PATH_MOUNTED ".tmp"
+ 
+ #ifndef _PATH_DEV
diff --git a/meta/recipes-core/util-linux/util-linux_2.17.2.bb b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
index 082b3f0..e0904db 100644
--- a/meta/recipes-core/util-linux/util-linux_2.17.2.bb
+++ b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
@@ -1,9 +1,10 @@
 MAJOR_VERSION = "2.17"
 require util-linux.inc
-PR = "r4"
+PR = "r5"
 
 SRC_URI += "file://uclibc-compile.patch \
-	          file://util-linux-ng-replace-siginterrupt.patch"
+	          file://util-linux-ng-replace-siginterrupt.patch \
+                  file://util-linux-ng-2.16-mount_lock_path.patch"
 
 SRC_URI[md5sum] = "4635725a3eef1c57090bac8ea5e082e6"
 SRC_URI[sha256sum] = "c9ae801b6a5ab20b7749a278a8bf6830ef53adc5e8b7eb0ac1a9f410c774118f"
-- 
1.7.3.4


