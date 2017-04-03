Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83008E00B2E; Mon,  3 Apr 2017 08:27:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_06_12,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C02AE00B23
	for <poky@yoctoproject.org>; Mon,  3 Apr 2017 08:27:16 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP; 03 Apr 2017 08:27:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,270,1486454400"; d="scan'208";a="84090491"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by fmsmga006.fm.intel.com with ESMTP; 03 Apr 2017 08:27:15 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon,  3 Apr 2017 15:26:38 -0700
Message-Id: <20170403222638.13118-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.10.2
Subject: [PATCH] maintainers: change ownership on cve-check-tool, nfs-utils, ttf-bitstream-vera and which
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
X-List-Received-Date: Mon, 03 Apr 2017 15:27:20 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index 752caee..b80565a 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -138,7 +138,7 @@ RECIPE_MAINTAINER_pn-cryptodev-module = "Robert Yang <liezhi.yang@windriver.com>
 RECIPE_MAINTAINER_pn-cryptodev-tests = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-cups = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-curl = "Chen Qi <Qi.Chen@windriver.com>"
-RECIPE_MAINTAINER_pn-cve-check-tool = "Mariano Lopez <mariano.lopez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-cve-check-tool = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-cwautomacros = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-damageproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-db = "Mark Hatle <mark.hatle@windriver.com>"
@@ -536,7 +536,7 @@ RECIPE_MAINTAINER_pn-net-tools = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-netbase = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-nettle = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-nfs-export-root = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-nfs-utils = "Mariano Lopez <mariano.lopez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-nfs-utils = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-npth = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-nspr = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-nss = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -738,7 +738,7 @@ RECIPE_MAINTAINER_pn-tiny-init = "Alexander Kanavin <alexander.kanavin@intel.com
 RECIPE_MAINTAINER_pn-trace-cmd = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-tremor = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-tslib = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Mariano Lopez <mariano.lopez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tzcode-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tzdata = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-u-boot = "Denys Dmytriyenko <denis@denix.org>"
@@ -771,7 +771,7 @@ RECIPE_MAINTAINER_pn-webkitgtk = "Alexander Kanavin <alexander.kanavin@intel.com
 RECIPE_MAINTAINER_pn-weston = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-weston-init = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-wget = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-which = "Mariano Lopez <mariano.lopez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-which = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-wireless-tools = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-wpa-supplicant = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-x11-common = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-- 
2.10.2


