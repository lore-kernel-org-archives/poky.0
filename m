Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16D11E013BB
	for <poky@yoctoproject.org>; Wed,  1 Aug 2012 12:02:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Aug 2012 12:02:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="174243225"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 01 Aug 2012 12:02:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Wed,  1 Aug 2012 12:01:23 -0700
Message-Id: <1ba4bed94060dcede67c9be64cead095b9acfd83.1343847551.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1343847551.git.dvhart@linux.intel.com>
References: <cover.1343847551.git.dvhart@linux.intel.com>
Subject: [PATCH 1/1] tiny-init: Setup /dev/ptmx in init
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
X-List-Received-Date: Wed, 01 Aug 2012 19:02:06 -0000

Fixes [YOCTO #2382]

Without /dev/ptmx, ssh logins fail with:
"PTY allocation request failed on channel 0"

As the kernel support already exists in the linux-yocto-tiny kernel,
create the /dev/ptmx device in tiny-init so it works as intended.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Reinette Chatre <reinette.chatre@intel.com>
---
 meta-yocto/recipes-core/tiny-init/files/init   |    3 +++
 meta-yocto/recipes-core/tiny-init/tiny-init.bb |    2 +-
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto/recipes-core/tiny-init/files/init
index bf2817d..89fe39e 100644
--- a/meta-yocto/recipes-core/tiny-init/files/init
+++ b/meta-yocto/recipes-core/tiny-init/files/init
@@ -3,6 +3,9 @@
 # Mount the Linux kernel virtual filesystems
 mount none -t proc /proc
 mount none -t sysfs /sys
+
+# Setup PTY infrastructure
+mknod /dev/ptmx c 5 2
 mkdir /dev/pts
 mount none -t devpts /dev/pts
 
diff --git a/meta-yocto/recipes-core/tiny-init/tiny-init.bb b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
index f5892ed..394d70f 100644
--- a/meta-yocto/recipes-core/tiny-init/tiny-init.bb
+++ b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "Basic init system for poky-tiny"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-PR = "r0"
+PR = "r1"
 
 RDEPENDS_${PN} = "busybox"
 
-- 
1.7.5.4


