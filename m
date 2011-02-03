Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3AC44C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 16:45:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Feb 2011 14:45:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,422,1291622400"; d="scan'208";a="599290010"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2011 14:45:42 -0800
Message-Id: <cover.1296772940.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 3 Feb 2011 14:42:20 -0800
Date: Thu, 03 Feb 2011 14:45:42 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/2] mklibs optimization and mesa-demos dso linking fix
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
X-List-Received-Date: Thu, 03 Feb 2011 22:45:42 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The mesa-demos recipe's dso linking issue is fixed in 1 commit.
and the other commit is for adding the mklibs library optimization in poky 
tree, and enabling it for poky-image-minimal image.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (2):
  image-mklibs.bbclass: add the library optimization functionality
  mesa-demos: fix build issue with gcc dso linking change

 meta/classes/image-mklibs.bbclass                  |   70 ++++++++++++++++++++
 meta/conf/local.conf.sample                        |   10 +++-
 .../mesa-demos/dso_linking_change_build_fix.patch  |   23 +++++++
 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb     |    5 +-
 4 files changed, 105 insertions(+), 3 deletions(-)
 create mode 100644 meta/classes/image-mklibs.bbclass
 create mode 100644 meta/recipes-graphics/mesa/mesa-demos/dso_linking_change_build_fix.patch

-- 
1.7.3.4


