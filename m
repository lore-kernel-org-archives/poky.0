Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A9154C80053
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 13:36:05 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Feb 2011 11:36:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,443,1291622400"; d="scan'208";a="600693865"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 08 Feb 2011 11:36:04 -0800
Message-Id: <cover.1297194944.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Tue, 8 Feb 2011 11:55:44 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Change 32bit SDK to use i686 instead of i586
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
X-List-Received-Date: Tue, 08 Feb 2011 19:36:05 -0000

Since now we can build SDK packages for i686, change i586 to i686 to support 32bit SDK

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jzhang/i686
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jzhang/i686

Thanks,
    Jessica Zhang <jessica.zhang@intel.com>
---


Jessica Zhang (1):
  local.conf: change i586 to i686 for 32bit SDK

 meta/conf/local.conf.sample |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)


