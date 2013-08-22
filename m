Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11ED5E013D6
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 22:53:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 21 Aug 2013 22:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,932,1367996400"; d="scan'208";a="384730496"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.14.105])
	by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2013 22:52:55 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Aug 2013 22:52:54 -0700
Message-Id: <1377150774-3285-2-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1377150774-3285-1-git-send-email-sgw@linux.intel.com>
References: <1377150774-3285-1-git-send-email-sgw@linux.intel.com>
Subject: [PATCH 2/2] upstream_tracking: Update last check dates
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
X-List-Received-Date: Thu, 22 Aug 2013 05:53:01 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index f6aa799..fdb3be0 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -140,7 +140,7 @@ RECIPE_NO_UPDATE_REASON_pn-libpng = "1.4.3 and later changes the API and breaks
 RECIPE_UPSTREAM_VERSION_pn-libsoup = "2.41.90"
 RECIPE_UPSTREAM_VERSION_pn-libpng12 = "1.2.50"
 RECIPE_UPSTREAM_DATE_pn-libpng12 = "Jul 10, 2012"
-CHECK_DATE_pn-libpng12 = "Jun 10, 2013"
+CHECK_DATE_pn-libpng12 = "Aug 21, 2013"
 RECIPE_UPSTREAM_DATE_pn-libsoup = "Feb 19, 2013"
 CHECK_DATE_pn-libsoup = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-libsoup = "2.41.90 is unstable"
@@ -201,9 +201,9 @@ CHECK_DATE_pn-rpm = "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-run-postinsts = "check"
 RECIPE_NO_UPDATE_REASON_pn-sato-screenshot = "PRS Reports Incorrectly"
 RECIPE_NO_UPDATE_REASON_pn-socat = "2.0.0 is beta"
-RECIPE_UPSTREAM_VERSION_pn-sqlite3 = "3.7.14.1"
-RECIPE_UPSTREAM_DATE_pn-sqlite3 = "Oct 22, 2012"
-CHECK_DATE_pn-sqlite3= "Nov 02, 2012"
+RECIPE_UPSTREAM_VERSION_pn-sqlite3 = "3.7.17"
+RECIPE_UPSTREAM_DATE_pn-sqlite3 = "Aug 20, 2013"
+CHECK_DATE_pn-sqlite3= "Aug 21, 2013"
 RECIPE_UPSTREAM_VERSION_pn-squashfs-tools = "4.2"
 RECIPE_UPSTREAM_DATE_pn-squashfs-tools = "Feb 28, 2011"
 CHECK_DATE_pn-squashfs-tools = "Nov 09, 2012"
-- 
1.8.3.1


