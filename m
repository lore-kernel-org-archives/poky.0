Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B3664C80093
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 20:20:59 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Feb 2011 18:20:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,183,1297065600"; d="scan'208";a="390533241"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.224])
	by azsmga001.ch.intel.com with ESMTP; 17 Feb 2011 18:20:58 -0800
Message-Id: <cover.1297995730.git.edwin.zhai@intel.com>
Old-Date: Fri, 18 Feb 2011 10:22:10 +0800
Date: Fri, 18 Feb 2011 10:24:18 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/1] Enable parallel make for eds-dbus
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
X-List-Received-Date: Fri, 18 Feb 2011 02:20:59 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

RP,
    After last upgrade of eds-dbus, the parallel make issues gone. So enable it to speed up build process.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/fix2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (1):
  eds-dbus: Enable parallel make to speed up build process

 meta/recipes-sato/eds/eds-dbus_git.bb |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)


