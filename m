Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A25E006AD
	for <poky@yoctoproject.org>; Mon,  2 Jul 2012 15:14:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Jul 2012 15:14:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="187689342"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2012 15:14:40 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 06:09:21 +0800
Message-Id: <cover.1341266885.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/1][PULL] Multilib: add sanity check script
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
X-List-Received-Date: Mon, 02 Jul 2012 22:14:41 -0000

Hi Richard,

This pull request is to add sanity check for multilib, please help to review and pull.

Thanks,
Dongxiao

The following changes since commit 644ad4bf1e30fcee4b9d5abb819046d1f2193d27:

  documentation/bsp-guide/bsp.xml: Yocto term paring (2012-07-02 16:47:45 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dxu4/multilib-check
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/multilib-check

Dongxiao Xu (1):
  scripts/multilib-check: Check for multilib build results

 scripts/multilib-check |  117 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 117 insertions(+), 0 deletions(-)
 create mode 100755 scripts/multilib-check

-- 
1.7.4.1


