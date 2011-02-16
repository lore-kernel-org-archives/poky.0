Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 386CB4C800B0
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:30:50 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Feb 2011 21:30:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,478,1291622400"; d="scan'208";a="708338487"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by orsmga001.jf.intel.com with ESMTP; 15 Feb 2011 21:30:35 -0800
Message-Id: <cover.1297834031.git.lianhao.lu@intel.com>
Old-Date: Wed, 16 Feb 2011 13:27:11 +0800
Date: Wed, 16 Feb 2011 13:30:15 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 0/1] [BUGID #714] install linux-libc-headers
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
X-List-Received-Date: Wed, 16 Feb 2011 05:30:50 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

I resend the previous pull request of bug #714 fixing, also bumped the PR. Please ignore the previous one.

The kernel headers are not installed in rootfs because it is included in the pacakge of linux-libc-headers-yocto-dev, while other packages like libc6-dev still think its name as linux-libc-headers.

So we need to add RPROVIDES to linux-libc-headers-yocto-dev to have it RPROVIDES the linux-libc-headers-dev, so it can be installed as required by libc6-dev.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug714
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug714

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  linux-libc-headers-yocto: Added RPROVIDES.

 .../linux-libc-headers-yocto_git.bb                |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)


