Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5278EE0123F
	for <poky@yoctoproject.org>; Tue, 10 Jan 2012 19:02:56 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jan 2012 19:02:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="94566007"
Received: from dongxiao-desktop.sh.intel.com (HELO localhost) ([10.239.36.108])
	by azsmga001.ch.intel.com with ESMTP; 10 Jan 2012 19:02:54 -0800
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 11 Jan 2012 11:05:09 +0800
Message-Id: <cover.1326250470.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1 v2][PULL] Hob: change launch scritps
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
X-List-Received-Date: Wed, 11 Jan 2012 03:02:56 -0000

Hi Richard,

This is the second pull request for hob scripts.

Please help to review and pull.

Note that this pull request has dependency on dxu4/hob-bitbake-changes-v2, dxu4/hob-oecore-changes-v2, and dxu4/hob-v2.

There is no change from the v1.

Thanks,
Dongxiao

The following changes since commit 4bcb02a7336ed2883427d9280d2070824bff8f53:
  Dongxiao Xu (1):
        Hob: A new implemetation for Human Oriented Builder

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib dxu4/hob-yocto-changes-v2
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/hob-yocto-changes-v2

Dongxiao Xu (1):
  scripts/hob: Launch the new hob

 scripts/hob |   30 +-----------------------------
 1 files changed, 1 insertions(+), 29 deletions(-)


