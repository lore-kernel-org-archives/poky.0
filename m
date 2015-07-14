Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E1EAE008CE; Tue, 14 Jul 2015 01:26:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37C3DE0086E
	for <poky@yoctoproject.org>; Tue, 14 Jul 2015 01:26:19 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 14 Jul 2015 01:26:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,470,1432623600"; d="scan'208";a="728476324"
Received: from theory.fi.intel.com ([10.237.72.51])
	by orsmga001.jf.intel.com with ESMTP; 14 Jul 2015 01:26:18 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: poky@yoctoproject.org
Date: Tue, 14 Jul 2015 11:27:11 +0300
Message-Id: <1436862431-30031-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] package_regex.inc: Add rules for clutter recipes
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
X-List-Received-Date: Tue, 14 Jul 2015 08:26:23 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index d2542b2..ae677ae 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -158,6 +158,10 @@ REGEX_pn-glib-networking = "${GNOME_STABLE}"
 REGEX_pn-librsvg = "${GNOME_STABLE}"
 REGEX_pn-libsoup-2.4 = "${GNOME_STABLE}"
 REGEX_pn-vala = "${GNOME_STABLE}"
+REGEX_pn-clutter-1.0 = "${GNOME_STABLE}"
+REGEX_pn-clutter-gtk-1.0 = "${GNOME_STABLE}"
+REGEX_pn-clutter-gst-3.0 = "${GNOME_STABLE}"
+REGEX_pn-cogl-1.0 = "${GNOME_STABLE}"
 
 # not GNOME related but uses same even-minor-release-is-stable logic
 REGEX_pn-dbus = "${GNOME_STABLE}"
-- 
2.1.4


