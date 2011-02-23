Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB7314C808E5
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 22:55:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Feb 2011 20:55:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,214,1297065600"; d="scan'208";a="393295282"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by azsmga001.ch.intel.com with ESMTP; 23 Feb 2011 20:55:57 -0800
Message-Id: <cover.1298499949.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 23 Feb 2011 14:25:49 -0800
Date: Wed, 23 Feb 2011 14:26:39 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] perl parallel build fix
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
X-List-Received-Date: Thu, 24 Feb 2011 04:55:59 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  perl: import parallel build fixes from upstream git tree

 .../perl/perl-5.12.2/parallel_build_fix.patch      |   18 -
 .../perl/perl-5.12.2/parallel_build_fix_1.patch    |   25 +
 .../perl/perl-5.12.2/parallel_build_fix_2.patch    |   22 +
 .../perl/perl-5.12.2/parallel_build_fix_3.patch    | 6583 ++++++++++++++++++++
 meta/recipes-devtools/perl/perl-native_5.12.2.bb   |    6 +-
 meta/recipes-devtools/perl/perl_5.12.2.bb          |    6 +-
 6 files changed, 6638 insertions(+), 22 deletions(-)
 delete mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix_1.patch
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix_2.patch
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix_3.patch

-- 
1.7.2.2


