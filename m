Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70E4F4C8006D
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 07:52:42 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Feb 2011 05:52:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,455,1291622400"; d="scan'208";a="387419754"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by azsmga001.ch.intel.com with ESMTP; 11 Feb 2011 05:52:41 -0800
Message-Id: <cover.1297432560.git.edwin.zhai@intel.com>
Old-Date: Fri, 11 Feb 2011 21:56:00 +0800
Date: Fri, 11 Feb 2011 22:01:33 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/1] Fix sstate error
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
X-List-Received-Date: Fri, 11 Feb 2011 13:52:42 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

RP,
Current sstate's fetch code doesn't reflect latest fetcher changes, so old
fetch style cause exception and fail silently. This patch fix it.

Another issue is "import xxx" in python function from sstate.bbclass can only
sit in the head of the function, else have UnboundLocalError: "local variable
XXX referenced before assignment".

We don't know if it is a known limitation of *.bbclass or some potential bug.
Can you give some comments?


Thanks,
edwin


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/fix2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (1):
  sstate: Fix bugs after new fetcher

 meta/classes/sstate.bbclass |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)


