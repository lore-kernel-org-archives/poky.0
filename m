Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A0C6E00A4F; Tue, 16 Jun 2015 04:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0D07E009E6
	for <poky@yoctoproject.org>; Tue, 16 Jun 2015 04:59:11 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 16 Jun 2015 04:59:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,626,1427785200"; d="scan'208";a="509114651"
Received: from theory.fi.intel.com ([10.237.72.51])
	by FMSMGA003.fm.intel.com with ESMTP; 16 Jun 2015 04:59:09 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: poky@yoctoproject.org
Date: Tue, 16 Jun 2015 14:59:40 +0300
Message-Id: <1434455980-11925-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] distro/package_regex.inc: Fix dbus version pattern
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
X-List-Received-Date: Tue, 16 Jun 2015 11:59:19 -0000

D-Bus version x.y.z is unstable when y is odd.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 4aeae89..f26bc13 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -157,3 +157,8 @@ REGEX_pn-gtk-engines = "${GNOME2_STABLE}"
 REGEX_pn-glib-networking = "${GNOME_STABLE}"
 REGEX_pn-librsvg = "${GNOME_STABLE}"
 REGEX_pn-libsoup-2.4 = "${GNOME_STABLE}"
+
+# not GNOME related but uses same even-minor-release-is-stable logic
+REGEX_pn-dbus = "${GNOME_STABLE}"
+REGEX_pn-dbus-test = "${GNOME_STABLE}"
+
-- 
2.1.4


