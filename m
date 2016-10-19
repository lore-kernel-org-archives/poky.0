Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CCDFE00DF6; Wed, 19 Oct 2016 08:30:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA653E00DF1
	for <poky@yoctoproject.org>; Wed, 19 Oct 2016 08:30:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 19 Oct 2016 08:30:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,514,1473145200"; d="scan'208";a="1072697654"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga002.fm.intel.com with ESMTP; 19 Oct 2016 08:30:16 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 19 Oct 2016 18:27:59 +0300
Message-Id: <20161019152800.30832-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [PATCH 1/2] maintainers.inc: add missing recipes
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
X-List-Received-Date: Wed, 19 Oct 2016 15:30:22 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index db95111..466f50f 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -139,6 +139,7 @@ RECIPE_MAINTAINER_pn-cryptodev-module = "Robert Yang <liezhi.yang@windriver.com>
 RECIPE_MAINTAINER_pn-cryptodev-tests = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-cups = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-curl = "Chen Qi <Qi.Chen@windriver.com>"
+RECIPE_MAINTAINER_pn-cve-check-tool = "Mariano Lopez <mariano.lopez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-cwautomacros = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-damageproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-db = "Mark Hatle <mark.hatle@windriver.com>"
@@ -706,6 +707,7 @@ RECIPE_MAINTAINER_pn-shutdown-desktop = "Alexander Kanavin <alexander.kanavin@in
 RECIPE_MAINTAINER_pn-signing-keys = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-slang = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-socat = "Hongxu Jia <hongxu.jia@windriver.com>"
+RECIPE_MAINTAINER_pn-source-highlight = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-speex = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-speexdsp = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-sqlite3 = "Maxin B. John <maxin.john@intel.com>"
@@ -775,6 +777,7 @@ RECIPE_MAINTAINER_pn-volatile-binds = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-vte = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-waffle = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-watchdog = "Alexander Kanavin <alexander.kanavin@intel.com>"
+RECIPE_MAINTAINER_pn-watchdog-config = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-wayland = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-wayland-protocols = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-webkitgtk = "Alexander Kanavin <alexander.kanavin@intel.com>"
-- 
2.9.3


