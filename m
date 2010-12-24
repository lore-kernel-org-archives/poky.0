Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D4C4A4C80039
	for <poky@yoctoproject.org>; Fri, 24 Dec 2010 00:40:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 22:40:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,222,1291622400"; d="scan'208";a="690405966"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 22:40:51 -0800
Message-Id: <cover.1293173313.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Fri, 24 Dec 2010 14:48:33 +0800
Date: Fri, 24 Dec 2010 14:50:17 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1][PULL] distro_tracking: add RECIPE_LAST_UPDATE info
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
X-List-Received-Date: Fri, 24 Dec 2010 06:40:53 -0000

Hi Saul,

This pull request adds the RECIPE_LAST_UPDATE information, which is used to track the last upgrade date for a recipe.
Please help to review and pull.

Thanks,
Dongxiao

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  distro_tracking: Add RECIPE_LAST_UPDATE info

 .../conf/distro/include/distro_tracking_fields.inc |  725 +++++++++++++++-----
 1 files changed, 564 insertions(+), 161 deletions(-)


