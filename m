Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF769E00D6D; Mon,  4 Jul 2016 13:31:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 485DFE00D6B
	for <poky@yoctoproject.org>; Mon,  4 Jul 2016 13:31:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jul 2016 13:31:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,576,1459839600"; d="scan'208";a="1000866418"
Received: from jhibarra-mobl1.zpn.intel.com ([10.219.16.231])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2016 13:31:41 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jul 2016 15:33:31 -0500
Message-Id: <1467664414-8042-1-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
Subject: [PATCH 0/3] Migration from optparse to argparse on yocto-bsp script
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
X-List-Received-Date: Mon, 04 Jul 2016 20:31:43 -0000

A set of patches to update yocto-bsp. Optparse is deprecated and should be avoided.

Last patch makes changes to help.py which could cause issues with a different patch sent a couple of days ago (bug #9868, https://lists.yoctoproject.org/pipermail/poky/2016-July/010604.html). Issues could be avoided by integrating these patches before that one.

[YOCTO #8321]

Humberto Ibarra (3):
  scripts/yocto-bsp: Removing version from yocto-bsp
  yocto-bsp: Refactor script to use argparse instead of optparse
  scripts/lib/bsp/help.py: Changed help of yocto-bsp to match latest
    syntax

 scripts/lib/bsp/engine.py |  30 +++--------
 scripts/lib/bsp/help.py   |  16 +++---
 scripts/yocto-bsp         | 135 ++++++++++++++++++++++++----------------------
 3 files changed, 86 insertions(+), 95 deletions(-)

-- 
2.4.11


