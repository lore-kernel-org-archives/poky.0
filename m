Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCC98E00A71; Thu, 20 Aug 2015 01:18:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D1EDE0097F
	for <poky@yoctoproject.org>; Thu, 20 Aug 2015 01:18:19 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2015 01:18:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,714,1432623600"; d="scan'208";a="752057575"
Received: from ljegan-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.8.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2015 01:18:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 20 Aug 2015 09:18:08 +0100
Message-Id: <cover.1440058596.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.1.0
Subject: [PATCH 0/2] A couple of misc fixes
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
X-List-Received-Date: Thu, 20 Aug 2015 08:18:21 -0000

The following changes since commit 6b8bb442880ef18097e47761f4f3b6f555f2877c:

  genericx86*: Update BSPs to use 4.1 Kernel (2015-08-19 18:05:56 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/meta-yocto-fixes
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/meta-yocto-fixes

Paul Eggleton (2):
  README.hardware: drop mention of binary-only drivers
  yocto-bsp / yocto-layer: fix template recipes

 README.hardware                                                       | 4 +---
 .../target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb     | 1 -
 .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb   | 3 +--
 3 files changed, 2 insertions(+), 6 deletions(-)

-- 
2.1.0


