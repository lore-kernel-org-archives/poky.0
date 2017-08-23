Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2679E008D2; Wed, 23 Aug 2017 16:06:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64AEBE00349
	for <poky@yoctoproject.org>; Wed, 23 Aug 2017 16:06:41 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Aug 2017 16:06:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,417,1498546800"; d="scan'208";a="303739604"
Received: from kchan19-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.143.150])
	by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2017 16:06:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 24 Aug 2017 11:05:16 +1200
Message-Id: <20170823230516.551-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
Subject: [PATCH] maintainers.inc: fix pn- override
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
X-List-Received-Date: Wed, 23 Aug 2017 23:06:43 -0000

Fix typo in override (_pn_go insteadof _pn-go).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index ca1e151..ff24e95 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -220,7 +220,7 @@ RECIPE_MAINTAINER_pn-gnu-config = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnu-efi = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnupg = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-gnutls = "Armin Kuster <akuster@mvista.com>"
-RECIPE_MAINTAINER_pn_go = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-go = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-go-cross = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-go-helloworld = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-go-native = "Khem Raj <raj.khem@gmail.com>"
-- 
2.9.5


