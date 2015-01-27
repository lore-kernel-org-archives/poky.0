Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69C11E008A7; Tue, 27 Jan 2015 05:39:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 086D2E00894
	for <poky@yoctoproject.org>; Tue, 27 Jan 2015 05:39:57 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2015 05:39:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,474,1418112000"; d="scan'208";a="657317641"
Received: from ssandhu3-mobl1.amr.corp.intel.com (HELO localhost)
	([10.254.48.171])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2015 05:39:56 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 27 Jan 2015 07:39:55 -0600
Message-Id: <cover.1422365238.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1][daisy] yocto-bsp fix
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
X-List-Received-Date: Tue, 27 Jan 2015 13:39:58 -0000

This patchset contains a fix for Yocto Bug 6518 (yocto-bsp create
creates faulty SRC_URI).  Please apply to daisy-next.

The following changes since commit b1dfbe192ee5d8f5595504017bdcbb530264597c:

  yocto-bsp: Add missing conf dir to arm template (2015-01-21 10:40:38 -0600)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/custom-kbranch-master
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/custom-kbranch-daisy

Tom Zanussi (1):
  yocto-bsp: Add branch to SRC_URI for custom kernels

 .../target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
1.9.3


