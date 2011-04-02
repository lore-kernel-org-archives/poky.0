Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 86F104C800A3
	for <poky@pokylinux.org>; Sat,  2 Apr 2011 03:11:19 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Apr 2011 01:11:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,287,1299484800"; d="scan'208";a="904787813"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga001.fm.intel.com with ESMTP; 02 Apr 2011 01:10:59 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Q5vo6-0003v7-Ds; Sat, 02 Apr 2011 16:03:42 +0800
Message-Id: <a607ddfab05d3426faa2c8103e3c1041ac33a49b.1301731242.git.qing.he@intel.com>
In-Reply-To: <cover.1301731242.git.qing.he@intel.com>
References: <cover.1301731242.git.qing.he@intel.com>
Old-Date: Sat, 2 Apr 2011 16:09:18 +0800
Date: Sat, 02 Apr 2011 16:03:42 +0800
To: poky@pokylinux.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 1/1] bitbake.conf: fix MACHINE_ARCH
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
X-List-Received-Date: Sat, 02 Apr 2011 08:11:19 -0000

From: Qing He <qing.he@intel.com>

Replaces all '-' in $MACHINE to '_', fixes [YOCTO #946]

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/conf/bitbake.conf |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 56c7bbb..a825c17 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -92,8 +92,7 @@ SDK_CC_ARCH = "${BUILD_CC_ARCH}"
 
 BASE_PACKAGE_ARCH = "${HOST_ARCH}"
 PACKAGE_ARCH = "${BASE_PACKAGE_ARCH}"
-MACHINE_ARCH = "${@[bb.data.getVar('BASE_PACKAGE_ARCH', d, 1), bb.data.getVar('MACHINE', d, 1)][bool(bb.data.getVar('MACHINE', d, 1))]}"
-MACHINE_ARCH_qemux86-64 = "qemux86_64"
+MACHINE_ARCH = "${@[bb.data.getVar('BASE_PACKAGE_ARCH', d, 1), bb.data.getVar('MACHINE', d, 1)][bool(bb.data.getVar('MACHINE', d, 1))].replace('-', '_')}"
 PACKAGE_EXTRA_ARCHS ??= "${TARGET_ARCH}"
 PACKAGE_ARCHS = "all any noarch ${PACKAGE_EXTRA_ARCHS} ${MACHINE_ARCH}"
 # MACHINE shouldn't be included here as a variable dependency since machine specific 
-- 
1.7.0


