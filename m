Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69D9EE00BB9; Thu, 21 Jan 2016 08:39:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,TVD_SPACE_RATIO,
	TVD_SPACE_RATIO_MINFP autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
	*  2.7 TVD_SPACE_RATIO_MINFP TVD_SPACE_RATIO_MINFP
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49E95E0085A
	for <poky@yoctoproject.org>; Thu, 21 Jan 2016 08:39:47 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 21 Jan 2016 08:39:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,326,1449561600"; d="scan'208";a="865541359"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.intel.com)
	([10.23.219.47])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2016 08:39:47 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 21 Jan 2016 16:40:35 +0000
Message-Id: <1453394435-3847-1-git-send-email-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 1.8.4.5
Subject: [PATCH] maintainers.inc: Correct maintainership for several packages
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
X-List-Received-Date: Thu, 21 Jan 2016 16:39:52 -0000

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index fc9788d..63a9a6e 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -530,6 +530,7 @@ RECIPE_MAINTAINER_pn-pcmanfm = "Alejandro Hernandez <alejandro.hernandez@linux.i
 RECIPE_MAINTAINER_pn-pcmciautils = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-perf = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-perl-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-piglit = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pigz = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pinentry = "Armin Kuster <akuster808@gmail.com>"
@@ -554,6 +555,7 @@ RECIPE_MAINTAINER_pn-pulseaudio = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-pulseaudio-client-conf-sato = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-python = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-async = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-dbus = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-distribute = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
@@ -562,19 +564,24 @@ RECIPE_MAINTAINER_pn-python-git = "Alejandro Hernandez <alejandro.hernandez@linu
 RECIPE_MAINTAINER_pn-python-gitdb = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-imaging = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-mako = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-nose = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-numpy = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-pexpect = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pycairo = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pycurl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pygobject = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pygtk = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pyrex = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-scons = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-scons-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-setuptools = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-smartpm = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-smmap = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-distribute = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-pip = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-setuptools = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-native = "Cristian Iorga <cristian.iorga@intel.com>"
-- 
1.8.4.5


