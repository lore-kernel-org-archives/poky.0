Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CDE64C800A7
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 05:43:19 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Mar 2011 03:43:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,302,1297065600"; d="scan'208";a="401162237"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by azsmga001.ch.intel.com with ESMTP; 11 Mar 2011 03:43:17 -0800
Message-Id: <cover.1299843601.git.dexuan.cui@intel.com>
Old-Date: Fri, 11 Mar 2011 19:40:01 +0800
Date: Fri, 11 Mar 2011 19:41:52 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 0/1] sugarbay.conf: add mesa library correctly
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
X-List-Received-Date: Fri, 11 Mar 2011 11:43:19 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

766c20ef2141d058f15074e866313ab119332ea8 added
mesa-dri-driver-i915, but actually it should be
mesa-dri-driver-i965.

This fixes [BUGID #727]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/meta-intel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/meta-intel

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (1):
  sugarbay.conf: add mesa library: correct previous wrong modification

 meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.2


