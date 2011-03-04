Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 812F44C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 23:22:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Mar 2011 21:22:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,262,1297065600"; d="scan'208";a="397398569"
Received: from unknown (HELO localhost) ([10.255.12.133])
	by azsmga001.ch.intel.com with ESMTP; 03 Mar 2011 21:22:35 -0800
Message-Id: <cover.1299216097.git.dvhart@linux.intel.com>
Old-Date: Thu, 3 Mar 2011 21:21:37 -0800
Date: Thu, 03 Mar 2011 21:22:35 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2] [BUGID #241][KERNEL] Can't build kernel modules outside of virtual/kernel recipe
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
X-List-Received-Date: Fri, 04 Mar 2011 05:22:39 -0000

From: Darren Hart <dvhart@linux.intel.com>

The following patches provide a mechanism to address [BUGID #241] through an
addition to module.bbclass which builds the hostprogs. The second patch adds an
example kernel module.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/modules
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/modules

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (2):
  module: build hostprogs for each module
  hello-mod: add a module for testing module.bbclass

 meta/classes/module.bbclass                    |   12 +-
 meta/recipes-kernel/hello-mod/files/COPYING    |  340 ++++++++++++++++++++++++
 meta/recipes-kernel/hello-mod/files/Makefile   |   14 +
 meta/recipes-kernel/hello-mod/files/hello.c    |   33 +++
 meta/recipes-kernel/hello-mod/hello-mod_0.1.bb |   15 +
 5 files changed, 413 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-kernel/hello-mod/files/COPYING
 create mode 100644 meta/recipes-kernel/hello-mod/files/Makefile
 create mode 100644 meta/recipes-kernel/hello-mod/files/hello.c
 create mode 100644 meta/recipes-kernel/hello-mod/hello-mod_0.1.bb


