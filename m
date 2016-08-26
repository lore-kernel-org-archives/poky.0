Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBA4AE00BC1; Fri, 26 Aug 2016 07:32:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4534DE00BC1
	for <poky@yoctoproject.org>; Fri, 26 Aug 2016 07:32:40 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 26 Aug 2016 07:32:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,581,1464678000"; d="scan'208";a="161298140"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.49])
	by fmsmga004.fm.intel.com with ESMTP; 26 Aug 2016 07:32:22 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 26 Aug 2016 17:30:44 +0300
Message-Id: <6f7698490e52b5c0ade1755ca0cb48b25df8c33b.1472221786.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <cover.1472221786.git.alexander.kanavin@linux.intel.com>
References: <cover.1472221786.git.alexander.kanavin@linux.intel.com>
Subject: [PATCH 1/2] maintainers.inc: rename gtk-doc-stub to gtk-doc, reassign to me
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
X-List-Received-Date: Fri, 26 Aug 2016 14:32:42 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index b676c14..8b85665 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -262,7 +262,7 @@ RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-ugly = "Maxin B. John <maxin.john@inte
 RECIPE_MAINTAINER_pn-gstreamer1.0-rtsp-server = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-gtk+ = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gtk+3 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-gtk-doc-stub = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-gtk-doc = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-engines = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-icon-utils-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-sato-engine = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-- 
2.9.3


