Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 312204C8009A
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 20:21:00 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Feb 2011 18:20:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,183,1297065600"; d="scan'208";a="888716915"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.224])
	by fmsmga001.fm.intel.com with ESMTP; 17 Feb 2011 18:20:59 -0800
Message-Id: <316043b3614fc520288844a1b8e3afc92f69a7d6.1297995730.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1297995730.git.edwin.zhai@intel.com>
References: <cover.1297995730.git.edwin.zhai@intel.com>
Old-Date: Thu, 17 Feb 2011 16:51:25 +0800
Date: Fri, 18 Feb 2011 10:24:19 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/1] eds-dbus: Enable parallel make to speed up build process
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
X-List-Received-Date: Fri, 18 Feb 2011 02:21:00 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-sato/eds/eds-dbus_git.bb |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-sato/eds/eds-dbus_git.bb b/meta/recipes-sato/eds/eds-dbus_git.bb
index 5ab96a7..f3da7d3 100644
--- a/meta/recipes-sato/eds/eds-dbus_git.bb
+++ b/meta/recipes-sato/eds/eds-dbus_git.bb
@@ -28,11 +28,6 @@ inherit autotools pkgconfig
 # -ldb needs this on some platforms
 LDFLAGS += "-lpthread"
 
-# Parallel make shows many issues with this source code.
-# Current problems seem to be duplicate execution of the calander/backends
-# directories by make resulting in truncated/corrupt .la files
-PARALLEL_MAKE = ""
-
 do_configure_prepend () {
         echo "EXTRA_DIST = " > ${S}/gtk-doc.make
 }
-- 
1.7.0.4


