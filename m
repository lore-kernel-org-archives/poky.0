Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 28BF04C810B6
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 03:30:27 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="649138151"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pfqko-0001y3-PW; Thu, 20 Jan 2011 17:24:30 +0800
Message-Id: <20618c1e9a5d02ae185118a51a942eb6285fc5de.1295515302.git.qing.he@intel.com>
In-Reply-To: <cover.1295515302.git.qing.he@intel.com>
References: <cover.1295515302.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 20 Jan 2011 14:03:33 +0800
Date: Thu, 20 Jan 2011 17:24:30 +0800
To: poky@yoctoproject.org
Subject: [PATCH 3/7] libnfsidmap: upgrade to version 0.24
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
X-List-Received-Date: Thu, 20 Jan 2011 09:30:27 -0000

from 0.23

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    9 +++------
 .../nfs-utils/files/fix-ac-prereq.patch            |   13 +++++++++++++
 .../{libnfsidmap_0.23.bb => libnfsidmap_0.24.bb}   |    8 +++++---
 3 files changed, 21 insertions(+), 9 deletions(-)
 create mode 100644 meta/recipes-connectivity/nfs-utils/files/fix-ac-prereq.patch
 rename meta/recipes-connectivity/nfs-utils/{libnfsidmap_0.23.bb => libnfsidmap_0.24.bb} (60%)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index be37b76..37f0650 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -524,14 +524,11 @@ RECIPE_INTEL_SECTION_pn-libevent = "base libs"
 RECIPE_LATEST_RELEASE_DATE_pn-libevent = "06/2010"
 
 RECIPE_STATUS_pn-libnfsidmap = "green"
-RECIPE_LAST_UPDATE_pn-libnfsidmap = "Jul 7, 2010"
+RECIPE_LAST_UPDATE_pn-libnfsidmap = "Jan 20, 2011"
 RECIPE_MAINTAINER_pn-libnfsidmap = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-libnfsidmap = "done"
-RECIPE_LATEST_VERSION_pn-libnfsidmap = "0.23"
+RECIPE_LATEST_VERSION_pn-libnfsidmap = "0.24"
 RECIPE_INTEL_SECTION_pn-libnfsidmap = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libnfsidmap = "4 months"
-RECIPE_LATEST_RELEASE_DATE_pn-libnfsidmap = "12/2009"
-RECIPE_COMMENTS_pn-libnfsidmap = ""
+RECIPE_LATEST_RELEASE_DATE_pn-libnfsidmap = "12/2010"
 
 RECIPE_STATUS_pn-acl = "yellow"   # hacky as attr
 RECIPE_LAST_UPDATE_pn-acl = "Jul 29, 2010"
diff --git a/meta/recipes-connectivity/nfs-utils/files/fix-ac-prereq.patch b/meta/recipes-connectivity/nfs-utils/files/fix-ac-prereq.patch
new file mode 100644
index 0000000..2131520
--- /dev/null
+++ b/meta/recipes-connectivity/nfs-utils/files/fix-ac-prereq.patch
@@ -0,0 +1,13 @@
+diff --git a/configure.in b/configure.in
+index f5d54fb..c105988 100644
+--- a/configure.in
++++ b/configure.in
+@@ -1,7 +1,7 @@
+ #                                               -*- Autoconf -*-
+ # Process this file with autoconf to produce a configure script.
+ 
+-AC_PREREQ([2.66])
++AC_PREREQ([2.65])
+ AC_INIT([libnfsidmap],[0.24],[linux-nfs@vger.kernel.org])
+ AC_CONFIG_SRCDIR([nfsidmap.h])
+ AC_CONFIG_MACRO_DIR([m4])
diff --git a/meta/recipes-connectivity/nfs-utils/libnfsidmap_0.23.bb b/meta/recipes-connectivity/nfs-utils/libnfsidmap_0.24.bb
similarity index 60%
rename from meta/recipes-connectivity/nfs-utils/libnfsidmap_0.23.bb
rename to meta/recipes-connectivity/nfs-utils/libnfsidmap_0.24.bb
index 3077ea2..101ecab 100644
--- a/meta/recipes-connectivity/nfs-utils/libnfsidmap_0.23.bb
+++ b/meta/recipes-connectivity/nfs-utils/libnfsidmap_0.24.bb
@@ -6,10 +6,12 @@ LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d9c6a2a0ca6017fda7cd905ed2739b37"
 PR = "r0"
 
-SRC_URI = "http://www.citi.umich.edu/projects/nfsv4/linux/libnfsidmap/${BPN}-${PV}.tar.gz"
+SRC_URI = "http://www.citi.umich.edu/projects/nfsv4/linux/libnfsidmap/${BPN}-${PV}.tar.gz \
+           file://fix-ac-prereq.patch \
+          "
 
-SRC_URI[md5sum] = "28f3ece648c1dc5d25e8d623d55f8bd6"
-SRC_URI[sha256sum] = "69d20cfc6be6bf7ede2a55da687dc6853f2db6c8ef826a0b5e3235e7d46f4051"
+SRC_URI[md5sum] = "d71a1ee9881d5b5814ff3ec41256937d"
+SRC_URI[sha256sum] = "59501432e683336d7a290da13767e92afb5b86f42ea4254041225fe218e8dd47"
 
 inherit autotools
 
-- 
1.7.0


