Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A304E00B9C; Wed, 12 Jul 2017 12:12:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0E3CE00ACF
	for <poky@yoctoproject.org>; Wed, 12 Jul 2017 12:12:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 12 Jul 2017 12:12:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,351,1496127600"; d="scan'208";a="1171740400"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.21.85])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jul 2017 12:12:04 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Jul 2017 20:12:00 +0100
Message-Id: <20170712191200.8209-1-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.9.4
Subject: [PATCH] poky: add Ubuntu 17.04 Zesty Zapus to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 12 Jul 2017 19:12:10 -0000

The new Ubuntu releases on 2017-04-13, after cutoff for Yocto Project 2.3.

I've been running builds of some images and a world build in a container
over the past couple of days without issue. I've also run a complete
oe-selftest run (with SANITY_TESTED_DISTROS = "") and did not observe any
errors.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 57b7e71..c907969 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -75,6 +75,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-15.04 \n \
             ubuntu-16.04 \n \
             ubuntu-16.10 \n \
+            ubuntu-17.04 \n \
             fedora-24 \n \
             fedora-25 \n \
             centos-7 \n \
-- 
2.9.4


