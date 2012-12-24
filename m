Return-Path: <constantinx.musca@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 860DCE01471
	for <poky@yoctoproject.org>; Mon, 24 Dec 2012 00:37:51 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Dec 2012 00:37:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,346,1355126400"; d="scan'208";a="184280297"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Dec 2012 00:37:49 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Mon, 24 Dec 2012 10:38:25 +0200
Message-Id: <1356338305-17226-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH 08/20] gthumb: finalize removal
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
X-List-Received-Date: Mon, 24 Dec 2012 08:37:51 -0000

Part of the sato trimming process

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc       | 1 -
 meta-yocto/conf/distro/include/recipe_color.inc      | 1 -
 meta-yocto/conf/distro/include/upstream_tracking.inc | 3 ---
 3 files changed, 5 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index b0246b7..efb5a39 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -251,7 +251,6 @@ RECIPE_MAINTAINER_pn-gst-plugins-base = "Cristian Iorga <cristian.iorga@intel.co
 RECIPE_MAINTAINER_pn-gst-plugins-good = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gst-plugins-ugly = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gstreamer = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gthumb = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-doc-stub-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gtk-doc-stub = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gtk-doc = "Constantin Musca <constantinx.musca@intel.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 894c76a..a8aba62 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -115,7 +115,6 @@ RECIPE_COLOR_pn-gperf = "yellow"
 RECIPE_COLOR_pn-gpgme = "yellow"
 RECIPE_COLOR_pn-grep = "yellow"
 RECIPE_COLOR_pn-groff = "red"
-RECIPE_COLOR_pn-gthumb = "red"
 RECIPE_COLOR_pn-gtk+ = "yellow"
 RECIPE_COLOR_pn-gtk-doc = "red"
 RECIPE_COLOR_pn-gtkhtml2 = "red"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 1b3ddad..7cff274 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -389,9 +389,6 @@ RECIPE_UPSTREAM_VERSION_pn-gst-plugins-ugly = "0.11.90"
 RECIPE_UPSTREAM_VERSION_pn-gstreamer="0.11.90"
 RECIPE_UPSTREAM_DATE_pn-gstreamer="Jan 31, 2011"
 RECIPE_NO_UPDATE_REASON_pn-gstreamer=" not compatible with gst-fluendo 0.10.x "
-RECIPE_UPSTREAM_VERSION_pn-gthumb = "3.0.2"
-RECIPE_UPSTREAM_DATE_pn-gthumb = "Aug 20, 2012"
-CHECK_DATE_pn-gthumb = "Aug 29, 2012"
 RECIPE_UPSTREAM_DATE_pn-gtk-sato-engine = "Feb 01, 2008"
 RECIPE_UPSTREAM_VERSION_pn-gtk+ = "2.24.8"
 RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Do not upgrade to version: 2.99.2 because prefer stable tree"
-- 
1.7.11.7


