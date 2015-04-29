Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F6E6E0095D; Wed, 29 Apr 2015 10:45:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	TVD_SPACE_RATIO,TVD_SPACE_RATIO_MINFP autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
	*  2.7 TVD_SPACE_RATIO_MINFP TVD_SPACE_RATIO_MINFP
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1656BE007B9
	for <poky@yoctoproject.org>; Wed, 29 Apr 2015 10:45:37 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2015 10:45:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,671,1422950400"; d="scan'208";a="702838645"
Received: from theory.fi.intel.com ([10.237.72.51])
	by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2015 10:45:36 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: poky@yoctoproject.org
Date: Wed, 29 Apr 2015 20:44:47 +0300
Message-Id: <1430329487-26614-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] upstream_tracking.inc: Add no-update reason for fontconfig
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
X-List-Received-Date: Wed, 29 Apr 2015 17:45:41 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 1fd04a2..4b348f8 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -93,3 +93,4 @@ RECIPE_NO_UPDATE_REASON_pn-xdg-utils = "only release candidates available "
 RECIPE_NO_UPDATE_REASON_pn-zaurusd = "SVN rev 426 is last Stable release"
 RECIPE_NO_UPDATE_REASON_pn-tremor = "Same revision on different SVN modules"
 RECIPE_NO_UPDATE_REASON_pn-gdk-pixbuf = "2.31.x is unstable"
+RECIPE_NO_UPDATE_REASON_fontconfig = "2.11.9x is unstable series"
-- 
2.1.4


