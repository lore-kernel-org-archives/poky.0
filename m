Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9742B4C800A8
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 13:58:19 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Feb 2011 11:58:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,481,1291622400"; d="scan'208";a="888133200"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 16 Feb 2011 11:58:08 -0800
Message-Id: <cover.1297886129.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 16 Feb 2011 11:55:29 -0800
Date: Wed, 16 Feb 2011 11:58:08 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] perl recipes enable parallel make
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
X-List-Received-Date: Wed, 16 Feb 2011 19:58:19 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Tested this on all architectures, and it did not break a thing.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  perl perl-native: turn on parallel make

 meta/recipes-devtools/perl/perl-native_5.12.2.bb |    2 --
 meta/recipes-devtools/perl/perl_5.12.2.bb        |    2 --
 2 files changed, 0 insertions(+), 4 deletions(-)

-- 
1.7.3.4


