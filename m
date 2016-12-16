Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB24E00D46; Fri, 16 Dec 2016 07:27:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [134.134.136.20 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 751AEE00D05
	for <poky@yoctoproject.org>; Fri, 16 Dec 2016 07:27:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 16 Dec 2016 07:27:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,358,1477983600"; d="scan'208";a="1082707759"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2016 07:27:23 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 16 Dec 2016 17:27:11 +0200
Message-Id: <20161216152711.1678-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Subject: [PATCH] maintainers.inc: re-assign pcmanfm, so it has same owner as libfm
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
X-List-Received-Date: Fri, 16 Dec 2016 15:27:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index cdf5c72..ab99cea 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -584,7 +584,7 @@ RECIPE_MAINTAINER_pn-pax = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pax-utils = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pbzip2 = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pciutils = "Chen Qi <Qi.Chen@windriver.com>"
-RECIPE_MAINTAINER_pn-pcmanfm = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-pcmanfm = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pcmciautils = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-perf = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
-- 
2.10.2


