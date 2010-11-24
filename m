Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83A5C4C80B70
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:02:46 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Nov 2010 03:02:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="629869395"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 24 Nov 2010 03:02:45 -0800
Message-Id: <0b35808bbf8066337541200f1f4b3d183eb0bc16.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 13:53:41 +0800
To: poky@yoctoproject.org
Subject: [PATCH 03/20] libgdbus:Add license checksum and update the GPL information
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
X-List-Received-Date: Wed, 24 Nov 2010 11:02:46 -0000

Add COPYING and COPYING.LIB files checksum to bb file and update the "GPL" to "GPLv2", "LGPL" to "LGPLv2.1" according to the license files

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-support/libgdbus/libgdbus_git.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/libgdbus/libgdbus_git.bb b/meta/recipes-support/libgdbus/libgdbus_git.bb
index f0101f9..c465023 100644
--- a/meta/recipes-support/libgdbus/libgdbus_git.bb
+++ b/meta/recipes-support/libgdbus/libgdbus_git.bb
@@ -1,6 +1,8 @@
 HOMEPAGE = "http://www.moblin.org/projects/projects_connman.php"
 SUMMARY  = "Moblin Glib D-Bus integration"
-LICENSE  = "GPL LGPL"
+LICENSE  = "GPLv2&LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e \
+		    file://COPYING.LIB;md5=fb504b67c50331fc78734fed90fb0e09"
 DEPENDS  = "glib-2.0 dbus"
 PV       = "0.0+git${SRCREV}"
 S        = "${WORKDIR}/git"
-- 
1.6.3.3


