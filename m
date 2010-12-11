Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA3404C811C8
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:36:07 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Dec 2010 11:36:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="582776889"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by orsmga002.jf.intel.com with ESMTP; 11 Dec 2010 11:36:07 -0800
Message-Id: <2adaa8a512a6c0c2b671f960eeee1f7c23774322.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 17:02:19 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 11/13] libexif: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:36:07 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 meta/recipes-support/libexif/libexif_0.6.16.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/libexif/libexif_0.6.16.bb b/meta/recipes-support/libexif/libexif_0.6.16.bb
index e0d4681..8fb15d9 100644
--- a/meta/recipes-support/libexif/libexif_0.6.16.bb
+++ b/meta/recipes-support/libexif/libexif_0.6.16.bb
@@ -1,7 +1,8 @@
 DESCRIPTION = "Library to read the extended image information (EXIF) from JPEG pictures"
 HOMEPAGE = "http://sourceforge.net/projects/libexif"
 SECTION = "libs"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0448d3676bc0de00406af227d341a4d1"
 DEPENDS = "gettext"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/libexif/libexif-${PV}.tar.bz2"
-- 
1.7.1.1


