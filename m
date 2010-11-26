Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC5B14C81065
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 23:31:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 21:31:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="580136752"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 21:31:45 -0800
Message-Id: <e708a7464fcc666e3455d63b0cd2116dfa16f01e.1291354553.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291354552.git.edwin.zhai@intel.com>
References: <cover.1291354552.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 23:53:48 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/14] pointercal: Add license checksum
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
X-List-Received-Date: Fri, 03 Dec 2010 05:31:48 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-bsp/pointercal/files/COPYING     |    2 ++
 meta/recipes-bsp/pointercal/pointercal_0.0.bb |    5 ++++-
 2 files changed, 6 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-bsp/pointercal/files/COPYING

diff --git a/meta/recipes-bsp/pointercal/files/COPYING b/meta/recipes-bsp/pointercal/files/COPYING
new file mode 100644
index 0000000..63f5293
--- /dev/null
+++ b/meta/recipes-bsp/pointercal/files/COPYING
@@ -0,0 +1,2 @@
+This is a blank COPYING file, and should be filled in by original author in future.
+
diff --git a/meta/recipes-bsp/pointercal/pointercal_0.0.bb b/meta/recipes-bsp/pointercal/pointercal_0.0.bb
index 3112c97..069d850 100644
--- a/meta/recipes-bsp/pointercal/pointercal_0.0.bb
+++ b/meta/recipes-bsp/pointercal/pointercal_0.0.bb
@@ -2,8 +2,11 @@ DESCRIPTION = "Touchscreen calibration data"
 SECTION = "base"
 PR = "r11"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=4b5fcfc87fb615860d398b5e38685edf"
+
+SRC_URI = "file://pointercal \
+           file://COPYING"
 
-SRC_URI = "file://pointercal"
 S = "${WORKDIR}"
 
 do_install() {
-- 
1.7.0.4


