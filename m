Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C6BE006EA
	for <poky@yoctoproject.org>; Thu,  5 Jul 2012 11:02:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Jul 2012 11:02:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="167463334"
Received: from miles.jf.intel.com (HELO localhost) ([10.7.199.51])
	by orsmga002.jf.intel.com with ESMTP; 05 Jul 2012 11:02:52 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu,  5 Jul 2012 11:02:49 -0700
Message-Id: <515057face79c4c5d28560aafff517ff9c1d17b0.1341511275.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1341511275.git.scott.a.garman@intel.com>
References: <cover.1341511275.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1341511275.git.scott.a.garman@intel.com>
References: <cover.1341511275.git.scott.a.garman@intel.com>
Subject: [PATCH 1/2] upstream_tracking.inc: recipe upgrades and manual check updates
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
X-List-Received-Date: Thu, 05 Jul 2012 18:02:52 -0000

Updated gzip and sudo to reflect recent recipe upgrades.

Updated manual check information for e2fsprogs, chrpath, opensp,
expat, nfs-utils, and libpng.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |   30 +++++++++++---------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index fa46a5a..0de5313 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -105,7 +105,7 @@ RECIPE_NO_UPDATE_REASON_pn-cdrtools = "v3.x uses incompatible CDDL license"
 RECIPE_UPSTREAM_VERSION_pn-chkconfig = "1.3.58"
 CHECK_DATE_pn-chkconfig = "Mar 14, 2012"
 RECIPE_UPSTREAM_VERSION_pn-chrpath = "0.14"
-CHECK_DATE_pn-chrpath = "Apr 20, 2012"
+CHECK_DATE_pn-chrpath = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-chrpath = "Sep 27, 2011"
 RECIPE_UPSTREAM_VERSION_pn-claws-plugin-gtkhtml2-viewer = "0.27"
 RECIPE_UPSTREAM_VERSION_pn-clipboard-manager = "0.6.8"
@@ -181,9 +181,9 @@ RECIPE_UPSTREAM_DATE_pn-dri2proto = "Jun 29, 2011"
 RECIPE_UPSTREAM_VERSION_pn-dropbear = "2011.54"
 RECIPE_UPSTREAM_DATE_pn-dropbear = "Nov 08, 2011"
 RECIPE_UPSTREAM_VERSION_pn-dtc = "37c0b6a0916c31a5eae0a9ddfcc5d0b8fb4569c6"
-RECIPE_UPSTREAM_VERSION_pn-e2fsprogs = "1.42.2"
-CHECK_DATE_pn-e2fsprogs = "Apr 20, 2012"
-RECIPE_UPSTREAM_DATE_pn-e2fsprogs = "Mar 28, 2012"
+RECIPE_UPSTREAM_VERSION_pn-e2fsprogs = "1.42.4"
+CHECK_DATE_pn-e2fsprogs = "Jul 05, 2012"
+RECIPE_UPSTREAM_DATE_pn-e2fsprogs = "Jun 12, 2012"
 RECIPE_UPSTREAM_VERSION_pn-ed = "1.6"
 RECIPE_UPSTREAM_DATE_pn-ed = "Jan 01, 2012"
 RECIPE_UPSTREAM_VERSION_pn-eds-tools = "git"
@@ -208,7 +208,7 @@ RECIPE_UPSTREAM_VERSION_pn-evieext="1.1.0"
 RECIPE_UPSTREAM_DATE_pn-evieext="Aug 26, 2009"
 RECIPE_UPSTREAM_DATE_pn-evolution-data-server = "Jun 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-expat = "2.0.1"
-CHECK_DATE_pn-expat = "Apr 20, 2012"
+CHECK_DATE_pn-expat = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-expat = "Jun 5, 2007"
 RECIPE_UPSTREAM_VERSION_pn-farsight2 = "0.0.20"
 RECIPE_UPSTREAM_VERSION_pn-file = "5.11"
@@ -314,8 +314,8 @@ RECIPE_UPSTREAM_VERSION_pn-gupnp = "0.16.1"
 RECIPE_UPSTREAM_DATE_pn-gupnp= "Apr 30, 2011"
 RECIPE_UPSTREAM_VERSION_pn-gypsy="0.8"
 RECIPE_UPSTREAM_DATE_pn-gypsy="Jun 09, 2010"
