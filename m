Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4970CE00894; Wed, 21 Jan 2015 06:00:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAC88E0086E
	for <poky@yoctoproject.org>; Wed, 21 Jan 2015 06:00:45 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2015 06:00:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="443186429"
Received: from unknown (HELO swold-mobl5.amr.corp.intel.com) ([10.252.252.118])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Jan 2015 05:47:17 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Jan 2015 06:00:29 -0800
Message-Id: <1421848829-20311-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Subject: [PATCH] maintainers: Clean up a couple items
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
X-List-Received-Date: Wed, 21 Jan 2015 14:00:50 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 0fdd314..e338b82 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -125,7 +125,6 @@ RECIPE_MAINTAINER_pn-damageproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-db = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-dbus = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-dbus-glib = "Chong Lu <Chong.Lu@windriver.com>"
-RECIPE_MAINTAINER_pn-dbus-ptest = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-dbus-test = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-dbus-wait = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-desktop-file-utils-native = "Saul Wold <sgw@linux.intel.com>"
@@ -565,7 +564,6 @@ RECIPE_MAINTAINER_pn-pth = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pulseaudio = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-puzzles = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-python = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-python-argparse = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-async = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-dbus = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-distribute = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-- 
2.1.0


