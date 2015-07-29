Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB7DCE00A64; Wed, 29 Jul 2015 12:23:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 573C8E00992
	for <poky@yoctoproject.org>; Wed, 29 Jul 2015 12:23:58 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 29 Jul 2015 12:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,572,1432623600"; d="scan'208";a="615418775"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.5.54])
	by orsmga003.jf.intel.com with ESMTP; 29 Jul 2015 12:23:36 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 29 Jul 2015 14:23:40 -0500
Message-Id: <1438197820-23238-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH] distro/maintainers.inc: Fix parsing error due to lack of " at end.
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
X-List-Received-Date: Wed, 29 Jul 2015 19:23:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 7163b75..ebea972 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -229,7 +229,7 @@ RECIPE_MAINTAINER_pn-hicolor-icon-theme = "Jussi Kukkonen <jussi.kukkonen@intel.
 RECIPE_MAINTAINER_pn-hostap-conf = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-hostap-utils = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-hwlatdetect = "Darren Hart <dvhart@linux.intel.com>"
-RECIPE_MAINTAINER_pn-icecc-create-env-native = "Ross Burton <ross.burton@intel.com>
+RECIPE_MAINTAINER_pn-icecc-create-env-native = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-icu = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-initramfs-boot = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-initramfs-framework = "Ross Burton <ross.burton@intel.com>"
@@ -389,7 +389,7 @@ RECIPE_MAINTAINER_pn-libxxf86misc = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libxxf86vm = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-lighttpd = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-linuxdoc-tools = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-RECIPE_MAINTAINER_pn-linux-dummy = "Ross Burton <ross.burton@intel.com>
+RECIPE_MAINTAINER_pn-linux-dummy = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-linux-firmware = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-linux-libc-headers = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-libc-headers-yocto = "Bruce Ashfield <bruce.ashfield@windriver.com>"
@@ -589,7 +589,7 @@ RECIPE_MAINTAINER_pn-rpmresolve = "Paul Eggleton <paul.eggleton@linux.intel.com>
 RECIPE_MAINTAINER_pn-rsync = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-rt-tests = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-run-postinsts = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-rxvt-unicode = "Ross Burton <ross.burton@intel.com>
+RECIPE_MAINTAINER_pn-rxvt-unicode = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-sato-icon-theme = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sato-screenshot = "Jussi Kukkonen <jussi.jukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-sbc = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
-- 
1.9.1