-RECIPE_UPSTREAM_VERSION_pn-gzip = "1.4"
-RECIPE_UPSTREAM_DATE_pn-gzip = "Jan 20, 2010"
+RECIPE_UPSTREAM_VERSION_pn-gzip = "1.5"
+RECIPE_UPSTREAM_DATE_pn-2zip = "Jun 17, 2012"
 RECIPE_UPSTREAM_DATE_pn-hal-info = "Nov 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-hal = "0.5.14"
 RECIPE_UPSTREAM_DATE_pn-hal = "Nov 01, 2009"
@@ -500,9 +500,9 @@ RECIPE_UPSTREAM_DATE_pn-libpciaccess = "Apr 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libpcre = "8.21"
 CHECK_DATE_pn-libpcre = "Feb 01, 2012"
 RECIPE_NO_UPDATE_REASON_pn-libpng = "1.4.3 and later changes the API and breaks libmatchbox. Sticking with the 1.2.x series instead"
-RECIPE_UPSTREAM_VERSION_pn-libpng = "1.5.10"
-RECIPE_UPSTREAM_DATE_pn-libpng = "Mar 29, 2012"
-CHECK_DATE_pn-libpng = "May 7, 2012"
+RECIPE_UPSTREAM_VERSION_pn-libpng = "1.5.11"
+RECIPE_UPSTREAM_DATE_pn-libpng = "Jun 14, 2012"
+CHECK_DATE_pn-libpng = "Jul 05, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libproxy="0.4.6"
 CHECK_DATE_pn-libproxy = "Jan 30, 2011"
 RECIPE_UPSTREAM_DATE_pn-libproxy="Sep 01, 2010"
@@ -706,7 +706,9 @@ RECIPE_UPSTREAM_DATE_pn-neon="May 03, 2011"
 RECIPE_UPSTREAM_VERSION_pn-net-tools = "1.60-23"
 RECIPE_UPSTREAM_VERSION_pn-netbase = "4.46"
 RECIPE_UPSTREAM_DATE_pn-netbase = "Jun 06, 2011"
-RECIPE_UPSTREAM_DATE_pn-nfs-utils = "Feb 01, 2010"
+RECIPE_UPSTREAM_VERSION_pn-nfs-utils = "1.2.6"
+CHECK_DATE_pn-nfs-utils = "Jul 05, 2012"
+RECIPE_UPSTREAM_DATE_pn-nfs-utils = "May 14, 2012"
 RECIPE_UPSTREAM_DATE_pn-ocf-linux = "Jan 27, 2012"
 RECIPE_UPSTREAM_VERSION_pn-ofono = "1.6"
 RECIPE_UPSTREAM_DATE_pn-ofono="Apr 20, 2012"
@@ -716,7 +718,7 @@ RECIPE_UPSTREAM_DATE_pn-openjade = "Dec 01, 2002"
 RECIPE_UPSTREAM_VERSION_pn-openobex = "1.5"
 RECIPE_UPSTREAM_VERSION_pn-opensp = "1.5.2"
 RECIPE_UPSTREAM_DATE_pn-opensp = "Dec 23, 2005"
-CHECK_DATE_pn-opensp = "May 7, 2012"
+CHECK_DATE_pn-opensp = "Jul 05, 2012"
 RECIPE_UPSTREAM_VERSION_pn-openssh = "6.0p1"
 RECIPE_UPSTREAM_DATE_pn-openssh = "Apr 22, 2012"
 RECIPE_UPSTREAM_VERSION_pn-openssl = "1.0.1b"
@@ -884,8 +886,8 @@ CHECK_DATE_pn-strace = "Apr 25, 2012"
 RECIPE_UPSTREAM_DATE_pn-strace = "Mar 15, 2011"
 RECIPE_UPSTREAM_VERSION_pn-subversion = "1.6.15"
 CHECK_DATE_pn-subversion = "Jan 25, 2011"
-RECIPE_UPSTREAM_VERSION_pn-sudo = "1.8.4p4"
-RECIPE_UPSTREAM_DATE_pn-sudo = "Mar 12, 2012"
+RECIPE_UPSTREAM_VERSION_pn-sudo = "1.8.5p2"
+RECIPE_UPSTREAM_DATE_pn-sudo = "May 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-sysfsutils = "2.1.0"
 CHECK_DATE_pn-sysfsutils = "Jun 22, 2012"
 RECIPE_UPSTREAM_DATE_pn-sysfsutils = "Aug 23, 2006"
-- 
1.7.9.5


