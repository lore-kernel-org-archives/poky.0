Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D591E00DEA; Wed, 12 Oct 2016 13:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAB6CE00D23
	for <poky@yoctoproject.org>; Wed, 12 Oct 2016 13:48:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 12 Oct 2016 13:48:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,485,1473145200"; d="scan'208";a="1063985638"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.27.109])
	by orsmga002.jf.intel.com with ESMTP; 12 Oct 2016 13:48:02 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Oct 2016 21:47:59 +0100
Message-Id: <1476305279-11158-1-git-send-email-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] local.conf.sample.extended: remove RM_OLD_IMAGE
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
X-List-Received-Date: Wed, 12 Oct 2016 20:48:11 -0000

RM_OLD_IMAGE has been removed so don't include this variable in
sample local.conf

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-poky/conf/local.conf.sample.extended | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 118ed62..d407ffb 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -265,9 +265,6 @@
 #COPYLEFT_RECIPE_TYPES = 'target'
 #
 
-# Remove the old image before the new one generated to save disk space
-#RM_OLD_IMAGE = "1"
-
 #
 # GCC/LD FLAGS to enable more secure code generation
 #
-- 
2.7.4


