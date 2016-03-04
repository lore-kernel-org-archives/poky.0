Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EC27E00C02; Thu,  3 Mar 2016 19:09:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6834AE00C02
	for <poky@yoctoproject.org>; Thu,  3 Mar 2016 19:09:54 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2016 19:09:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,534,1449561600"; d="scan'208";a="926515362"
Received: from nikhilbh-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.241])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2016 19:09:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Mar 2016 16:09:20 +1300
Message-Id: <079c261f1bb964d24b8b2f3e6a8bf58e6d3719eb.1457060930.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1457060930.git.paul.eggleton@linux.intel.com>
References: <cover.1457060930.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1457060930.git.paul.eggleton@linux.intel.com>
References: <cover.1457060930.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] bblayers.conf.sample: remove BBLAYERS_NON_REMOVABLE
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
X-List-Received-Date: Fri, 04 Mar 2016 03:09:56 -0000

Hob was the only thing paying attention to this, and now Hob itself has
been removed we can remove this as well.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-poky/conf/bblayers.conf.sample | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/meta-poky/conf/bblayers.conf.sample b/meta-poky/conf/bblayers.conf.sample
index b948df2..a371994 100644
--- a/meta-poky/conf/bblayers.conf.sample
+++ b/meta-poky/conf/bblayers.conf.sample
@@ -10,7 +10,3 @@ BBLAYERS ?= " \
   ##OEROOT##/meta-poky \
   ##OEROOT##/meta-yocto-bsp \
   "
-BBLAYERS_NON_REMOVABLE ?= " \
-  ##OEROOT##/meta \
-  ##OEROOT##/meta-poky \
-  "
-- 
2.5.0


