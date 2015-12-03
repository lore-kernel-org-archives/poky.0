Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 657B8E0090E; Thu,  3 Dec 2015 06:37:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EB7CE0086A
	for <poky@yoctoproject.org>; Thu,  3 Dec 2015 06:37:16 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 03 Dec 2015 06:37:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,378,1444719600"; d="scan'208";a="699522967"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 03 Dec 2015 06:37:08 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Dec 2015 16:34:28 +0200
Message-Id: <61d2f27736d6bf9efad69ff7e92949f9d5d321dc.1449152326.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.6.2
In-Reply-To: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
References: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
In-Reply-To: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
References: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
Subject: [PATCH 1/3] maintainers.inc: drop qt4 references
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
X-List-Received-Date: Thu, 03 Dec 2015 14:37:20 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 6fd83e7..2148801 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -172,7 +172,6 @@ RECIPE_MAINTAINER_pn-fontconfig = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-fontsproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-foomatic-filters = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-formfactor = "Maxin B. John <maxin.john@intel.com>"
-RECIPE_MAINTAINER_pn-fotowall = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-freetype = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-fstests = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gawk = "Chen Qi <Qi.Chen@windriver.com>"
@@ -452,7 +451,6 @@ RECIPE_MAINTAINER_pn-mesa-demos = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-mesa-gl = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-meta-ide-support = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-meta-toolchain = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-meta-toolchain-qte = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-mingetty = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-mini-x-session = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-minicom = "Maxin B. John <maxin.john@intel.com>"
@@ -471,9 +469,7 @@ RECIPE_MAINTAINER_pn-mtdev = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-mtools = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-mx-1.0 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-nasm = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-nativesdk-packagegroup-qte-toolchain-host = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-nativesdk-qemu-helper = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-nativesdk-qt4-tools = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-ncurses = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-neard = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-neon = "Maxin B. John <maxin.john@intel.com>"
@@ -512,8 +508,6 @@ RECIPE_MAINTAINER_pn-packagegroup-core-directfb = "Ross Burton <ross.burton@inte
 RECIPE_MAINTAINER_pn-packagegroup-core-full-cmdline = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-lsb = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-nfs = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-packagegroup-core-qt = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-packagegroup-core-qt4e = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-sdk = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-ssh-dropbear = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-ssh-openssh = "Ross Burton <ross.burton@intel.com>"
@@ -525,7 +519,6 @@ RECIPE_MAINTAINER_pn-packagegroup-core-x11 = "Ross Burton <ross.burton@intel.com
 RECIPE_MAINTAINER_pn-packagegroup-core-x11-base = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-x11-sato = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-x11-xserver = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-packagegroup-qte-toolchain-target = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-self-hosted = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-pango = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-parted = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -585,14 +578,6 @@ RECIPE_MAINTAINER_pn-python3-distribute = "Alejandro Hernandez <alejandro.hernan
 RECIPE_MAINTAINER_pn-python3-setuptools = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-native = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-qmmp = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-qt-demo-init = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-qt4-embedded = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-qt4-graphics-system = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-qt4-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-qt4-x11-free = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-qt4e-demo-image = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-quicky = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-quilt = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-quota = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-randrproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-- 
2.6.2


