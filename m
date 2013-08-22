Return-Path: <cristiana.voicu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06D88E0157A
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 01:54:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Aug 2013 01:54:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,932,1367996400"; d="scan'208";a="390253437"
Received: from cvoicu-vostro-460.rb.intel.com ([10.237.105.72])
	by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2013 01:54:11 -0700
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 22 Aug 2013 11:57:21 +0300
Message-Id: <1377161841-29386-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] upstream_tracking: add NO_UPDATE_REASON for gawk and pango
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
X-List-Received-Date: Thu, 22 Aug 2013 08:54:13 -0000

Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index f6aa799..8f11e31 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -64,6 +64,7 @@ RECIPE_UPSTREAM_DATE_pn-formfactor = "n/a"
 RECIPE_UPSTREAM_VERSION_pn-fstests="0.0+svnr426"
 CHECK_DATE_pn-fstests = "Jul 06, 2011"
 RECIPE_UPSTREAM_VERSION_pn-gaku="0.0+svnr399"
+RECIPE_NO_UPDATE_REASON_pn-gawk = "Version 4.1.0 requires Automake 1.13, but have 1.12.6"
 RECIPE_UPSTREAM_DATE_pn-gaku="Jul 03, 2008"
 CHECK_DATE_pn-gaku = "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-gdk-pixbuf = "2.27.2"
@@ -179,6 +180,7 @@ RECIPE_UPSTREAM_VERSION_pn-opkg = "0.1.8"
 RECIPE_NO_UPDATE_REASON_pn-oprofileui-server = "PRS Reports Incorrectly"
 CHECK_DATE_pn-opkg = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-opkg = "Feb 01, 2010"
+RECIPE_NO_UPDATE_REASON_pn-pango = "Version 1.35.2 requires fontconfig 2.10.91 which is not a stable version"
 RECIPE_NO_UPDATE_REASON_pn-pkgconfig = "removes glib-conf, adds circular depends"
 RECIPE_UPSTREAM_VERSION_pn-pointercal = "0.0"
 RECIPE_UPSTREAM_DATE_pn-pointercal = "n/a"
-- 
1.7.9.5


