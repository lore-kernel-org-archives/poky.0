Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0EF64C806DA
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 00:21:02 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Mar 2011 22:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,203,1299484800"; d="scan'208";a="404498116"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.224])
	by azsmga001.ch.intel.com with ESMTP; 17 Mar 2011 22:21:00 -0700
Message-Id: <cover.1300425643.git.edwin.zhai@intel.com>
Old-Date: Fri, 18 Mar 2011 13:20:43 +0800
Date: Fri, 18 Mar 2011 13:23:40 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/1] V3: fix qemu segfault with nVidia proprietary driver
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
X-List-Received-Date: Fri, 18 Mar 2011 05:21:03 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

After discussion with Mark, we decide that only give warnings to ender user as
different host os need differnt fix. 

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/fix3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix3

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (1):
  qemu: Warnings of qemu segfault caused by nVidia's libGL

 scripts/poky-qemu-internal |   14 +++++++++++++-
 1 files changed, 13 insertions(+), 1 deletions(-)


