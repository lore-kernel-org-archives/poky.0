Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22869E01409
	for <poky@yoctoproject.org>; Thu, 13 Jun 2013 07:43:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2013 07:44:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,859,1363158000"; d="scan'208";a="349335415"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.13.2])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2013 07:43:52 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 13 Jun 2013 07:43:20 -0700
Message-Id: <1371134601-21490-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [PATCH 1/2] upstream_tracking: Update Manual recipes
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
X-List-Received-Date: Thu, 13 Jun 2013 14:43:50 -0000

Updated:
  Cups
  libpng12
  minicom

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index fe99032..3c53451 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -47,9 +47,9 @@ RECIPE_UPSTREAM_DATE_pn-clutter = "Mar 22, 2012"
 CHECK_DATE_pn-clutter = "Aug 28, 2012"
 RECIPE_UPSTREAM_VERSION_pn-core-image-minimal = "1.0"
 RECIPE_NO_UPDATE_REASON_pn-createrepo = "Versions after 0.9.* use YUM, so we hold at 0.4.11"
-RECIPE_UPSTREAM_VERSION_pn-cups = "1.6.0"
-RECIPE_UPSTREAM_DATE_pn-cups = "Jul 25, 2012"
-CHECK_DATE_pn-cups = "Aug 28, 2012"
+RECIPE_UPSTREAM_VERSION_pn-cups = "1.6.2"
+RECIPE_UPSTREAM_DATE_pn-cups = "Mar 18, 2013"
+CHECK_DATE_pn-cups = "Jun 11, 2013"
 RECIPE_NO_UPDATE_REASON_pn-db= "API compatibility issue"
 RECIPE_NO_UPDATE_REASON_pn-dbus = "D-BUS 1.7.x is the development version, not stable."
 RECIPE_UPSTREAM_DATE_pn-docbook-sgml-dtd = "May 21, 2010"
@@ -137,6 +137,9 @@ CHECK_DATE_pn-libiconv = "Aug 30, 2012"
 RECIPE_NO_UPDATE_REASON_pn-libnl = "libnl-3.2.2 is incompatible with libnl2, so no Upgrade"
 RECIPE_NO_UPDATE_REASON_pn-libpng = "1.4.3 and later changes the API and breaks libmatchbox. Sticking with the 1.2.x series instead"
 RECIPE_UPSTREAM_VERSION_pn-libsoup = "2.41.90"
+RECIPE_UPSTREAM_VERSION_pn-libpng12 = "1.2.50"
+RECIPE_UPSTREAM_DATE_pn-libpng12 = "Jul 10, 2012"
+CHECK_DATE_pn-libpng12 = "Jun 10, 2013"
 RECIPE_UPSTREAM_DATE_pn-libsoup = "Feb 19, 2013"
 CHECK_DATE_pn-libsoup = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-libsoup = "2.41.90 is unstable"
@@ -159,7 +162,7 @@ CHECK_DATE_pn-makedevs = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.2"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 06, 2013"
-CHECK_DATE_pn-minicom = "Apr 30, 2013"
+CHECK_DATE_pn-minicom = "Jun 10, 2013"
 RECIPE_UPSTREAM_DATE_pn-module-init-tools = "Jun 02, 2011"
 RECIPE_UPSTREAM_VERSION_pn-module-init-tools = "3.15"
 CHECK_DATE_pn-module-init-tools = "Aug 31, 2012"
-- 
1.8.1.4


