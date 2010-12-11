Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECD7A4C810AC
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:35:51 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Dec 2010 11:35:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="867145636"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by fmsmga001.fm.intel.com with ESMTP; 11 Dec 2010 11:35:50 -0800
Message-Id: <5d64753fe424ce8f0dcd5339bcf78a02f916695c.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 16:59:05 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 02/13] patch: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:35:52 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 meta/recipes-devtools/patch/patch_2.5.9.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/patch/patch_2.5.9.bb b/meta/recipes-devtools/patch/patch_2.5.9.bb
index 4b4511f..9c8f242 100644
--- a/meta/recipes-devtools/patch/patch_2.5.9.bb
+++ b/meta/recipes-devtools/patch/patch_2.5.9.bb
@@ -1,5 +1,7 @@
 require patch.inc
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
 SRC_URI = "${GNU_MIRROR}/patch/patch-2.5.4.tar.gz \
 	   file://2.5.9.patch;patch=1 \
 	   file://debian.patch;patch=1 \
@@ -10,4 +12,4 @@ SRC_URI = "${GNU_MIRROR}/patch/patch-2.5.4.tar.gz \
 SRC_URI[md5sum] = "ee5ae84d115f051d87fcaaef3b4ae782"
 SRC_URI[sha256sum] = "dd2fc5a745bfca5450d13d7032fdc47ab102514aae3efb3fe334a6eff87df799"
 S = "${WORKDIR}/patch-2.5.4"
-PR = "r2"
\ No newline at end of file
+PR = "r2"
-- 
1.7.1.1


