Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D2BBE4C810B1
	for <poky@yoctoproject.org>; Thu, 12 May 2011 16:03:45 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 May 2011 14:03:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; d="scan'208";a="435187753"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 14:03:45 -0700
Message-Id: <cover.1305234110.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 14:01:50 -0700
Date: Thu, 12 May 2011 14:03:44 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] a fix for gcc 4.6.0 target recipe
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
X-List-Received-Date: Thu, 12 May 2011 21:03:46 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  gcc: fix target gcc runtime issue

 meta/recipes-devtools/gcc/gcc-4.6.0.inc          |    2 +-
 meta/recipes-devtools/gcc/gcc-package-target.inc |    1 +
 meta/recipes-devtools/gcc/gcc_4.3.3.bb           |    2 +-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb           |    2 +-
 meta/recipes-devtools/gcc/gcc_csl-arm-2008q1.bb  |    2 +-
 5 files changed, 5 insertions(+), 4 deletions(-)

-- 
1.7.3.4


