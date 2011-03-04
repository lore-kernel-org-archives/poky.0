Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B46A74C800A3
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 05:40:01 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Mar 2011 03:40:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,263,1297065600"; d="scan'208";a="397537479"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by azsmga001.ch.intel.com with ESMTP; 04 Mar 2011 03:39:47 -0800
Message-Id: <cover.1299238414.git.edwin.zhai@intel.com>
Old-Date: Fri, 4 Mar 2011 19:33:34 +0800
Date: Fri, 04 Mar 2011 19:37:56 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/1] Remove mmap_min_addr check in poky-qemu
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
X-List-Received-Date: Fri, 04 Mar 2011 11:40:01 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Saul,
I have tested poky-image-sato works well on qemuarm after removing all the mmap_min_addr checks.
Raj has sent out the patch to remove checks in sanity.bbclass in oe-core mailing list.

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/fix2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (1):
  qemu-script: Remove mmap_min_addr check

 scripts/poky-qemu-internal |    7 -------
 1 files changed, 0 insertions(+), 7 deletions(-)


