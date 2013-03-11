Return-Path: <cristian.iorga@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E13BE0071D
	for <poky@yoctoproject.org>; Mon, 11 Mar 2013 08:25:35 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 11 Mar 2013 08:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,824,1355126400"; d="scan'208";a="212777342"
Received: from sentry (HELO localhost.localdomain) ([10.237.105.54])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Mar 2013 08:25:34 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Mon, 11 Mar 2013 17:25:59 +0200
Message-Id: <1363015559-18728-3-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1363015559-18728-1-git-send-email-cristian.iorga@intel.com>
References: <1363015559-18728-1-git-send-email-cristian.iorga@intel.com>
Subject: [PATCH 3/3] upstream-tracking: added dbus no-update reason
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
X-List-Received-Date: Mon, 11 Mar 2013 15:25:36 -0000

D-Bus 1.7.x is the development branch.

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index e6a9beb..0c8a3a5 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -51,6 +51,7 @@ RECIPE_UPSTREAM_VERSION_pn-cups = "1.6.0"
 RECIPE_UPSTREAM_DATE_pn-cups = "Jul 25, 2012"
 CHECK_DATE_pn-cups = "Aug 28, 2012"
 RECIPE_NO_UPDATE_REASON_pn-db= "API compatibility issue"
+RECIPE_NO_UPDATE_REASON_pn-dbus = "D-BUS 1.7.x is the development version, not stable."
 RECIPE_UPSTREAM_DATE_pn-docbook-sgml-dtd = "May 21, 2010"
 RECIPE_UPSTREAM_VERSION_pn-docbook-sgml-dtd = "4.5"
 CHECK_DATE_pn-docbook-sgml-dtd = "Aug 28, 2012"
-- 
1.7.10.4


