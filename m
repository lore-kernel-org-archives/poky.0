Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93215E0030B
	for <poky@yoctoproject.org>; Thu, 23 Feb 2012 05:51:05 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 23 Feb 2012 05:50:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="69498158"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Feb 2012 05:50:38 -0800
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 23 Feb 2012 21:49:12 +0800
Message-Id: <cover.1330004166.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][PULL] Hob2: Yocto specific changes
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
X-List-Received-Date: Thu, 23 Feb 2012 13:51:05 -0000

Hi Richard,

This pull request is Hob2 related Yocto specific changes, please help to review and pull.

Note that this pull request has dependency on the following pull requests:

 - hob2-bitbake-changes
 - hob2-oecore-changes
 - hob2

Thanks,
Dongxiao

The following changes since commit 869cf1102d0ebf795c5f2aaa0bf465fab8801a74:

  Hob: A new implemetation for Human Oriented Builder (2012-02-23 21:14:26 +0800)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dxu4/hob2-yocto-changes
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/hob2-yocto-changes

Dongxiao Xu (1):
  scripts/hob: Launch the new hob

 scripts/hob |   30 +-----------------------------
 1 files changed, 1 insertions(+), 29 deletions(-)

-- 
1.7.4.1


