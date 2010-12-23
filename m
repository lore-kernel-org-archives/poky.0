Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DE1A74C811C5
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:08:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 07:07:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="586675176"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 07:07:35 -0800
Message-Id: <7261df10fd47e326edcd3b37e67c3a1fffc551ee.1293116649.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293116649.git.sgw@linux.intel.com>
References: <cover.1293116649.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 07:02:41 -0800
Date: Thu, 23 Dec 2010  7:07:35 -0800
To: poky@yoctoproject.org
Subject: [PATCH 3/4] unifdef: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 15:08:01 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../unifdef/unifdef-native_2.6.18+git.bb           |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb b/meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb
index d8719a2..1b93816 100644
--- a/meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb
+++ b/meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Kernel header preprocessor"
 SECTION = "devel"
 LICENSE = "GPL"
 
-LIC_FILES_CHKSUM = "file://${WORKDIR}/unifdef.c;endline=32;md5="
+LIC_FILES_CHKSUM = "file://${WORKDIR}/unifdef.c;endline=32;md5=1a33f5c39aa718a89058721df61979bd"
 
 SRC_URI = "file://unifdef.c"
 
-- 
1.7.2.3


