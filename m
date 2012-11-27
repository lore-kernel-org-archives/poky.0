Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC30DE011AF
	for <poky@yoctoproject.org>; Tue, 27 Nov 2012 14:34:33 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Nov 2012 14:33:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,174,1355126400"; d="scan'208";a="225366291"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 27 Nov 2012 14:34:33 -0800
Received: from mlindnex-mobl1.ger.corp.intel.com (unknown [10.252.122.251])
	by linux.intel.com (Postfix) with ESMTP id BECB62C8001;
	Tue, 27 Nov 2012 14:34:31 -0800 (PST)
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 28 Nov 2012 00:34:30 +0200
Message-Id: <1354055670-5964-1-git-send-email-mihaix.lindner@linux.intel.com>
X-Mailer: git-send-email 1.8.0
Subject: [PATCH] upstream_tracking.inc: ltp and connman
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
X-List-Received-Date: Tue, 27 Nov 2012 22:34:34 -0000

Had my eyes in these areas lately and updates to upstream_tracking
were in order.

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 8680eab..1b3ddad 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -137,9 +137,9 @@ RECIPE_UPSTREAM_VERSION_pn-compositeproto = "0.4.2"
 RECIPE_UPSTREAM_DATE_pn-compositeproto = "Oct 29, 2010"
 CHECK_DATE_pn-compositeproto = "Aug 28, 2012"
 RECIPE_UPSTREAM_DATE_pn-connman-gnome="Aug 28, 2012"
-RECIPE_UPSTREAM_VERSION_pn-connman = "1.6"
-RECIPE_UPSTREAM_DATE_pn-connman="Aug 22, 2012"
-CHECK_DATE_pn-connman = "Aug 28, 2012"
+RECIPE_UPSTREAM_VERSION_pn-connman = "1.9"
+RECIPE_UPSTREAM_DATE_pn-connman="Oct 26, 2012"
+CHECK_DATE_pn-connman = "Nov 27, 2012"
 RECIPE_UPSTREAM_VERSION_pn-console-tools = "0.3.2"
 RECIPE_UPSTREAM_DATE_pn-console-tools = "Feb 18, 2002"
 CHECK_DATE_pn-console-tools = "Nov 02, 2012"
@@ -926,7 +926,7 @@ CHECK_DATE_pn-lsof = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-lsof = "Apr 10, 2012"
 RECIPE_UPSTREAM_VERSION_pn-ltp = "20120903"
 RECIPE_UPSTREAM_DATE_pn-ltp = "Sep 3, 2012"
-CHECK_DATE_pn-ltp = "Sep 5, 2012"
+CHECK_DATE_pn-ltp = "Nov 27, 2012"
 RECIPE_UPSTREAM_DATE_pn-lttng-ust = "Dec 15, 2011"
 RECIPE_UPSTREAM_VERSION_pn-lzo = "2.06"
 RECIPE_UPSTREAM_DATE_pn-lzo = "Aug 12, 2011"
-- 
1.8.0


