Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2EC24C811CE
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 03:49:20 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Nov 2010 01:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="577806848"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2010 01:49:19 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLuqu-000540-31; Fri, 26 Nov 2010 17:44:24 +0800
Message-Id: <ca428bdfe878f6aa234d32f4a03a87ea4a8cccfb.1290764498.git.qing.he@intel.com>
In-Reply-To: <cover.1290764497.git.qing.he@intel.com>
References: <cover.1290764497.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 26 Nov 2010 16:58:00 +0800
To: poky@yoctoproject.org
Subject: [PATCH 06/15] parted: update license info
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
X-List-Received-Date: Fri, 26 Nov 2010 09:49:20 -0000

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-extended/parted/parted_1.9.0.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/parted/parted_1.9.0.bb b/meta/recipes-extended/parted/parted_1.9.0.bb
index f2a2651..96253b2 100644
--- a/meta/recipes-extended/parted/parted_1.9.0.bb
+++ b/meta/recipes-extended/parted/parted_1.9.0.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "parted, the GNU partition resizing program"
 HOMEPAGE = "http://www.gnu.org/software/parted/parted.html"
-LICENSE = "GPLv2"
+LICENSE = "GPLv3+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=4c61b8950dc1aab4d2aa7c2ae6b1cfb3"
 SECTION = "console/tools"
 DEPENDS = "readline e2fsprogs"
 PR = "r3"
-- 
1.7.0


