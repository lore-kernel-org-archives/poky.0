Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78D4D4C8009A
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 14:22:40 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Mar 2011 12:22:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,304,1297065600"; d="scan'208";a="611957307"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 11 Mar 2011 12:22:39 -0800
Message-Id: <cover.1299874717.git.nitin.a.kamble@intel.com>
Old-Date: Fri, 11 Mar 2011 12:18:37 -0800
Date: Fri, 11 Mar 2011 12:22:39 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] perl parallel build fix - corrected
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
X-List-Received-Date: Fri, 11 Mar 2011 20:22:40 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

I missed rebasing an existing perl patch which gets affected by the parallel build fix patches. It is included in this request.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  perl: another set of parallel build fixes

 .../perl/perl-5.12.2/Makefile.SH.patch             |   44 +-
 .../perl/perl-5.12.2/parallel_build_fix_4.patch    |   55 +++
 .../perl/perl-5.12.2/parallel_build_fix_5.patch    |  428 ++++++++++++++++++++
 .../perl/perl-5.12.2/parallel_build_fix_6.patch    |  156 +++++++
 meta/recipes-devtools/perl/perl-native_5.12.2.bb   |    5 +-
 meta/recipes-devtools/perl/perl_5.12.2.bb          |    5 +-
 6 files changed, 669 insertions(+), 24 deletions(-)
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix_4.patch
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix_5.patch
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix_6.patch

-- 
1.7.3.4


