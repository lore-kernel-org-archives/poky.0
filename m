Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D3D2E00948; Thu,  3 Dec 2015 06:37:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 311E7E0088C
	for <poky@yoctoproject.org>; Thu,  3 Dec 2015 06:37:17 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 03 Dec 2015 06:37:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,378,1444719600"; d="scan'208";a="699522970"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 03 Dec 2015 06:37:08 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Dec 2015 16:34:29 +0200
Message-Id: <6990a303ca8059a681739dcb66377a77c184b625.1449152326.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.6.2
In-Reply-To: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
References: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
In-Reply-To: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
References: <cover.1449152326.git.alexander.kanavin@linux.intel.com>
Subject: [PATCH 2/3] poky-tiny.conf: drop qt4 references
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
X-List-Received-Date: Thu, 03 Dec 2015 14:37:22 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index b0227de..c6f6711 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -137,7 +137,6 @@ PNBLACKLIST[core-image-sato] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-sato-dev] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
-PNBLACKLIST[qt4e-demo-image] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
 
 # Disable python usage in opkg-utils since it won't build with tiny config
-- 
2.6.2


