Return-Path: <constantinx.musca@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BDA0E0047F
	for <poky@yoctoproject.org>; Mon,  7 Jan 2013 01:19:17 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jan 2013 01:19:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,423,1355126400"; d="scan'208";a="270758166"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jan 2013 01:19:13 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Mon,  7 Jan 2013 11:19:52 +0200
Message-Id: <1357550392-8744-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH] libgdata: finalize recipe removal
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
X-List-Received-Date: Mon, 07 Jan 2013 09:19:17 -0000

Part of the sato trimming process

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc       | 1 -
 meta-yocto/conf/distro/include/recipe_color.inc      | 1 -
 meta-yocto/conf/distro/include/upstream_tracking.inc | 3 ---
 3 files changed, 5 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index b0246b7..9af30d2 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -351,7 +351,6 @@ RECIPE_MAINTAINER_pn-libfribidi = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libgalago = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libgcc = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libgcrypt = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libgdata = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libgdbus = "Scott Garman <scott.a.garman@intel.com>"
 RECIPE_MAINTAINER_pn-libglade = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libglu = "Saul Wold <sgw@linux.intel.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 894c76a..775f375 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -168,7 +168,6 @@ RECIPE_COLOR_pn-libfontenc = "yellow"
 RECIPE_COLOR_pn-libfribidi = "red"
 RECIPE_COLOR_pn-libgalago = "red"
 RECIPE_COLOR_pn-libgcrypt = "yellow"
-RECIPE_COLOR_pn-libgdata = "red"
 RECIPE_COLOR_pn-libgdbus = "yellow"
 RECIPE_COLOR_pn-libglade = "yellow"
 RECIPE_COLOR_pn-libgnomecanvas = "red"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 1b3ddad..5f7b27d 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -591,9 +591,6 @@ CHECK_DATE_pn-libgcc = "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libgcrypt = "1.5.0"
 RECIPE_UPSTREAM_DATE_pn-libgcrypt = "Jun 6, 2011"
 CHECK_DATE_pn-libgcrypt = "Aug 30, 2012"
-RECIPE_UPSTREAM_VERSION_pn-libgdata = "0.12.0"
-RECIPE_UPSTREAM_DATE_pn-libgdata = "Apr 02, 2012"
-CHECK_DATE_pn-libgdata = "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libgdbus = "0.2"
 CHECK_DATE_pn-libgdbus = "Aug 30, 2012"
 RECIPE_UPSTREAM_DATE_pn-libgdbus = "Sep 01, 2008"
-- 
1.7.11.7


