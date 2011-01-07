Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 083864C810AF
	for <poky@yoctoproject.org>; Fri,  7 Jan 2011 00:27:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Jan 2011 22:27:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,287,1291622400"; d="scan'208";a="590731775"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 06 Jan 2011 22:27:58 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1Pb5pf-0003Vq-TI; Fri, 07 Jan 2011 14:29:52 +0800
Message-Id: <cover.1294381578.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Old-Date: Fri, 7 Jan 2011 14:26:18 +0800
Date: Fri, 07 Jan 2011 14:29:51 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] Bug #645 fixing
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
X-List-Received-Date: Fri, 07 Jan 2011 06:28:00 -0000

Modified the function emit_var() in bitbake/lib/bb/data.py for Bug #645

1. added "#" for multiple line comment
2. added " \" for multiple line shell variable.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug645
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug645

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  bitbake/data.py: corrected the output for shell syntax.

 bitbake/lib/bb/data.py |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)


