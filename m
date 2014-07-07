Return-Path: <cristian.iorga@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23485E00744; Mon,  7 Jul 2014 07:38:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1521E006B7
	for <poky@yoctoproject.org>; Mon,  7 Jul 2014 07:38:19 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jul 2014 07:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,618,1400050800"; d="scan'208";a="539746130"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by orsmga001.jf.intel.com with ESMTP; 07 Jul 2014 07:37:56 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Mon,  7 Jul 2014 17:37:45 +0300
Message-Id: <1404743865-11284-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] maintainers.inc: add info for libical
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
X-List-Received-Date: Mon, 07 Jul 2014 14:38:25 -0000

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 4d2f46b..58c2995 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -310,6 +310,7 @@ RECIPE_MAINTAINER_pn-libglade = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libglu = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libgpg-error = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libi18n-collate-perl = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libical = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libice = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libiconv = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libid3tag = "Cristian Iorga <cristian.iorga@intel.com>"
-- 
1.9.1


