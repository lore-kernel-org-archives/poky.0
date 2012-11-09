Return-Path: <radu.moisan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B9FFE003DA
	for <poky@yoctoproject.org>; Fri,  9 Nov 2012 02:25:30 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Nov 2012 02:25:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,744,1344236400"; d="scan'208";a="246381059"
Received: from dell-desktop (HELO localhost.localdomain) ([10.237.105.32])
	by fmsmga002.fm.intel.com with ESMTP; 09 Nov 2012 02:25:01 -0800
From: Radu Moisan <radu.moisan@intel.com>
To: poky@yoctoproject.org
Date: Fri,  9 Nov 2012 12:29:28 +0200
Message-Id: <1352456969-17505-1-git-send-email-radu.moisan@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] upstream_tracking: update for 1.4 planning
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
X-List-Received-Date: Fri, 09 Nov 2012 10:25:30 -0000

Updated upstream_tracking.inc, mainly CHECK_DATE.

Signed-off-by: Radu Moisan <radu.moisan@intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index fd422cf..e69a082 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -24,7 +24,7 @@
 #
 RECIPE_UPSTREAM_VERSION_pn-acpid = "1.0.10"
 RECIPE_UPSTREAM_DATE_pn-acpid = "Apr 22, 2009"
-CHECK_DATE_pn-acpid = "Aug 27, 2012"
+CHECK_DATE_pn-acpid = "Nov 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-adt-installer = "1.1"
 CHECK_DATE_pn-adt-installer = "Sep 11, 2012"
 RECIPE_UPSTREAM_DATE_pn-alsa-utils="Jan 25, 2012"
@@ -62,7 +62,7 @@ RECIPE_UPSTREAM_DATE_pn-bdwc = "Aug 15, 2012"
 CHECK_DATE_pn-bdwgc = "Aug 27, 2012"
 RECIPE_UPSTREAM_VERSION_pn-beecrypt = "4.2.1"
 RECIPE_UPSTREAM_DATE_pn-beecrypt = "Jul 12, 2009"
-CHECK_DATE_pn-beecrypt = "Aug 27, 2012"
+CHECK_DATE_pn-beecrypt = "Nov 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-bigreqsproto= "1.1.1"
 RECIPE_UPSTREAM_DATE_pn-bigreqsproto= "Feb 25, 2011"
 CHECK_DATE_pn-bigreqsproto= "Aug 27, 2012"
@@ -1016,7 +1016,7 @@ CHECK_DATE_pn-nfs-utils = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-nfs-utils = "May 14, 2012"
 RECIPE_UPSTREAM_DATE_pn-ocf-linux = "Jan 27, 2012"
 RECIPE_UPSTREA_VERSION_pn-ocf-linux = "20120107"
-CHECK_DATE_pn-ocf-linux = "Aug 31, 2012"
+CHECK_DATE_pn-ocf-linux = "Nov 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-ofono = "1.6"
 RECIPE_UPSTREAM_DATE_pn-ofono="Apr 20, 2012"
 CHECK_DATE_pn-ofono = "Aug 31, 2012"
@@ -1226,7 +1226,7 @@ RECIPE_UPSTREAM_VERSION_pn-sed = "4.2"
 CHECK_DATE_pn-sed = "Sep 03, 2012"
 RECIPE_UPSTREAM_DATE_pn-sed = "Apr 30, 2009"
 RECIPE_UPSTREAM_VERSION_pn-setserial = "2.17"
-CHECK_DATE_pn-setserial = "Sep 03, 2012"
+CHECK_DATE_pn-setserial = "Nov 09, 2012"
 RECIPE_UPSTREAM_DATE_pn-setserial = "Feb 09, 2000"
 RECIPE_UPSTREAM_VERSION_pn-settings-daemon = "3.4.2"
 RECIPE_UPSTREAM_DATE_pn-settings-daemon = "May 15, 2012"
@@ -1258,7 +1258,7 @@ RECIPE_UPSTREAM_DATE_pn-sqlite3 = "Jun 11, 2012"
 CHECK_DATE_pn-sqlite3= "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-squashfs-tools = "4.2"
 RECIPE_UPSTREAM_DATE_pn-squashfs-tools = "Feb 28, 2011"
-CHECK_DATE_pn-squashfs-tools = "Sep 03, 2012"
+CHECK_DATE_pn-squashfs-tools = "Nov 09, 2012"
 RECIPE_UPSTREAM_DATE_pn-startup-notification = "May 16, 2011"
 RECIPE_UPSTREAM_VERSION_pn-startup-notification = "0.12"
 CHECK_DATE_pn-startup-notification = "Sep 03, 2012"
@@ -1390,7 +1390,7 @@ RECIPE_UPSTREAM_DATE_pn-vte="May 30, 2012"
 CHECK_DATE_pn-vte = "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-watchdog = "5.12"
 RECIPE_UPSTREAM_DATE_pn-watchdog = "Apr 05, 2012"
-CHECK_DATE_pn-watchdog = "Sep 03, 2012"
+CHECK_DATE_pn-watchdog = "Nov 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-wbxml2 = "0.10.8"
 RECIPE_UPSTREAM_DATE_pn-wbxml2 = "Jul 06, 2010"
 CHECK_DATE_pn-wbxml2 = "Sep 03, 2012"
-- 
1.7.9.5


