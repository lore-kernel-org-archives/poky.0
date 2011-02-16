Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89BEC4C80A59
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 03:36:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Feb 2011 01:36:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,479,1291622400"; d="scan'208";a="887951334"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga001.fm.intel.com with ESMTP; 16 Feb 2011 01:36:09 -0800
Message-Id: <cover.1297848777.git.dexuan.cui@intel.com>
Old-Date: Wed, 16 Feb 2011 17:32:57 +0800
Date: Wed, 16 Feb 2011 17:35:09 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 0/1] fix the build of mklibs-native on Ubuntu 9.04
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
X-List-Received-Date: Wed, 16 Feb 2011 09:36:10 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

libc6-dev in Ubuntu 9.04 is so old that the elf.h doesn't define
STT_GNU_IFUNC, so we have to define it ourselves.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (1):
  mklibs-native: fix the build on Ubuntu 9.04 by defining STT_GNU_IFUNC

 .../mklibs/files/fix_STT_GNU_IFUNC.patch           |   23 ++++++++++++++++++++
 .../mklibs/mklibs-native_0.1.31.bb                 |    3 +-
 2 files changed, 25 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/mklibs/files/fix_STT_GNU_IFUNC.patch

-- 
1.7.2


