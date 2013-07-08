Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5519BE00747
	for <poky@yoctoproject.org>; Mon,  8 Jul 2013 03:16:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Jul 2013 03:13:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1019,1363158000"; d="scan'208";a="342062462"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.28])
	by orsmga001.jf.intel.com with ESMTP; 08 Jul 2013 03:15:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  8 Jul 2013 11:15:35 +0100
Message-Id: <cover.1373278412.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [dylan][PATCH 0/2] Backports from master (cover letter only)
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
X-List-Received-Date: Mon, 08 Jul 2013 10:16:02 -0000

The following changes since commit e4a0a4c5e419154a34710a1b6c28d4180c6304c3:

  documentation: Updated release month in Manual History tables. (2013-06-14 17:33:37 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/dylan-next-poky
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/dylan-next-poky

Tom Zanussi (2):
  yocto-bsp: filter out 'layer' from arch list
  yocto-kernel: enforce exact match for BBLAYERS

 scripts/lib/bsp/engine.py | 2 +-
 scripts/lib/bsp/kernel.py | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

-- 
1.8.1.2


