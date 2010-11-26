Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 003584C811D4
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 03:49:20 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Nov 2010 01:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="577806850"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2010 01:49:19 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLuqu-00054U-50; Fri, 26 Nov 2010 17:44:24 +0800
Message-Id: <a982a3de032e8f3f80ffda7adb97e47be5f82a79.1290764498.git.qing.he@intel.com>
In-Reply-To: <cover.1290764497.git.qing.he@intel.com>
References: <cover.1290764497.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 26 Nov 2010 17:26:49 +0800
To: poky@yoctoproject.org
Subject: [PATCH 11/15] v86d: update license info
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
X-List-Received-Date: Fri, 26 Nov 2010 09:49:21 -0000

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-bsp/v86d/v86d_0.1.9.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-bsp/v86d/v86d_0.1.9.bb b/meta/recipes-bsp/v86d/v86d_0.1.9.bb
index 19510b9..30d9f95 100644
--- a/meta/recipes-bsp/v86d/v86d_0.1.9.bb
+++ b/meta/recipes-bsp/v86d/v86d_0.1.9.bb
@@ -1,7 +1,9 @@
 DESCRIPTION = "User support binary for the uvesafb kernel module"
 HOMEPAGE = "http://dev.gentoo.org/~spock/projects/uvesafb/"
 
+# the copyright info is at the bottom of README, expect break
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://README;md5=94ac1971e4f2309dc322d598e7b1f7dd"
 
 DEPENDS = "virtual/kernel"
 RRECOMMENDS_${PN} = "kernel-module-uvesafb"
-- 
1.7.0


