Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B6B84C811E6
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 05:03:01 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Nov 2010 03:02:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="352684377"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 03:02:58 -0800
Message-Id: <d68efb61524f9f042fbd010192a0d2cd5d27dabb.1290596255.git.lei.mei@intel.com>
In-Reply-To: <cover.1290596255.git.lei.mei@intel.com>
References: <cover.1290596255.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 24 Nov 2010 17:49:50 +0800
To: poky@yoctoproject.org
Subject: [PATCH 12/20] byacc:Add license checksum and add the GPL information
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
X-List-Received-Date: Wed, 24 Nov 2010 11:03:01 -0000

Add copyright file checksum to bb file and add the license information according to the copyright file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-extended/byacc/byacc_20100610.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/byacc/byacc_20100610.bb b/meta/recipes-extended/byacc/byacc_20100610.bb
index 48d0e4e..04cdd7c 100644
--- a/meta/recipes-extended/byacc/byacc_20100610.bb
+++ b/meta/recipes-extended/byacc/byacc_20100610.bb
@@ -1,5 +1,6 @@
 PR = "r0"
-
+LICENSE="other-BSD"
+LIC_FILES_CHKSUM = "file://package/debian/copyright;md5=4dc4c30f840a7203fb6edf20b3db849e"
 require byacc.inc
 
 SRC_URI[md5sum] = "b9715b9a2867c221176b597e8f73cbc9"
-- 
1.6.3.3


