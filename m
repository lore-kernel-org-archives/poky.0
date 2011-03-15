Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D9FC4C80050
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 03:16:51 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Mar 2011 01:16:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="613081321"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by orsmga002.jf.intel.com with ESMTP; 15 Mar 2011 01:16:43 -0700
Message-Id: <cover.1300176847.git.lianhao.lu@intel.com>
Old-Date: Tue, 15 Mar 2011 16:14:07 +0800
Date: Tue, 15 Mar 2011 16:15:49 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/1] Fixing do_rootfs_ipk failure
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
X-List-Received-Date: Tue, 15 Mar 2011 08:16:51 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

This patch fixes Bug #870. It removes the duplicated values in PACKAGE_ARCHS which would results an error in opkg-cl.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug870
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug870

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  package_ipk.bbclass: Remove the duplication in PACKAGE_ARCHS.

 meta/classes/package_ipk.bbclass |   16 ++++++++++++++--
 1 files changed, 14 insertions(+), 2 deletions(-)


