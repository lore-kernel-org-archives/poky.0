Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D2BB4C811EA
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:17 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 06:27:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="690189161"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 06:27:16 -0800
Message-Id: <d59f5f640780ccb5634b3af34a8c2c868ba38a04.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 17:31:57 -0800
Date: Thu, 23 Dec 2010  6:27:16 -0800
To: poky@yoctoproject.org
Subject: [PATCH 18/28] desktop-file-utils: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:17 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../desktop-file-utils-native_0.15.bb              |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/desktop-file-utils/desktop-file-utils-native_0.15.bb b/meta/recipes-devtools/desktop-file-utils/desktop-file-utils-native_0.15.bb
index 9603982..3ed7475 100644
--- a/meta/recipes-devtools/desktop-file-utils/desktop-file-utils-native_0.15.bb
+++ b/meta/recipes-devtools/desktop-file-utils/desktop-file-utils-native_0.15.bb
@@ -1,8 +1,9 @@
 SECTION = "console/utils"
 HOMEPAGE = "http://www.freedesktop.org/wiki/Software/desktop-file-utils"
 DESCRIPTION = "command line utilities to work with *.desktop files"
-LICENSE = "GPL"
+LICENSE = "GPLv2"
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "glib-2.0-native"
 
 SRC_URI = "http://freedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-${PV}.tar.gz"
-- 
1.7.2.3


