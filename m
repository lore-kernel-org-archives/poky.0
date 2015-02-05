Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37EADE0098D; Thu,  5 Feb 2015 04:06:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B57E00757
	for <poky@yoctoproject.org>; Thu,  5 Feb 2015 04:05:59 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 05 Feb 2015 04:05:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="450204868"
Received: from mhgreen-mobl5.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.19.49])
	by FMSMGA003.fm.intel.com with ESMTP; 05 Feb 2015 03:51:41 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  5 Feb 2015 12:05:53 +0000
Message-Id: <cover.1423137176.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [PATCH 0/1] bblayers.conf version mismatch fix (poky part)
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
X-List-Received-Date: Thu, 05 Feb 2015 12:06:02 -0000

NOTE: there is a corresponding patch for OE-Core that should be applied
at the same time as this patch.


The following change since commit d8f0011c23a6b8441323974acc70b08c81cfefbd:

  opkg-keyrings: New recipe (2015-02-03 14:53:56 +0000)

is available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/bblayers-ver-poky
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/bblayers-ver-poky

Paul Eggleton (1):
  poky.conf: resolve mismatch between poky bblayers version and OE-Core

 meta-yocto/classes/poky-sanity.bbclass | 8 ++++++--
 meta-yocto/conf/distro/poky.conf       | 1 -
 2 files changed, 6 insertions(+), 3 deletions(-)

-- 
1.9.3


