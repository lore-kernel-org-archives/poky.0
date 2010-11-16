Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA27D4C811CF
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:41:56 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 05:41:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="627284049"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2010 05:41:56 -0800
Message-Id: <48f7c15dfdac58db09a9394203fe86695c36b3ad.1289914983.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289914982.git.dongxiao.xu@intel.com>
References: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 10:17:14 +0800
To: poky@yoctoproject.org
Subject: [PATCH 09/14] tremor: Upgraded to rev 17572 (2010/10/27)
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
X-List-Received-Date: Tue, 16 Nov 2010 13:41:57 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../{tremor_20100422.bb => tremor_20101027.bb}     |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-multimedia/tremor/{tremor_20100422.bb => tremor_20101027.bb} (88%)

diff --git a/meta/recipes-multimedia/tremor/tremor_20100422.bb b/meta/recipes-multimedia/tremor/tremor_20101027.bb
similarity index 88%
rename from meta/recipes-multimedia/tremor/tremor_20100422.bb
rename to meta/recipes-multimedia/tremor/tremor_20101027.bb
index 5c66b2a..e5eab6c 100644
--- a/meta/recipes-multimedia/tremor/tremor_20100422.bb
+++ b/meta/recipes-multimedia/tremor/tremor_20101027.bb
@@ -8,7 +8,7 @@ DEPENDS = "libogg"
 SRCDATE = "${PV}"
 PR = "r0"
 
-SRC_URI = "svn://svn.xiph.org/trunk;module=Tremor;rev=17157;proto=http"
+SRC_URI = "svn://svn.xiph.org/trunk;module=Tremor;rev=17572;proto=http"
 
 S = "${WORKDIR}/Tremor"
 
-- 
1.6.3.3


