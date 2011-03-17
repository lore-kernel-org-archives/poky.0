Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22DD84C80578
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 07:20:06 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Mar 2011 05:20:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,198,1299484800"; d="scan'208";a="668271232"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.224])
	by fmsmga002.fm.intel.com with ESMTP; 17 Mar 2011 05:20:04 -0700
Message-Id: <cover.1300352186.git.edwin.zhai@intel.com>
Old-Date: Thu, 17 Mar 2011 16:56:26 +0800
Date: Thu, 17 Mar 2011 20:22:45 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/1] v2 fix qemu segfault with nVidia proprietary driver
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
X-List-Received-Date: Thu, 17 Mar 2011 12:20:06 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Saul,
This is v2 version according to comments from Mark.

thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/fix2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (1):
  qemu: Use mesa's libGL rather than nVidia's to avoid segfault of qemu

 scripts/poky-qemu-internal |   16 +++++++++++++++-
 1 files changed, 15 insertions(+), 1 deletions(-)


