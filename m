Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D8C74C80050
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 04:41:05 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Mar 2011 02:41:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,263,1297065600"; d="scan'208";a="609025714"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by orsmga002.jf.intel.com with ESMTP; 04 Mar 2011 02:41:03 -0800
Message-Id: <cover.1299235105.git.lianhao.lu@intel.com>
Old-Date: Fri, 4 Mar 2011 18:38:25 +0800
Date: Fri, 04 Mar 2011 18:39:39 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/1] Bug #808 fixing: Add --sysroot into LDFLAGS
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
X-List-Received-Date: Fri, 04 Mar 2011 10:41:05 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Added --sysroot to LDFLAGS in environment files, in case some projects use LDFLAGS for linking.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug808
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug808

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  toolchain-script.bbclass: Added --sysroot to LDFLAGS.

 meta/classes/toolchain-scripts.bbclass     |    2 ++
 meta/recipes-core/meta/meta-environment.bb |    2 +-
 meta/recipes-core/meta/meta-toolchain.bb   |    2 +-
 3 files changed, 4 insertions(+), 2 deletions(-)


