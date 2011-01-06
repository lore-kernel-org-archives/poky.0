Return-Path: <jiajun.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9709D4C8086F
	for <poky@pokylinux.org>; Wed,  5 Jan 2011 23:09:10 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Jan 2011 21:09:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,281,1291622400"; d="scan'208";a="370755461"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 21:08:59 -0800
Message-Id: <cover.1294291150.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Thu, 6 Jan 2011 13:19:10 +0800
Date: Thu, 06 Jan 2011 13:21:24 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/1] qemuimagetest: Remove connman test for lsb image and fix one warning in Test_Create_Qemu
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
X-List-Received-Date: Thu, 06 Jan 2011 05:09:10 -0000

There is no connman in LSB image. So we need to remove connman test from it.
And when we check if ip address fetched by Test_Fetch_Target_IP is valid,
we should use "==" operator for string comparison.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---


Jiajun Xu (1):
  qemuimagetest: Remove connman test for lsb image and fix one warning
    in Test_Create_Qemu

 scripts/qemuimage-testlib                          |    2 +-
 .../scenario/qemuarm/poky-image-lsb                |    1 -
 .../scenario/qemumips/poky-image-lsb               |    1 -
 .../scenario/qemuppc/poky-image-lsb                |    1 -
 .../scenario/qemux86-64/poky-image-lsb             |    1 -
 .../scenario/qemux86/poky-image-lsb                |    1 -
 6 files changed, 1 insertions(+), 6 deletions(-)


