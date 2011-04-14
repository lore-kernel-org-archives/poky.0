Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97A004C80AC6
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:16:03 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Apr 2011 17:16:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="418821017"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by azsmga001.ch.intel.com with ESMTP; 13 Apr 2011 17:16:02 -0700
Message-Id: <d6d8282cd7cebb1b4e98ca32f01704d0810d3a1c.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1302739788.git.edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Wed, 13 Apr 2011 13:32:55 +0800
Date: Thu, 14 Apr 2011  8:13:29 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 9/9] libgpg-error: Upgrade to 1.10 (from 1.9)
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
X-List-Received-Date: Thu, 14 Apr 2011 00:16:03 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../pkgconfig.patch                                |    0
 .../{libgpg-error_1.9.bb => libgpg-error_1.10.bb}  |    4 ++--
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-support/libgpg-error/{libgpg-error-1.9 => libgpg-error-1.10}/pkgconfig.patch (100%)
 rename meta/recipes-support/libgpg-error/{libgpg-error_1.9.bb => libgpg-error_1.10.bb} (86%)

diff --git a/meta/recipes-support/libgpg-error/libgpg-error-1.9/pkgconfig.patch b/meta/recipes-support/libgpg-error/libgpg-error-1.10/pkgconfig.patch
similarity index 100%
rename from meta/recipes-support/libgpg-error/libgpg-error-1.9/pkgconfig.patch
rename to meta/recipes-support/libgpg-error/libgpg-error-1.10/pkgconfig.patch
diff --git a/meta/recipes-support/libgpg-error/libgpg-error_1.9.bb b/meta/recipes-support/libgpg-error/libgpg-error_1.10.bb
similarity index 86%
rename from meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
rename to meta/recipes-support/libgpg-error/libgpg-error_1.10.bb
index 560340b..50f3743 100644
--- a/meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
+++ b/meta/recipes-support/libgpg-error/libgpg-error_1.10.bb
@@ -15,8 +15,8 @@ PR = "r0"
 SRC_URI = "ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-${PV}.tar.bz2 \
            file://pkgconfig.patch;"
 
-SRC_URI[md5sum] = "521b98aa9395e7eaf0ef2236233a0796"
-SRC_URI[sha256sum] = "54d9326bfbd46c705963c507953f65a40576d04b374e131008dc5b732ff1e3c3"
+SRC_URI[md5sum] = "736a03daa9dc5873047d4eb4a9c22a16"
+SRC_URI[sha256sum] = "520629b4568b5c29b1991c8ffc267c8bdee5f223c7333c42a651b56f9b1c5431"
 
 # move libgpg-error-config into -dev package
 FILES_${PN} = "${libdir}/lib*.so.*"
-- 
1.7.1


