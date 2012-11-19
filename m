Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 882F6E00348
	for <poky@yoctoproject.org>; Sun, 18 Nov 2012 21:56:15 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2012 21:55:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,276,1352102400"; d="scan'208";a="221530603"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.202])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2012 21:56:14 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Sun, 18 Nov 2012 21:56:14 -0800
Message-Id: <1353304574-15072-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH] maintainers: Tweak ownership of recipes
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
X-List-Received-Date: Mon, 19 Nov 2012 05:56:15 -0000

hwlatdetect -> Darren Hart
lttng-modules -> Bogdan Marinescu
mtdev -> Ross Burton

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 5ea4531..18efb4a 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -274,7 +274,7 @@ RECIPE_MAINTAINER_pn-help2man-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-hicolor-icon-theme = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-hostap-conf = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-hostap-utils = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-hwlatdetect = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-hwlatdetect = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-icecc-create-env-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-icon-naming-utils-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-icu = "Scott Garman <scott.a.garman@intel.com>"
@@ -494,7 +494,7 @@ RECIPE_MAINTAINER_pn-lsof = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-ltp = "Mihai Lindner <mihaix.lindner@linux.intel.com>"
 RECIPE_MAINTAINER_pn-lttng2-ust = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-lttng-control = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-RECIPE_MAINTAINER_pn-lttng-modules = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-lttng-modules = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-lttng-tools = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-lttng-ust = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-lttng-viewer = "Valentin Popa <valentin.popa@intel.com>"
@@ -554,7 +554,7 @@ RECIPE_MAINTAINER_pn-mpeg2dec = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mpfr = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-msmtp = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-msynctool = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-mtdev = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-mtdev = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mtd-utils = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-mtools = "Scott Garman <scott.a.garman@intel.com>"
 RECIPE_MAINTAINER_pn-mutter = "Valentin Popa <valentin.popa@intel.com>"
-- 
1.7.7.6


