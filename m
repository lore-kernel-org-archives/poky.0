Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E89A9E0044D
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 00:49:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Apr 2012 00:49:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="130537375"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by orsmga001.jf.intel.com with ESMTP; 17 Apr 2012 00:49:43 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 17 Apr 2012 15:46:42 +0800
Message-Id: <cover.1334648692.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][PULL] scripts/bitbake: fix sanity check not functional issue
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Apr 2012 07:49:44 -0000

Hi Richard,

This pull request is to fix certain sanity check not functional issue (e.x, network check).

Please help to review and pull.

Thanks,
Dongxiao

The following changes since commit c936fca6e163bc19bc08cbd0036b31ca6f6c3ed6:

  bitbake.conf: Add PARALLEL_MAKE to BB_HASHBASE_WHITELIST (2012-04-16 23:37:45 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dxu4/hob-bugfix-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/hob-bugfix-yocto

Dongxiao Xu (1):
  scripts/bitbake: Remove sanity_info after run "bitbake -e"

 scripts/bitbake |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

-- 
1.7.4.1


