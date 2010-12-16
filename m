Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF2104C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 15:14:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 13:14:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,357,1288594800"; d="scan'208";a="687924391"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.151])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 13:14:01 -0800
Message-Id: <cover.1292533581.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Thu, 16 Dec 2010 13:06:21 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Docs: Kernel Manual Update
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
X-List-Received-Date: Thu, 16 Dec 2010 21:14:02 -0000

The kernel manual has an updated figure for the tree structure.  The 
figure replaces the string "preempt_rt" with "preempt-rt"

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/kernel

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/kernel-manual/figures/kernel-architecture-overview.png:
    updated figure

 .../figures/kernel-architecture-overview.png       |  Bin 40778 -> 40748 bytes
 1 files changed, 0 insertions(+), 0 deletions(-)


