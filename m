Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8308B4C810B6
	for <poky@pokylinux.org>; Mon, 27 Dec 2010 19:11:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Dec 2010 17:10:40 -0800
Message-Id: <849307$au2u3f@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,237,1291622400"; d="scan'208";a="367097972"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by azsmga001.ch.intel.com with ESMTP; 27 Dec 2010 17:10:40 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Tue, 28 Dec 2010 08:35:49 +0800
Date: Tue, 28 Dec 2010  8:53:57 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/1] acl: use correct Savannah download link
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
X-List-Received-Date: Tue, 28 Dec 2010 01:11:41 -0000

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-support/attr/acl.inc       |    2 +-
 meta/recipes-support/attr/acl_2.2.49.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-support/attr/acl.inc b/meta/recipes-support/attr/acl.inc
index 68745dd..15a87a5 100644
--- a/meta/recipes-support/attr/acl.inc
+++ b/meta/recipes-support/attr/acl.inc
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://doc/COPYING;md5=c781d70ed2b4d48995b790403217a249 \
                     file://doc/COPYING.LGPL;md5=9e9a206917f8af112da634ce3ab41764"
 
 DEPENDS = "attr"
-SRC_URI = "http://mirror.cinquix.com/pub/savannah/acl/${BP}.src.tar.gz"
+SRC_URI = "http://download.savannah.gnu.org/releases/acl/${BP}.src.tar.gz"
 
 require ea-acl.inc
 
diff --git a/meta/recipes-support/attr/acl_2.2.49.bb b/meta/recipes-support/attr/acl_2.2.49.bb
index 2e0e0d3..197ac7d 100644
--- a/meta/recipes-support/attr/acl_2.2.49.bb
+++ b/meta/recipes-support/attr/acl_2.2.49.bb
@@ -1,6 +1,6 @@
 require acl.inc
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI[md5sum] = "181445894cca986da9ae0099d5ce2d08"
 SRC_URI[sha256sum] = "b9c7f4752e4ef4930a62fa5aa0d7efe1cba2b5a3a2d6ee2b45c0a70c72b7e5d5"
-- 
1.6.0.4


