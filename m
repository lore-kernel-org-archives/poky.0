Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B0D04C804E4
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 00:50:19 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2011 22:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,314,1297065600"; d="scan'208";a="719789220"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by orsmga001.jf.intel.com with ESMTP; 13 Mar 2011 22:50:17 -0700
Message-Id: <cover.1300081427.git.tom.zanussi@intel.com>
Old-Date: Mon, 14 Mar 2011 00:43:47 -0500
Date: Mon, 14 Mar 2011  0:50:16 -0500
To: poky@yoctoproject.org, dvhart@linux.intel.com, bruce.ashfield@windriver.com,
	bruce.ashfield@gmail.com
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/2] BSP Guide and Kernel Manual updates
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
X-List-Received-Date: Mon, 14 Mar 2011 05:50:19 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

These patches update the BSP Guide and Kernel Manual to reflect
1.0 usage and fix some other minor things.

Please review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/bsp-and-kernel-manual-fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/bsp-and-kernel-manual-fixes

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (2):
  documentation: BSP Developer's Guide fixes
  documentation: Kernel Manual fixes

 documentation/bsp-guide/bsp.xml               |   22 +++---
 documentation/kernel-manual/kernel-how-to.xml |  120 +++++++++++++------------
 2 files changed, 72 insertions(+), 70 deletions(-)


