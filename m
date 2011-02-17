Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 80EF04C800A3
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 04:35:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Feb 2011 02:35:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,485,1291622400"; d="scan'208";a="888389220"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 17 Feb 2011 02:35:11 -0800
Message-Id: <cover.1297940034.git.dongxiao.xu@intel.com>
Old-Date: Thu, 17 Feb 2011 18:53:54 +0800
Date: Thu, 17 Feb 2011 18:55:28 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] gstreamer: reenable PARALLEL_MAKE
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
X-List-Received-Date: Thu, 17 Feb 2011 10:35:12 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This pull request re-enables PARALLEL_MAKE for gstreamer. Builds on all architectures are tested.

Please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  gstreamer: reenable PARALLEL_MAKE

 .../gstreamer/gstreamer_0.10.31.bb                 |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


