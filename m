Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08218E00956; Thu, 21 May 2015 06:29:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC24BE004F6
	for <poky@yoctoproject.org>; Thu, 21 May 2015 06:29:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 21 May 2015 06:29:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,469,1427785200"; d="scan'208";a="733075003"
Received: from theory.fi.intel.com ([10.237.72.51])
	by orsmga002.jf.intel.com with ESMTP; 21 May 2015 06:29:32 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: poky@yoctoproject.org
Date: Thu, 21 May 2015 16:29:36 +0300
Message-Id: <1432214976-32392-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] upstream_tracking.inc: Remove obsolete reasons
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
X-List-Received-Date: Thu, 21 May 2015 13:29:39 -0000

Remove no-update reasons where the mentioned blocking
dependency has already been upgraded or removed.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 1fd04a2..8fb258e 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -55,8 +55,6 @@ RECIPE_NO_UPDATE_REASON_pn-cdrtools = "v3.x uses incompatible CDDL license"
 RECIPE_NO_UPDATE_REASON_pn-createrepo = "Versions after 0.9.* use YUM, so we hold at 0.4.11"
 RECIPE_NO_UPDATE_REASON_pn-db= "API compatibility issue"
 RECIPE_NO_UPDATE_REASON_pn-dbus = "D-BUS 1.9.x is the development version, not stable."
-RECIPE_NO_UPDATE_REASON_pn-gawk = "Version 4.1.0 requires Automake 1.13, but have 1.12.6"
-RECIPE_NO_UPDATE_REASON_pn-glib-networking = "Pending Glib-2.0 Update"
 RECIPE_NO_UPDATE_REASON_pn-gnome-desktop = "waiting for the sato gtk3 port"
 RECIPE_NO_UPDATE_REASON_pn-gnome-icon-theme = "waiting for the sato gtk3 port"
 RECIPE_NO_UPDATE_REASON_pn-gnome-keyring = "waiting for the sato gtk3 port"
@@ -73,8 +71,6 @@ RECIPE_NO_UPDATE_REASON_pn-jpeg = "webkit-gtk 1.8.3 doesn't work with jpeg 9"
 RECIPE_NO_UPDATE_REASON_pn-kernelshark = "0.2 is the latest version."
 RECIPE_NO_UPDATE_REASON_pn-liberation-fonts = "2.00.0 - fontforge package required "
 RECIPE_NO_UPDATE_REASON_pn-libgnome-keyring = "waiting for the sato gtk3 port"
-RECIPE_NO_UPDATE_REASON_pn-libnl = "libnl-3.2.2 is incompatible with libnl2, so no Upgrade"
-RECIPE_NO_UPDATE_REASON_pn-libsoup = "2.41.90 is unstable"
 RECIPE_NO_UPDATE_REASON_pn-libunique = "Do not upgrade to version: 2.91.4 because it requires gtk+ >= 2.90.0 and the stable version of gtk+ used by poky is 2.20.1"
 RECIPE_NO_UPDATE_REASON-libxml2 = "only release candidates available "
 RECIPE_NO_UPDATE_REASON_pn-mx-1.0 = "PRS 1.99 is dev version"
@@ -87,7 +83,6 @@ RECIPE_NO_UPDATE_REASON_pn-qemugl = "Do not upgrade to version: 33466cd8 because
 RECIPE_NO_UPDATE_REASON_pn-syslinux="Waiting for 4.06 for 3.3 kernel headers support"
 RECIPE_NO_UPDATE_REASON_pn-texinfo = "Checking script parses directory wrong"
 RECIPE_NO_UPDATE_REASON_pn-tinylogin = "TinyLogin was merged into BusyBox."
-RECIPE_NO_UPDATE_REASON_pn-vte = "Pending Glib-2.0 Update"
 RECIPE_NO_UPDATE_REASON_pn-webkit-gtk = ">= 1.10.2 needs ruby"
 RECIPE_NO_UPDATE_REASON_pn-xdg-utils = "only release candidates available "
 RECIPE_NO_UPDATE_REASON_pn-zaurusd = "SVN rev 426 is last Stable release"
-- 
2.1.4


