Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD53C4C811D8
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Nov 2010 02:07:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="352160121"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 23 Nov 2010 02:07:43 -0800
Message-Id: <2ab840038577a05c6d98907a68a403a11fce54cf.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 17:17:34 +0800
To: poky@yoctoproject.org
Subject: [PATCH 22/25] expat:Add license checksum to bb file
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:45 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-core/expat/expat_2.0.1.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/expat/expat_2.0.1.bb b/meta/recipes-core/expat/expat_2.0.1.bb
index 9983fe5..d6101ac 100644
--- a/meta/recipes-core/expat/expat_2.0.1.bb
+++ b/meta/recipes-core/expat/expat_2.0.1.bb
@@ -1,3 +1,3 @@
 require expat.inc
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=1b71f681713d1256e1c23b0890920874"
 PR = "r0"
-- 
1.6.3.3


