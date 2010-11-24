Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B99A4C811EF
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:03:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Nov 2010 03:03:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="860917279"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2010 03:03:05 -0800
Message-Id: <d4d2e21bcbafdf7546114f1204bffcc057dbedba.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 18:32:10 +0800
To: poky@yoctoproject.org
Subject: [PATCH 17/20] libmpc:Add license checksum and update the GPL information
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
X-List-Received-Date: Wed, 24 Nov 2010 11:03:06 -0000

Add COPYING.LIB file checksum to bb file and add the "LGPLv2.1" according to the COPYING.LIB file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-support/libmpc/libmpc_0.8.2.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/libmpc/libmpc_0.8.2.bb b/meta/recipes-support/libmpc/libmpc_0.8.2.bb
index 1792066..3c9ef1b 100644
--- a/meta/recipes-support/libmpc/libmpc_0.8.2.bb
+++ b/meta/recipes-support/libmpc/libmpc_0.8.2.bb
@@ -3,7 +3,8 @@ require libmpc.inc
 DEPENDS = "gmp mpfr"
 
 PR = "r0"
-
+LICENSE="LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=7fbc338309ac38fefcd64b04bb903e34"
 SRC_URI = "http://www.multiprecision.org/mpc/download/mpc-${PV}.tar.gz"
 S = "${WORKDIR}/mpc-${PV}"
 
-- 
1.6.3.3


