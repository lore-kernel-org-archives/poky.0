Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 226714C811CC
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 03:49:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 01:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="681231960"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2010 01:49:19 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLuqu-00054g-69; Fri, 26 Nov 2010 17:44:24 +0800
Message-Id: <2d23c09cfeebc6df4552f5790db2a4dff0dfab53.1290764498.git.qing.he@intel.com>
In-Reply-To: <cover.1290764497.git.qing.he@intel.com>
References: <cover.1290764497.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 26 Nov 2010 17:33:18 +0800
To: poky@yoctoproject.org
Subject: [PATCH 13/15] yaffs2-utils: update license info
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
 meta/recipes-devtools/yaffs2/yaffs2-utils.inc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/yaffs2/yaffs2-utils.inc b/meta/recipes-devtools/yaffs2/yaffs2-utils.inc
index b25cc3b..0863fee 100644
--- a/meta/recipes-devtools/yaffs2/yaffs2-utils.inc
+++ b/meta/recipes-devtools/yaffs2/yaffs2-utils.inc
@@ -2,6 +2,7 @@ DESCRIPTION = "Tools for managing 'yaffs2' file systems."
 SECTION = "base"
 HOMEPAGE = "http://www.yaffs.net"
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://yaffs_fs.c;beginline=1;endline=19;md5=353dca22c3100881669871c4bd5cbf73"
 PV = "0.0.0+cvs${SRCDATE}"
 PR = "r0"
 DEPENDS = "mtd-utils"
-- 
1.7.0


