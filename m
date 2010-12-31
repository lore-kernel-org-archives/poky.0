Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 630A24C80050
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 21:21:46 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Dec 2010 19:21:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,253,1291622400"; d="scan'208";a="588530845"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by orsmga002.jf.intel.com with ESMTP; 30 Dec 2010 19:21:45 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PYVTQ-0001gP-DC; Fri, 31 Dec 2010 11:16:12 +0800
Message-Id: <48b4cfa9b8a8096aea6dd073892d54e66dce0b96.1293765141.git.qing.he@intel.com>
In-Reply-To: <cover.1293765141.git.qing.he@intel.com>
References: <cover.1293765141.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 30 Dec 2010 14:07:06 +0800
Date: Fri, 31 Dec 2010 11:16:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/6] parted: upgrade to version 2.3
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
X-List-Received-Date: Fri, 31 Dec 2010 03:21:46 -0000

from 1.9.0

license checksum is changed due to one extra line in the COPYING

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../{parted-1.9.0 => parted-2.3}/no_check.patch    |    0
 .../{parted-1.9.0 => parted-2.3}/syscalls.patch    |    0
 .../parted/{parted_1.9.0.bb => parted_2.3.bb}      |   12 ++++++------
 3 files changed, 6 insertions(+), 6 deletions(-)
 rename meta/recipes-extended/parted/{parted-1.9.0 => parted-2.3}/no_check.patch (100%)
 rename meta/recipes-extended/parted/{parted-1.9.0 => parted-2.3}/syscalls.patch (100%)
 rename meta/recipes-extended/parted/{parted_1.9.0.bb => parted_2.3.bb} (54%)

diff --git a/meta/recipes-extended/parted/parted-1.9.0/no_check.patch b/meta/recipes-extended/parted/parted-2.3/no_check.patch
similarity index 100%
rename from meta/recipes-extended/parted/parted-1.9.0/no_check.patch
rename to meta/recipes-extended/parted/parted-2.3/no_check.patch
diff --git a/meta/recipes-extended/parted/parted-1.9.0/syscalls.patch b/meta/recipes-extended/parted/parted-2.3/syscalls.patch
similarity index 100%
rename from meta/recipes-extended/parted/parted-1.9.0/syscalls.patch
rename to meta/recipes-extended/parted/parted-2.3/syscalls.patch
diff --git a/meta/recipes-extended/parted/parted_1.9.0.bb b/meta/recipes-extended/parted/parted_2.3.bb
similarity index 54%
rename from meta/recipes-extended/parted/parted_1.9.0.bb
rename to meta/recipes-extended/parted/parted_2.3.bb
index 3601fb1..14c9c25 100644
--- a/meta/recipes-extended/parted/parted_1.9.0.bb
+++ b/meta/recipes-extended/parted/parted_2.3.bb
@@ -1,17 +1,17 @@
 DESCRIPTION = "parted, the GNU partition resizing program"
 HOMEPAGE = "http://www.gnu.org/software/parted/parted.html"
 LICENSE = "GPLv3+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=4c61b8950dc1aab4d2aa7c2ae6b1cfb3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2f31b266d3440dd7ee50f92cf67d8e6c"
 SECTION = "console/tools"
 DEPENDS = "readline e2fsprogs"
-PR = "r3"
+PR = "r0"
 
 SRC_URI = "${GNU_MIRROR}/parted/parted-${PV}.tar.gz \
-           file://no_check.patch;patch=1 \
-           file://syscalls.patch;patch=1 "
+           file://no_check.patch \
+           file://syscalls.patch "
 
-SRC_URI[md5sum] = "055305bc7bcf472ce38f9abf69a9d94d"
-SRC_URI[sha256sum] = "53231241ba24c104c207bd2920d70d31fda86df86a69c90e11f35144ffc55509"
+SRC_URI[md5sum] = "30ceb6df7e8681891e865e2fe5a7903d"
+SRC_URI[sha256sum] = "e81fa140805b5cd029ff6dda5cfa94d223e83ac182ebcae94f841d62ce468829"
 
 EXTRA_OECONF = "--disable-Werror --disable-device-mapper"
 
-- 
1.7.0


