Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2DDA74C800A8
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 10:56:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Feb 2011 08:56:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="709594261"
Received: from unknown (HELO localhost) ([10.255.12.19])
	by orsmga001.jf.intel.com with ESMTP; 18 Feb 2011 08:56:32 -0800
Message-Id: <cover.1298047832.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 18 Feb 2011 10:50:32 -0600
Date: Fri, 18 Feb 2011 10:57:10 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/4] [DOCS] Kernel Manual enhancement to creating a BSP
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
X-List-Received-Date: Fri, 18 Feb 2011 16:56:33 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I updated the sections on creating a BSP based on an existing similar
BSP with and without a local kernel repository.  This series of changes
were completed in conjunction with Bruce Ashfield reviewing the technical 
content.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (4):
  documentation/kernel-manual/kernel-how-to.xml: Fix to step 1 of
    section 3.4.4
  documentation/kernel-manual/kernel-how-to.xml: Fix to step 3 of
    section 3.4.4
  documentation/kernel-manual/kernel-how-to.xml: fix to step 3 and 4 of
    section 3.4.4
  documentation/kernel-manual/kernel-how-to.xml: Changes to section
    3.4.4 and new 3.4.5

 documentation/kernel-manual/kernel-how-to.xml |   43 +++++++++++++++++++++++--
 1 files changed, 40 insertions(+), 3 deletions(-)


