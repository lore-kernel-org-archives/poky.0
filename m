Return-Path: <cristian.iorga@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 124C9E01466
	for <poky@yoctoproject.org>; Thu, 14 Mar 2013 11:06:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 Mar 2013 11:06:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,846,1355126400"; d="scan'208";a="214778619"
Received: from unknown (HELO sentry.rb.intel.com) ([10.237.105.54])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Mar 2013 11:06:45 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Mar 2013 20:07:17 +0200
Message-Id: <1363284437-23912-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] upstream-tracking: added glib-2.0 no update reason
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
X-List-Received-Date: Thu, 14 Mar 2013 18:06:55 -0000

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index d7f13f9..d212a28 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -70,6 +70,7 @@ RECIPE_UPSTREAM_VERSION_pn-gdk-pixbuf = "2.27.2"
 RECIPE_UPSTREAM_DATE_pn-gdk-pixbuf = "Mar 3, 2013"
 CHECK_DATE_pn-gdk-pixbuf = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-gdk-pixbuf = "2.27.2 is unstable"
+RECIPE_NO_UPDATE_REASON_pn-glib-2.0 = "2.35.8 is unstable"
 RECIPE_UPSTREAM_VERSION_pn-glibc = "2.11.2"
 RECIPE_UPSTREAM_DATE_pn-glibc = "May 01, 2010"
 RECIPE_NO_UPDATE_REASON_pn-glibc = "two glibc plugins are based on 2.10.1"
-- 
1.7.10.4


