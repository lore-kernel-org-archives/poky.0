Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0CF1E00AD0; Mon,  7 Aug 2017 04:58:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE13E00A38
	for <poky@yoctoproject.org>; Mon,  7 Aug 2017 04:58:19 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Aug 2017 04:58:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,337,1498546800"; d="scan'208";a="116519328"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 07 Aug 2017 04:58:17 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  7 Aug 2017 14:54:54 +0300
Message-Id: <20170807115455.28815-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.13.2
Subject: [PATCH 1/2] poky-world-exclude.inc: remove recipes from meta-qt4
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
X-List-Received-Date: Mon, 07 Aug 2017 11:58:19 -0000

Now that meta-qt4 isn't used by the autobuilder, there's no need
to exclude broken recipes fron that layer either.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-poky/conf/distro/include/poky-world-exclude.inc | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/meta-poky/conf/distro/include/poky-world-exclude.inc b/meta-poky/conf/distro/include/poky-world-exclude.inc
index a6635b63aa4..1a2dea5859b 100644
--- a/meta-poky/conf/distro/include/poky-world-exclude.inc
+++ b/meta-poky/conf/distro/include/poky-world-exclude.inc
@@ -2,7 +2,3 @@
 # Things we exlude fromw world testing within the reference distro
 #
 
-# qwt from meta-qt4, has poky-lsb QA warnings, qt4 for lsb only
-EXCLUDE_FROM_WORLD_pn-qwt = "1"
-# python-pyqt from meta-qt4 requires sip from meta-oe
-EXCLUDE_FROM_WORLD_pn-python-pyqt = "1"
-- 
2.13.2


