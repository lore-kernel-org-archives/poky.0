Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A846E0030B
	for <poky@yoctoproject.org>; Fri,  6 Jan 2012 01:26:32 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2012 01:26:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="109387155"
Received: from dongxiao-desktop.sh.intel.com (HELO localhost) ([10.239.36.108])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2012 01:26:31 -0800
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  6 Jan 2012 17:28:31 +0800
Message-Id: <cover.1325841975.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1][PULL] scripts/hob: Change way to launch the new Hob
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
X-List-Received-Date: Fri, 06 Jan 2012 09:26:32 -0000

Hi Richard,

This pull request is to change the script to launch the new Hob.
Please help to review and pull.

Note that this pull request has dependency on:

dxu4/hob-bitbake-changes
dxu4/hob-oecore-changes
dxu4/hob

Thanks,
Dongxiao

The following changes since commit 5797feac5f06f5cc363869cd440b82b3eaafd456:
  Richard Purdie (1):
        image-mklibs/package_ipk: Remove bashisms

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib dxu4/hob-yocto-changes
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/hob-yocto-changes

Dongxiao Xu (1):
  scripts/hob: Launch the new hob

 scripts/hob |   30 +-----------------------------
 1 files changed, 1 insertions(+), 29 deletions(-)


