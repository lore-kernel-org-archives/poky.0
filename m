Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5280E4C81118
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 03:30:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="377275616"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pfqko-0001yO-RI; Thu, 20 Jan 2011 17:24:30 +0800
Message-Id: <d0244254533d906e06860841ecaf99dcb21a5911.1295515302.git.qing.he@intel.com>
In-Reply-To: <cover.1295515302.git.qing.he@intel.com>
References: <cover.1295515302.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 20 Jan 2011 14:41:09 +0800
Date: Thu, 20 Jan 2011 17:24:30 +0800
To: poky@yoctoproject.org
Subject: [PATCH 6/7] zaurusd: upgrade to svn revision 426
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

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    6 +++---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 9f20b52..449124e 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1821,10 +1821,10 @@ RECIPE_LATEST_VERSION_pn-u-boot-mkimage = "2010.03"
 RECIPE_LAST_UPDATE_pn-u-boot-mkimage = "Dec 15, 2009"
 RECIPE_MAINTAINER_pn-u-boot-mkimage = "Qing He <qing.he@intel.com>"
 
-RECIPE_STATUS_pn-zaurusd = "red"
-RECIPE_LATEST_VERSION_pn-zaurusd = "n/a"
+RECIPE_STATUS_pn-zaurusd = "green"
+RECIPE_LATEST_VERSION_pn-zaurusd = "0.0+svnr426"
 DISTRO_PN_ALIAS_pn-zaurusd = "OpenedHand"
-RECIPE_LAST_UPDATE_pn-zaurusd = "Feb 15, 2008"
+RECIPE_LAST_UPDATE_pn-zaurusd = "Jan 20, 2011"
 RECIPE_MAINTAINER_pn-zaurusd = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-yaffs2-utils = "red"
diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index b2609c5..08d5f83 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -191,6 +191,6 @@ SRCREV_pn-xvideo-tests ??= "270"
 SRCREV_pn-x-load ??= "65ed00323f3807197a83abc75d62ed2a8d3f60de"
 SRCDATE_yaffs2-utils-native ??= "20071107"
 SRCDATE_yaffs2-utils ??= "20071107"
-SRCREV_pn-zaurusd ??= "358"
+SRCREV_pn-zaurusd ??= "426"
 SRCREV_pn-zypper ??= "9eb0e248e06c8d20ad054be2439149d9ede37531"
 
diff --git a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
index 75aa0ef..455a29f 100644
--- a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
+++ b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "tslib"
 RDEPENDS_${PN} = "xrandr"
 PV = "0.0+svnr${SRCPV}"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=zaurusd;proto=http"
 
-- 
1.7.0


