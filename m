Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8518E00303
	for <poky@yoctoproject.org>; Fri, 23 Dec 2011 09:59:01 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Dec 2011 09:59:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="88995709"
Received: from nbuild0.sc.intel.com ([172.25.110.36])
	by azsmga001.ch.intel.com with ESMTP; 23 Dec 2011 09:59:00 -0800
From: nitin.a.kamble@intel.com
To: poky@yoctoproject.org
Date: Fri, 23 Dec 2011 09:58:57 -0800
Message-Id: <cover.1324662983.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [edison 0/1] bugfix for edison
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
X-List-Received-Date: Fri, 23 Dec 2011 17:59:02 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This has commit for fixing gcc ICE for beagleboard target for qt4-x11-free recipe.

Thanks,
Nitin

The following changes since commit 99b17b27d54de9f6b985410db35cc09363b33be1:

  opkg: Fix installation order in feeds with mutiple providers of packages (2011-12-23 09:52:38 -0800)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib nitin/edison
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/edison

Khem Raj (1):
  gcc-4.6: Fix gcc ICE on qt4-x11-free/armv7-a

 meta/recipes-devtools/gcc/gcc-4.6.inc           |    9 ++--
 meta/recipes-devtools/gcc/gcc-4.6/pr47551.patch |   63 +++++++++++++++++++++++
 2 files changed, 68 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.6/pr47551.patch

-- 
1.7.6.4


