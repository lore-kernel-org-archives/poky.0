Return-Path: <valentin.popa@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B445E0086A
	for <poky@yoctoproject.org>; Tue, 18 Feb 2014 09:00:55 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Feb 2014 08:56:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,502,1389772800"; d="scan'208";a="485285935"
Received: from vpopa-desktop.rb.intel.com ([10.237.105.47])
	by orsmga002.jf.intel.com with ESMTP; 18 Feb 2014 09:00:27 -0800
From: Valentin Popa <valentin.popa@intel.com>
To: poky@yoctoproject.org
Date: Tue, 18 Feb 2014 19:00:25 +0200
Message-Id: <1392742825-6589-1-git-send-email-valentin.popa@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH] gtk+3: update RECIPE_NO_UPDATE_REASON
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
X-List-Received-Date: Tue, 18 Feb 2014 17:00:56 -0000

gtk+3 3.11.5 needs glib-2.0 >= 2.39.0 (which is unstable)
Let's wait for glib 2.40.

Signed-off-by: Valentin Popa <valentin.popa@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index d80ede4..35a87e7 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -91,7 +91,7 @@ RECIPE_NO_UPDATE_REASON_pn-gst-plugins-bad = "not compatible with gst-fluendo 0.
 RECIPE_NO_UPDATE_REASON_pn-gst-plugins-good = "not compatible with gst-fluendo 0.10.x"
 RECIPE_NO_UPDATE_REASON_pn-gst-plugins-ugly = "not compatible with gst-fluendo 0.10.x"
 RECIPE_NO_UPDATE_REASON_pn-gstreamer=" not compatible with gst-fluendo 0.10.x "
-RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Do not upgrade to version: 2.99.2 because prefer stable tree"
+RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Waiting for glib 2.40 (stable)"
 RECIPE_NO_UPDATE_REASON_pn-gtk-doc-stub = "PRS Reports Incorrectly"
 RECIPE_UPSTREAM_VERSION_pn-gtk-engines = "2.91.1"
 RECIPE_UPSTREAM_DATE_pn-gtk-engines = "Oct 9, 2010"
-- 
1.8.3.2


