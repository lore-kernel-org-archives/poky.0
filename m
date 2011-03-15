Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C0D54C80AAE
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:12:17 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 1DCDC304F1
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:12:12 -0400 (EDT)
Message-Id: <30a8a7e4fed3ee30f6f4b8f24e88c59b83a82525.1300230459.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1300230459.git.scott.a.garman@intel.com>
References: <cover.1300230459.git.scott.a.garman@intel.com>
Old-Date: Sat, 12 Mar 2011 22:55:14 -0800
Date: Tue, 15 Mar 2011 16:12:10 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 1DCDC304F1.0F739
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/7] poky-image.bbclass: add new IMAGE_FEATURES for ssh servers
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
X-List-Received-Date: Tue, 15 Mar 2011 23:12:17 -0000

From: Scott Garman <scott.a.garman@intel.com>

Image recipes can now add their ssh server of choice by adding
ssh-server-dropbear or ssh-server-openssh to IMAGE_FEATURES.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/poky-image.bbclass |   11 ++++++++++-
 1 files changed, 10 insertions(+), 1 deletions(-)

diff --git a/meta/classes/poky-image.bbclass b/meta/classes/poky-image.bbclass
index 225584b..3feeac6 100644
--- a/meta/classes/poky-image.bbclass
+++ b/meta/classes/poky-image.bbclass
@@ -24,6 +24,8 @@ LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3
 # - tools-profile       - profiling tools
 # - tools-testapps      - tools usable to make some device tests
 # - nfs-server          - NFS server (exports / over NFS to everybody)
+# - ssh-server-dropbear - SSH server (dropbear)
+# - ssh-server-openssh  - SSH server (openssh)
 # - dev-pkgs            - development packages
 # - dbg-pkgs            - debug packages
 #
@@ -79,9 +81,16 @@ POKY_BASE_INSTALL = '\
     \
     ${@base_contains("IMAGE_FEATURES", "nfs-server", "task-poky-nfs-server", "",d)} \
     ${@base_contains("IMAGE_FEATURES", ["nfs-server", "dbg-pkgs"], "task-poky-nfs-server-dbg", "",d)} \
-    \
     ${@base_contains("IMAGE_FEATURES", ["nfs-server", "dev-pkgs"], "task-poky-nfs-server-dev", "",d)} \
     \
+    ${@base_contains("IMAGE_FEATURES", "ssh-server-dropbear", "task-poky-ssh-dropbear", "",d)} \
+    ${@base_contains("IMAGE_FEATURES", ["ssh-server-dropbear", "dbg-pkgs"], "task-poky-ssh-dropbear-dbg", "",d)} \
+    ${@base_contains("IMAGE_FEATURES", ["ssh-server-dropbear", "dev-pkgs"], "task-poky-ssh-dropbear-dev", "",d)} \
+    \
+    ${@base_contains("IMAGE_FEATURES", "ssh-server-openssh", "task-poky-ssh-openssh", "",d)} \
+    ${@base_contains("IMAGE_FEATURES", ["ssh-server-openssh", "dbg-pkgs"], "task-poky-ssh-openssh-dbg", "",d)} \
+    ${@base_contains("IMAGE_FEATURES", ["ssh-server-openssh", "dev-pkgs"], "task-poky-ssh-openssh-dev", "",d)} \
+    \
     ${@base_contains("IMAGE_FEATURES", "package-management", "${ROOTFS_PKGMANAGE}", "${ROOTFS_PKGMANAGE_BOOTSTRAP}",d)} \
     ${@base_contains("IMAGE_FEATURES", "qt4-pkgs", "task-poky-qt-demos", "",d)} \
     ${POKY_EXTRA_INSTALL} \
-- 
1.7.1


