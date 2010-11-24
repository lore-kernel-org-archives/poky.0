Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E24D64C811F4
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:03:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Nov 2010 03:03:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="860917264"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2010 03:03:03 -0800
Message-Id: <2cad70df05833b1402ab74eebd42f4833a73c853.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 18:21:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 15/20] gmp:Add license checksum and add the GPL information
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
X-List-Received-Date: Wed, 24 Nov 2010 11:03:04 -0000

Add COPYING file and version.c file checksum to bb file and add the "GPLv3" "LGPLv3" information according to the License files

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-support/gmp/gmp_5.0.1.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/gmp/gmp_5.0.1.bb b/meta/recipes-support/gmp/gmp_5.0.1.bb
index dd908bd..79aeae5 100644
--- a/meta/recipes-support/gmp/gmp_5.0.1.bb
+++ b/meta/recipes-support/gmp/gmp_5.0.1.bb
@@ -1,5 +1,7 @@
 require gmp.inc
-
+LICENSE="LGPLv3&GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
+		    file://version.c;endline=18;md5=d8c56b52b9092346b9f93b4da65ef790"
 PR = "r0"
 
 SRC_URI_append += "file://sh4-asmfix.patch \
-- 
1.6.3.3


