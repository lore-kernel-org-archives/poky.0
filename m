Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D4BCE00DF7; Wed, 19 Oct 2016 08:30:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4309FE00DF4
	for <poky@yoctoproject.org>; Wed, 19 Oct 2016 08:30:19 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 19 Oct 2016 08:30:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,514,1473145200"; d="scan'208";a="1072697682"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga002.fm.intel.com with ESMTP; 19 Oct 2016 08:30:18 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 19 Oct 2016 18:28:00 +0300
Message-Id: <20161019152800.30832-2-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20161019152800.30832-1-alexander.kanavin@linux.intel.com>
References: <20161019152800.30832-1-alexander.kanavin@linux.intel.com>
Subject: [PATCH 2/2] maintainers.inc: remove SGML recipes
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
 meta-poky/conf/distro/include/maintainers.inc | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index 466f50f..3b58923 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -159,11 +159,6 @@ RECIPE_MAINTAINER_pn-distcc = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-distcc-config = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-dmidecode = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-dmxproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-docbook-dsssl-stylesheets-native = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-docbook-sgml-dtd-3.1-native = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-docbook-sgml-dtd-4.1-native = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-docbook-sgml-dtd-4.5-native = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-docbook-utils-native = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-docbook-xml-dtd4 = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-docbook-xsl-stylesheets = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-dosfstools = "Dengke Du <dengke.du@windriver.com>"
@@ -465,7 +460,6 @@ RECIPE_MAINTAINER_pn-linux-yocto = "Bruce Ashfield <bruce.ashfield@windriver.com
 RECIPE_MAINTAINER_pn-linux-yocto-dev = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-rt = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-tiny = "Bruce Ashfield <bruce.ashfield@windriver.com>"
-RECIPE_MAINTAINER_pn-linuxdoc-tools-native = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-logrotate = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-lrzsz = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-lsb = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -549,8 +543,6 @@ RECIPE_MAINTAINER_pn-nss = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-nss-myhostname = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-ofono = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-oh-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-openjade-native = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-opensp = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-openssh = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-openssl = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-opkg = "Alejandro del Castillo <alejandro.delcastillo@ni.com>"
@@ -695,10 +687,6 @@ RECIPE_MAINTAINER_pn-sed = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-serf = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-setserial = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-settings-daemon = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-sgml-common = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-sgml-common-native = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-sgmlspl = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-sgmlspl-native = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-shadow = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-shadow-securetty = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-shadow-sysroot = "Chen Qi <Qi.Chen@windriver.com>"
-- 
2.9.3


