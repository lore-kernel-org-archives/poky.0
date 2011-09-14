Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98F81E006E3
	for <poky@yoctoproject.org>; Tue, 13 Sep 2011 23:06:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Sep 2011 23:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,378,1312182000"; d="scan'208";a="48567824"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.52])
	by azsmga001.ch.intel.com with ESMTP; 13 Sep 2011 23:06:22 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 14 Sep 2011 14:12:00 +0800
Message-Id: <cover.1315980532.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.1
Subject: [PATCH 0/1][RFC] multilib: define multilib override for MACHINE
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000

Hi Richard and Mark,

This RFC is to change the local.conf.sample.extended file to define multilib override for MACHINE.

There are also rpm related patches sent to oe-core list.

Please help to review and pull.

Thanks,
Dongxiao

The following changes since commit ce66e2c6bd117d1a40b547b10b376524f9276d16:

  core-image-minimal: Add missing POKY_EXTRA_IMAGE variable (2011-09-14 01:29:30 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dxu4/ml3
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/ml3

Dongxiao Xu (1):
  local.conf: add MACHINE override for multilib

 meta-yocto/conf/local.conf.sample.extended |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)


