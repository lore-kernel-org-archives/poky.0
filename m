Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A39EC4C800A8
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 23:21:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Feb 2011 21:21:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,484,1291622400"; d="scan'208";a="708811407"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 16 Feb 2011 21:21:01 -0800
Message-Id: <cover.1297919871.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 16 Feb 2011 21:17:51 -0800
Date: Wed, 16 Feb 2011 21:21:00 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] perl-native parallel build issue fix
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
X-List-Received-Date: Thu, 17 Feb 2011 05:21:01 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Richard,

This patch is found to be fixing the parallel build issue found today on 40 way system. Need more testing to confirm fixing. Darren is running a build to 
verify.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  perl-native: fix parallel build

 .../perl/perl-5.12.2/parallel_build_fix.patch      |   18 ++++++++++++++++++
 meta/recipes-devtools/perl/perl-native_5.12.2.bb   |    3 ++-
 meta/recipes-devtools/perl/perl_5.12.2.bb          |    3 ++-
 3 files changed, 22 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch

-- 
1.7.3.4


