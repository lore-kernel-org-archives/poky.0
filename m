Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2F40E00BEB; Fri, 26 Aug 2016 08:38:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_00,TVD_SPACE_RATIO,
	TVD_SPACE_RATIO_MINFP autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
	*  2.5 TVD_SPACE_RATIO_MINFP Space ratio
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Aug 2016 08:38:38 PDT
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 969E7E00BC1
	for <poky@yoctoproject.org>; Fri, 26 Aug 2016 08:38:38 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 26 Aug 2016 08:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,581,1464678000"; 
   d="scan'208";a="1545037"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.49])
	by fmsmga006.fm.intel.com with ESMTP; 26 Aug 2016 08:37:04 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 26 Aug 2016 18:35:27 +0300
Message-Id: <20160826153527.11515-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [PATCH] maintainers.inc: add missing recipes
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
X-List-Received-Date: Fri, 26 Aug 2016 15:38:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index b676c14..aec4e33 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -42,6 +42,7 @@ RECIPE_MAINTAINER_pn-apr-util = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-apt = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-apt-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-argp-standalone = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-asciidoc = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-aspell = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-at = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-at-spi2-atk = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -503,6 +504,7 @@ RECIPE_MAINTAINER_pn-mesa-demos = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-mesa-gl = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-meta-environment = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-meta-environment-extsdk = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-meta-extsdk-toolchain = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-meta-ide-support = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-meta-toolchain = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-meta-world-pkgdata = "Richard Purdie <richard.purdie@linuxfoundation.org>"
@@ -641,6 +643,7 @@ RECIPE_MAINTAINER_pn-python-pyrex = "Alejandro Hernandez <alejandro.hernandez@li
 RECIPE_MAINTAINER_pn-python-scons = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-scons-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-setuptools = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-six = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-smartpm = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-smmap = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
@@ -657,6 +660,7 @@ RECIPE_MAINTAINER_pn-python3-numpy = "Alejandro Hernandez <alejandro.hernandez@l
 RECIPE_MAINTAINER_pn-python3-pip = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-pygobject = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-setuptools = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-six = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-smmap = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
-- 
2.9.3


