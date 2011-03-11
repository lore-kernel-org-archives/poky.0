Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 44E074C804B8
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:41:34 -0600 (CST)
Received: from localhost (unknown [209.216.169.162])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 51EAF308C3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:41:20 -0500 (EST)
Message-Id: <f3a556bc22d8ed0e85987aad309c2d29f47c2c8b.1299807513.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1299807513.git.scott.a.garman@intel.com>
References: <cover.1299807513.git.scott.a.garman@intel.com>
Old-Date: Sat, 5 Mar 2011 19:30:53 -0800
Date: Thu, 10 Mar 2011 17:41:17 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 51EAF308C3.19DBE
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/7] poky-image.bbclass: add ssh-server as an IMAGE_FEATURES option
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
X-List-Received-Date: Fri, 11 Mar 2011 01:41:34 -0000

From: Scott Garman <scott.a.garman@intel.com>

Images which want to include an ssh server can then add
ssh-server to their IMAGE_FEATURES.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/poky-image.bbclass |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/classes/poky-image.bbclass b/meta/classes/poky-image.bbclass
index 225584b..896ef94 100644
--- a/meta/classes/poky-image.bbclass
+++ b/meta/classes/poky-image.bbclass
@@ -24,6 +24,7 @@ LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3
 # - tools-profile       - profiling tools
 # - tools-testapps      - tools usable to make some device tests
 # - nfs-server          - NFS server (exports / over NFS to everybody)
+# - ssh-server          - SSH server (dropbear vs. openssh)
 # - dev-pkgs            - development packages
 # - dbg-pkgs            - debug packages
 #
@@ -79,9 +80,12 @@ POKY_BASE_INSTALL = '\
     \
     ${@base_contains("IMAGE_FEATURES", "nfs-server", "task-poky-nfs-server", "",d)} \
     ${@base_contains("IMAGE_FEATURES", ["nfs-server", "dbg-pkgs"], "task-poky-nfs-server-dbg", "",d)} \
-    \
     ${@base_contains("IMAGE_FEATURES", ["nfs-server", "dev-pkgs"], "task-poky-nfs-server-dev", "",d)} \
     \
+    ${@base_contains("IMAGE_FEATURES", "ssh-server", "task-poky-ssh-server", "",d)} \
+    ${@base_contains("IMAGE_FEATURES", ["ssh-server", "dbg-pkgs"], "task-poky-ssh-server-dbg", "",d)} \
+    ${@base_contains("IMAGE_FEATURES", ["ssh-server", "dev-pkgs"], "task-poky-ssh-server-dev", "",d)} \
+    \
     ${@base_contains("IMAGE_FEATURES", "package-management", "${ROOTFS_PKGMANAGE}", "${ROOTFS_PKGMANAGE_BOOTSTRAP}",d)} \
     ${@base_contains("IMAGE_FEATURES", "qt4-pkgs", "task-poky-qt-demos", "",d)} \
     ${POKY_EXTRA_INSTALL} \
-- 
1.7.1


