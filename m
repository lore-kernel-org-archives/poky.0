Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E511E008CC; Wed, 28 Jan 2015 07:49:41 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30856E008DC
	for <poky@yoctoproject.org>; Wed, 28 Jan 2015 07:49:39 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jan 2015 07:49:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,481,1418112000"; d="scan'208";a="677472303"
Received: from ssandhu3-mobl1.amr.corp.intel.com (HELO localhost)
	([10.254.48.171])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2015 07:49:38 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: akuster808@gmail.com,
	poky@yoctoproject.org
Date: Wed, 28 Jan 2015 09:49:34 -0600
Message-Id: <cover.1422459700.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1 v2][dizzy] yocto-bsp fix
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
X-List-Received-Date: Wed, 28 Jan 2015 15:49:41 -0000

This patchset contains a fix for Yocto Bug 6518 (yocto-bsp create
creates faulty SRC_URI).  Please apply to dizzy-next.

Changes since v1:
 * the wrong patch was sent for v1 - v2 adds the right one.

The following changes since commit 9fc095a439c36014c73b3a8f240afba09fe0e4d7:

  image.bbclass: avoid boot error on read-only systemd image (2015-01-15 16:01:47 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/custom-kbranch-dizzy-v2
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/custom-kbranch-dizzy-v2

Tom Zanussi (1):
  yocto-bsp: Add branch to SRC_URI for custom kernels

 .../{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
1.9.3


