Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F250E009B8; Mon, 29 Jun 2015 03:57:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SUBJ_OBFU_PUNCT_MANY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.7 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D44E5E009B8
	for <poky@yoctoproject.org>; Mon, 29 Jun 2015 03:57:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Jun 2015 03:57:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,698,1427785200"; d="scan'208";a="755044586"
Received: from theory.fi.intel.com ([10.237.72.51])
	by orsmga002.jf.intel.com with ESMTP; 29 Jun 2015 03:57:21 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jun 2015 13:57:55 +0300
Message-Id: <1435575475-25299-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] distro/package_regex.inc: Use GNOME_STABLE rule for vala
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
X-List-Received-Date: Mon, 29 Jun 2015 10:57:24 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index f26bc13..d2542b2 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -157,6 +157,7 @@ REGEX_pn-gtk-engines = "${GNOME2_STABLE}"
 REGEX_pn-glib-networking = "${GNOME_STABLE}"
 REGEX_pn-librsvg = "${GNOME_STABLE}"
 REGEX_pn-libsoup-2.4 = "${GNOME_STABLE}"
+REGEX_pn-vala = "${GNOME_STABLE}"
 
 # not GNOME related but uses same even-minor-release-is-stable logic
 REGEX_pn-dbus = "${GNOME_STABLE}"
-- 
2.1.4


