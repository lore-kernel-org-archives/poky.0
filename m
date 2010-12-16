Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6170D4C80BCF
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 02:01:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Dec 2010 00:01:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="584236452"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by orsmga002.jf.intel.com with ESMTP; 16 Dec 2010 00:01:33 -0800
Message-Id: <cover.1292486693.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Date: Thu, 16 Dec 2010 16:04:53 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] Fixing for [BUGID #594]. Check DISPLAY is set in sanity.bbclass
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
X-List-Received-Date: Thu, 16 Dec 2010 08:01:34 -0000

[BUGID #594] Fixing bug #594, checking in sanity.bbclass if DISPLAY is set 
when IMAGETEST is set to qemu.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---


Jiajun Xu (1):
  sanity.bbclass: Check if DISPLAY is set when IMAGETEST is set

 meta/classes/sanity.bbclass |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)


