Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6FC9A4C811CC
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:38 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Nov 2010 02:50:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="861289362"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2010 02:50:37 -0800
Message-Id: <9ad168a0ac7528e122edcbb76e9365f17cf233ac.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 13:48:15 +0800
To: poky@yoctoproject.org
Subject: [PATCH 10/20] python-scons:Add license checksum and update the GPL information
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:38 -0000

Add LICENSE.txt file checksum to bb file and update the "GPL" to "MIT" according to the License file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/python/python-scons_2.0.1.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/python/python-scons_2.0.1.bb b/meta/recipes-devtools/python/python-scons_2.0.1.bb
index f5d11eb..97a7a8c 100644
--- a/meta/recipes-devtools/python/python-scons_2.0.1.bb
+++ b/meta/recipes-devtools/python/python-scons_2.0.1.bb
@@ -1,7 +1,8 @@
 DESCRIPTION = "A Software Construction Tool"
 SECTION = "devel/python"
 PRIORITY = "optional"
-LICENSE = "GPL"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=8481211ebbeaed9cdc7ad5a3b0c98aaf"
 SRCNAME = "scons"
 
 PR = "r0"
-- 
1.6.3.3


