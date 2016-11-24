Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8AF2E00D4D; Thu, 24 Nov 2016 13:29:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63A9AE0071C
	for <poky@yoctoproject.org>; Thu, 24 Nov 2016 13:29:00 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP; 24 Nov 2016 13:28:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,543,1473145200"; d="scan'208";a="195372965"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.38])
	by fmsmga004.fm.intel.com with ESMTP; 24 Nov 2016 13:28:59 -0800
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Thu, 24 Nov 2016 15:34:22 -0600
Message-Id: <cover.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH v2 0/1] selftest: skip tests for poky-tiny distro due to incompatible kernel machine
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
X-List-Received-Date: Thu, 24 Nov 2016 21:29:03 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

This series is a continuation of:

http://lists.openembedded.org/pipermail/openembedded-core/2016-November/129234.html

The latter should be merged first before this series.

[YOCTO #8525]

The following changes since commit 12a0ee049e453b6d0d2ce2f3fa981d1b6e02bd78:

  dev-manual: Added note about RPM not dealing with post-install (2016-11-23 11:10:35 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib lsandov1/oe-selftest-distro-poky-agnostic
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=lsandov1/oe-selftest-distro-poky-agnostic

Leonardo Sandoval (1):
  selftest: skip tests for poky-tiny distro due to incompatible kernel
    machine

 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py    | 3 ++-
 meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.1.4


