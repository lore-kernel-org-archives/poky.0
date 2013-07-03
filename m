Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83BE1E00348
	for <poky@yoctoproject.org>; Wed,  3 Jul 2013 13:13:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Jul 2013 13:13:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,990,1363158000"; d="scan'208";a="364382296"
Received: from unknown (HELO localhost) ([10.255.13.118])
	by orsmga002.jf.intel.com with ESMTP; 03 Jul 2013 13:13:33 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org,
	paul.eggleton@linux.intel.com
Date: Wed,  3 Jul 2013 15:13:31 -0500
Message-Id: <cover.1372882015.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/2] yocto bsp tools bugfixes
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
X-List-Received-Date: Wed, 03 Jul 2013 20:13:51 -0000

This patchset fixes a couple bugs in the yocto bsp tools.

The first one [yocto-bsp: filter out 'layer' from arch list] is just an
unchanged repost of the patch that was posted a couple weeks ago and never
got picked up.  It needs to go into both master and the next 1.4 point
release.  The second one should go into master.

The following changes since commit 8a186a6b3853fc1a7dcf342d421c8926c38949c9:

  bitbake: hob: save button from settings called a nonexisting method (2013-07-03 08:13:35 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/bug-4735-repost-and-bug-4743
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/bug-4735-repost-and-bug-4743

Tom Zanussi (2):
  yocto-bsp: filter out 'layer' from arch list
  yocto-kernel: enforce exact match for BBLAYERS

 scripts/lib/bsp/engine.py | 2 +-
 scripts/lib/bsp/kernel.py | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

-- 
1.7.11.4


