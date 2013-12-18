Return-Path: <cristiana.voicu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 520B7E006BC
	for <poky@yoctoproject.org>; Wed, 18 Dec 2013 05:39:35 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Dec 2013 05:39:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,508,1384329600"; d="scan'208";a="454230377"
Received: from cvoicu-vostro-460.rb.intel.com ([10.237.105.151])
	by orsmga002.jf.intel.com with ESMTP; 18 Dec 2013 05:39:33 -0800
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 18 Dec 2013 15:46:00 +0200
Message-Id: <1387374360-15106-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] pango: remove no update reason because it was updated
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Dec 2013 13:39:40 -0000

Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |    1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index de30a47..ae1ae49 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -182,7 +182,6 @@ RECIPE_UPSTREAM_VERSION_pn-opkg = "0.1.8"
 RECIPE_NO_UPDATE_REASON_pn-oprofileui-server = "PRS Reports Incorrectly"
 CHECK_DATE_pn-opkg = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-opkg = "Feb 01, 2010"
-RECIPE_NO_UPDATE_REASON_pn-pango = "Version 1.35.2 requires fontconfig 2.10.91 which is not a stable version"
 RECIPE_NO_UPDATE_REASON_pn-pkgconfig = "removes glib-conf, adds circular depends"
 RECIPE_UPSTREAM_VERSION_pn-pointercal = "0.0"
 RECIPE_UPSTREAM_DATE_pn-pointercal = "n/a"
-- 
1.7.9.5


