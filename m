Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E6F384C80FAD
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 19:52:46 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 17:52:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,352,1288594800"; d="scan'208";a="362364610"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 17:52:45 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PT34H-0007SD-Df; Thu, 16 Dec 2010 09:55:41 +0800
Message-Id: <cover.1292464057.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Date: Thu, 16 Dec 2010 09:47:37 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] [BUGID #565] fixing. Added package of meta-environment-${TARGET_ARCH}
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
X-List-Received-Date: Thu, 16 Dec 2010 01:52:47 -0000

This fixing is dependant upon the commit 78c0263 of bug #586 fixing on branch jzhang/sdkversion.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug565
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug565

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  meta-environment: Added package of meta-environment-${TARGET_ARCH}
    for     environment files.

 meta/classes/toolchain-scripts.bbclass         |   32 ++++++++++
 meta/recipes-core/meta/meta-environment.bb     |   75 ++++++++++++++++++++++++
 meta/recipes-core/tasks/task-cross-canadian.bb |    1 +
 3 files changed, 108 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/meta/meta-environment.bb


