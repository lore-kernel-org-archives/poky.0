Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D78B04C80B70
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 18:57:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 16:57:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,280,1291622400"; d="scan'208";a="590295212"
Received: from unknown (HELO localhost) ([10.255.14.42])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 16:57:26 -0800
Message-Id: <cover.1294275316.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Wed, 5 Jan 2011 16:55:16 -0800
Date: Wed, 05 Jan 2011 16:57:26 -0800
To: richard.purdie@linuxfoundation.org,poky@yoctoproject.org
Subject: [PATCH 0/1] fix rootfs generation bug
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
X-List-Received-Date: Thu, 06 Jan 2011 00:57:27 -0000

Fix a rootfs generation bug introduced by commit
5e384038cbd5035377d61a1b77ad23ab69e0cac0.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/build
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/build

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  rootfs_rpm: fix rootfs generation rm error

 meta/classes/rootfs_rpm.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


