Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A39B4C810C1
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:25 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 02:50:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="630223654"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2010 02:50:24 -0800
Message-Id: <1775461968f70e6abf4ac7a1415208bb7b88640c.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 10:25:02 +0800
To: poky@yoctoproject.org
Subject: [PATCH 01/20] mpfr:Add license checksum and update the GPL information
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:25 -0000

Add COPYING file and COPYING.LESSER file checksum to bb file and add the "GPLv3" to "LGPLv3" according to the license file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-support/mpfr/mpfr_3.0.0.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/mpfr/mpfr_3.0.0.bb b/meta/recipes-support/mpfr/mpfr_3.0.0.bb
index 188a5d9..3e1b8c4 100644
--- a/meta/recipes-support/mpfr/mpfr_3.0.0.bb
+++ b/meta/recipes-support/mpfr/mpfr_3.0.0.bb
@@ -1,5 +1,7 @@
 require mpfr.inc
-
+LICENSE="GPLv3&LGPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
+		    file://COPYING.LESSER;md5=6a6a8e020838b23406c81b19c1d46df6"
 DEPENDS = "gmp"
 PR = "r0"
 
-- 
1.6.3.3


