Return-Path: <constantinx.musca@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2155E01471
	for <poky@yoctoproject.org>; Mon, 24 Dec 2012 00:40:36 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Dec 2012 00:40:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,346,1355126400"; d="scan'208";a="262007672"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by orsmga002.jf.intel.com with ESMTP; 24 Dec 2012 00:40:24 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Mon, 24 Dec 2012 10:41:00 +0200
Message-Id: <1356338460-18381-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH] mutter: finalize mutter removal
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
X-List-Received-Date: Mon, 24 Dec 2012 08:40:36 -0000

Part of the sato trimming process

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc             | 1 -
 meta-yocto/conf/distro/include/poky-floating-revisions.inc | 1 -
 meta-yocto/conf/distro/include/recipe_color.inc            | 1 -
 meta-yocto/conf/distro/include/upstream_tracking.inc       | 3 ---
 4 files changed, 6 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index b0246b7..1d36694 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -557,7 +557,6 @@ RECIPE_MAINTAINER_pn-msynctool = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-mtdev = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mtd-utils = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-mtools = "Scott Garman <scott.a.garman@intel.com>"
-RECIPE_MAINTAINER_pn-mutter = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-mx = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-nasm = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-nativesdk-cmake = "Saul Wold <sgw@linux.intel.com>"
diff --git a/meta-yocto/conf/distro/include/poky-floating-revisions.inc b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
index af8ef11..7a4d9d3 100644
--- a/meta-yocto/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
@@ -52,7 +52,6 @@ SRCREV_pn-clutter-cairo ?= "${AUTOREV}"
 SRCREV_pn-table ?= "${AUTOREV}"
 SRCREV_pn-libmatchbox ?= "${AUTOREV}"
 SRCREV_pn-tasks ?= "${AUTOREV}"
-SRCREV_pn-mutter ?= "${AUTOREV}"
 SRCREV_pn-ofono ?= "${AUTOREV}"
 
 SRCREV_pn-dri2proto = "${AUTOREV}"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 894c76a..d7ccb60 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -289,7 +289,6 @@ RECIPE_COLOR_pn-modutils-initscripts = "yellow"
 RECIPE_COLOR_pn-msynctool = "yellow"
 RECIPE_COLOR_pn-mtd-utils = "yellow"
 RECIPE_COLOR_pn-mtools = "yellow"
-RECIPE_COLOR_pn-mutter = "red"
 RECIPE_COLOR_pn-neon = "yellow"
 RECIPE_COLOR_pn-netbase = "yellow"
 RECIPE_COLOR_pn-nfs-utils = "yellow"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 1b3ddad..22487f9 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -1002,9 +1002,6 @@ RECIPE_UPSTREAM_DATE_pn-mtd-utils = "Dec 17, 2011"
 RECIPE_UPSTREAM_VERSION_pn-mtools = "4.0.17"
 RECIPE_UPSTREAM_DATE_pn-mtools = "Jun 28, 2011"
 CHECK_DATE_pn-mtools = "Aug 31, 2012"
-RECIPE_UPSTREAM_VERSION_pn-mutter = "3.5.5"
-RECIPE_UPSTREAM_DATE_pn-mutter = "Aug 8, 2012"
-CHECK_DATE_pn-mutter = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-nasm= "Aug 18, 2012"
 RECIPE_UPSTREAM_VERSION_pn-nasm="2.10.04"
 CHECK_DATE_pn-nasm = "Aug 31, 2012"
-- 
1.7.11.7


