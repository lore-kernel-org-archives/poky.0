Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 839F14C80772
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 04:52:33 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Feb 2011 02:52:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,224,1297065600"; d="scan'208";a="661402590"
Received: from unknown (HELO localhost) ([10.255.16.236])
	by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2011 02:52:31 -0800
Message-Id: <2ecfbfecc5e7a75caf930dad9e9a1af08ba097e4.1298630948.git.josh@linux.intel.com>
In-Reply-To: <cover.1298630947.git.josh@linux.intel.com>
References: <cover.1298630947.git.josh@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 10:24:27 +0000
Date: Fri, 25 Feb 2011 10:52:25 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 2/2] dropbear: add SRC_URI checksums
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
X-List-Received-Date: Fri, 25 Feb 2011 10:52:33 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-core/dropbear/dropbear_0.52.bb |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/dropbear/dropbear_0.52.bb b/meta/recipes-core/dropbear/dropbear_0.52.bb
index 51217ea..6556bb4 100644
--- a/meta/recipes-core/dropbear/dropbear_0.52.bb
+++ b/meta/recipes-core/dropbear/dropbear_0.52.bb
@@ -1,3 +1,6 @@
 require dropbear.inc
 
+SRC_URI[md5sum] = "1c69ec674481d7745452f68f2ea5597e"
+SRC_URI[sha256sum] = "e3a2ca49ed85ce562240c0ac06e2f72826d7e52a83e80d91c067c8b97bf5c108"
+
 PR="r0"
-- 
1.7.4


