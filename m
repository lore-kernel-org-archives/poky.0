Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D04A94C80050
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 11:00:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Mar 2011 09:00:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,277,1297065600"; d="scan'208";a="717245308"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 07 Mar 2011 08:55:44 -0800
Message-Id: <cover.1299516806.git.nitin.a.kamble@intel.com>
Old-Date: Mon, 7 Mar 2011 08:53:26 -0800
Date: Mon, 07 Mar 2011  8:55:44 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] fix a LSB test issue
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
X-List-Received-Date: Mon, 07 Mar 2011 17:00:08 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

More details in the commit email.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  gcc-runtime: fix LSB library checks for libstdc++.so.6

 meta/conf/bitbake.conf                             |    2 +-
 meta/conf/distro/include/poky-eglibc.inc           |    2 +-
 meta/conf/distro/include/poky-glibc.inc            |    2 +-
 meta/conf/distro/include/poky-uclibc.inc           |    2 +-
 .../recipes-devtools/gcc/gcc-configure-runtime.inc |    1 +
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 6 files changed, 6 insertions(+), 5 deletions(-)

-- 
1.7.3.4


