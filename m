Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65A034C805A8
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 10:09:59 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Apr 2011 08:09:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,274,1301900400"; d="scan'208";a="684769517"
Received: from unknown (HELO localhost) ([10.255.13.88])
	by fmsmga002.fm.intel.com with ESMTP; 27 Apr 2011 08:09:58 -0700
Message-Id: <503b1ca85ad930ead1ca6ebfcc2a291896fe2927.1303916888.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1303916888.git.tom.zanussi@intel.com>
References: <cover.1303916888.git.tom.zanussi@intel.com>
Old-Date: Wed, 27 Apr 2011 09:50:35 -0500
Date: Wed, 27 Apr 2011 10:10:13 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] core-image-directdisk: add LIC_FILES_CHECKSUM
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
X-List-Received-Date: Wed, 27 Apr 2011 15:09:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fix for build failure.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/recipes-core/images/core-image-directdisk.inc |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/images/core-image-directdisk.inc b/meta/recipes-core/images/core-image-directdisk.inc
index 64144b9..ef9e72d 100644
--- a/meta/recipes-core/images/core-image-directdisk.inc
+++ b/meta/recipes-core/images/core-image-directdisk.inc
@@ -1,5 +1,8 @@
 inherit boot-directdisk
 
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
 do_bootdirectdisk_prepend () {
 	import bb
 	fstypes = bb.data.getVar('IMAGE_FSTYPES', d, True)
-- 
1.7.0.4


