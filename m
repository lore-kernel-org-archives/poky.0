Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A03EF4C8112C
	for <poky@pokylinux.org>; Mon, 27 Dec 2010 19:07:36 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Dec 2010 17:07:36 -0800
Message-Id: <b9dded$hgdm2b@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,237,1291622400"; d="scan'208";a="587651150"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by orsmga002.jf.intel.com with ESMTP; 27 Dec 2010 17:07:35 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Tue, 28 Dec 2010 08:43:43 +0800
Date: Tue, 28 Dec 2010  8:50:53 +0800
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
X-List-Received-Date: Tue, 28 Dec 2010 01:07:36 -0000

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
index e5d5509..6d1091c 100644
--- a/meta/recipes-support/attr/acl_2.2.49.bb
+++ b/meta/recipes-support/attr/acl_2.2.49.bb
@@ -1,3 +1,3 @@
 require acl.inc
 
-PR = "r0"
+PR = "r1"
-- 
1.6.0.4


