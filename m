Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E2C54C811CC
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 03:49:20 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 01:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="681231956"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2010 01:49:19 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLuqu-00053i-1T; Fri, 26 Nov 2010 17:44:24 +0800
Message-Id: <cea348e8b14f34fa15a12c5abc21ebd7ad9f2361.1290764498.git.qing.he@intel.com>
In-Reply-To: <cover.1290764497.git.qing.he@intel.com>
References: <cover.1290764497.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 26 Nov 2010 16:26:00 +0800
To: poky@yoctoproject.org
Subject: [PATCH 03/15] fakechroot: update license info
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
 meta/recipes-devtools/fakechroot/fakechroot_2.9.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb b/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
index aea7636..e38694c 100644
--- a/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
+++ b/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
@@ -1,6 +1,7 @@
 SECTION = "base"
 DESCRIPTION = "Gives a fake root environment which can support chroot"
-LICENSE = "GPL"
+LICENSE = "LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/f/fakechroot/fakechroot_${PV}.orig.tar.gz \
            file://fix-readlink.patch;patch=1 \
-- 
1.7.0


