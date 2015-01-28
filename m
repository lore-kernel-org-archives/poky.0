Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA526E00872; Wed, 28 Jan 2015 07:48:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CA2FE00827
	for <poky@yoctoproject.org>; Wed, 28 Jan 2015 07:48:32 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jan 2015 07:48:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,481,1418112000"; d="scan'208";a="658080857"
Received: from ssandhu3-mobl1.amr.corp.intel.com (HELO localhost)
	([10.254.48.171])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2015 07:48:26 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: saul.wold@intel.com,
	sgw@linux.intel.com,
	poky@yoctoproject.org
Date: Wed, 28 Jan 2015 09:48:25 -0600
Message-Id: <cover.1422459158.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1 v2][daisy] yocto-bsp fix
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
X-List-Received-Date: Wed, 28 Jan 2015 15:48:36 -0000

This patchset contains a fix for Yocto Bug 6518 (yocto-bsp create
creates faulty SRC_URI).  Please apply to daisy-next.

Changes since v1:
 * the wrong patch was sent for v1 - v2 adds the right one.

The following changes since commit 9bb6f7f3f00c66abe45e97286323496694ef1609:

  beaglebone: enable the nowayout option for the watchdog (2014-12-28 09:07:01 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/custom-kbranch-daisy-v2
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/custom-kbranch-daisy-v2

Tom Zanussi (1):
  yocto-bsp: Add branch to SRC_URI for custom kernels

 .../{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
1.9.3


