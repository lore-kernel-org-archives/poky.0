Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62296E00C39; Wed,  3 Feb 2016 09:50:51 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F983E00B63
	for <poky@yoctoproject.org>; Wed,  3 Feb 2016 09:50:46 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 03 Feb 2016 09:50:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,391,1449561600"; d="scan'208";a="646643777"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.31])
	by FMSMGA003.fm.intel.com with ESMTP; 03 Feb 2016 09:50:27 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  3 Feb 2016 11:52:25 -0600
Message-Id: <1454521945-17531-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [PATCH] maintainers.inc: Set me as Maintainer of QEMU.
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
X-List-Received-Date: Wed, 03 Feb 2016 17:50:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 63a9a6e..09320ab 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -469,7 +469,7 @@ RECIPE_MAINTAINER_pn-mtdev = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-mtools = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-mx-1.0 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-nasm = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-nativesdk-qemu-helper = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-nativesdk-qemu-helper = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ncurses = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-neard = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-neon = "Maxin B. John <maxin.john@intel.com>"
@@ -583,8 +583,8 @@ RECIPE_MAINTAINER_pn-python3-distribute = "Alejandro Hernandez <alejandro.hernan
 RECIPE_MAINTAINER_pn-python3-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-pip = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-setuptools = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-qemu = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-qemu-helper-native = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-qemu = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-qemu-helper-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-quilt = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-quota = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-randrproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-- 
2.1.4


