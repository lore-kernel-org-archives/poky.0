Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0652A4C811D0
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 07:50:45 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Dec 2010 05:50:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="632399928"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2010 05:50:45 -0800
Message-Id: <f6c38d0aaa0aa6073ce384795490d563f6f6bc2b.1291296360.git.lei.mei@intel.com>
In-Reply-To: <cover.1291296360.git.lei.mei@intel.com>
References: <cover.1291296360.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 2 Dec 2010 21:15:34 +0800
To: poky@yoctoproject.org
Subject: [PATCH 8/8] modutils-initscripts:Add license checksum to bb file
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
X-List-Received-Date: Thu, 02 Dec 2010 13:50:46 -0000

Add Public Domain license file as a patch, and add checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-kernel/modutils/files/PD.patch        |   12 ++++++++++++
 .../modutils/modutils-initscripts.bb               |    4 +++-
 2 files changed, 15 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-kernel/modutils/files/PD.patch

diff --git a/meta/recipes-kernel/modutils/files/PD.patch b/meta/recipes-kernel/modutils/files/PD.patch
new file mode 100644
index 0000000..d3d41c4
--- /dev/null
+++ b/meta/recipes-kernel/modutils/files/PD.patch
@@ -0,0 +1,12 @@
+diff --git a/COPYRIGHT b/COPYRIGHT
+new file mode 100644
+index 0000000..3db7be6
+--- /dev/null
++++ b/COPYRIGHT
+@@ -0,0 +1,6 @@
++Author: Kevin Tian <kevin.tian@intel.com>
++
++Copyright:
++
++The author disclaims all copyright. The library is in the public domain.
++
diff --git a/meta/recipes-kernel/modutils/modutils-initscripts.bb b/meta/recipes-kernel/modutils/modutils-initscripts.bb
index b8fc6c2..98a0e5c 100644
--- a/meta/recipes-kernel/modutils/modutils-initscripts.bb
+++ b/meta/recipes-kernel/modutils/modutils-initscripts.bb
@@ -1,7 +1,9 @@
 SECTION = "base"
 DESCRIPTION = "modutils configuration files"
 LICENSE = "PD"
-SRC_URI = "file://modutils.sh"
+LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=b5d3dd3b8c3812c156dc49c9e4713c6c"
+SRC_URI = "file://modutils.sh \
+	   file://PD.patch"
 PR = "r4"
 
 INITSCRIPT_NAME = "modutils.sh"
-- 
1.6.3.3


