Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE49F4C800FB
	for <poky@yoctoproject.org>; Tue, 10 May 2011 21:23:41 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 May 2011 19:23:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="641023309"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2011 19:23:41 -0700
Message-Id: <cover.1305080470.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 10 May 2011 19:21:10 -0700
Date: Tue, 10 May 2011 19:23:44 -0700
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] one high prio bugfix
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
X-List-Received-Date: Wed, 11 May 2011 02:23:42 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/bugfixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/bugfixes

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  poky-defaults: fix defaults for libgcc recipes

 meta/conf/distro/include/poky-default.inc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

-- 
1.7.2.2


