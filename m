Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 685324C80AAA
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:20:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Mar 2011 18:20:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,300,1297065600"; d="scan'208";a="400968885"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by azsmga001.ch.intel.com with ESMTP; 10 Mar 2011 18:20:49 -0800
Message-Id: <3c8efb9d7578ecb9292376dcd510fd3e3ce34b15.1299809859.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299809859.git.sgw@linux.intel.com>
References: <cover.1299809859.git.sgw@linux.intel.com>
Old-Date: Sat, 5 Mar 2011 19:30:53 -0800
Date: Thu, 10 Mar 2011 18:20:47 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 09/12] poky-image.bbclass: add ssh-server as an IMAGE_FEATURES option
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
X-List-Received-Date: Fri, 11 Mar 2011 02:20:53 -0000

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
1.7.1.1


