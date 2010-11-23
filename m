Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id CBB134C811D7
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:48 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Nov 2010 02:07:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="352160144"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 23 Nov 2010 02:07:47 -0800
Message-Id: <96fcb034b1b4101b4e1240c40815962f223e8b68.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 17:36:17 +0800
To: poky@yoctoproject.org
Subject: [PATCH 24/25] insserv:Add license checksum and update the GPL information
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:49 -0000

Add COPYING file checksum to bb file and update the "GPL" to "GPLv2" according to the COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/insserv/insserv_1.11.0.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/insserv/insserv_1.11.0.bb b/meta/recipes-devtools/insserv/insserv_1.11.0.bb
index a45ccda..f3c79ee 100644
--- a/meta/recipes-devtools/insserv/insserv_1.11.0.bb
+++ b/meta/recipes-devtools/insserv/insserv_1.11.0.bb
@@ -1,4 +1,5 @@
-LICENSE = "GPL"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
 SECTION = "base"
 PR = "r1"
 
-- 
1.6.3.3


