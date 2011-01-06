Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D2E154C8086F
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 21:44:03 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2011 19:44:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,281,1291622400"; d="scan'208";a="694048124"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2011 19:44:02 -0800
Message-Id: <cover.1294285114.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Thu, 6 Jan 2011 11:38:34 +0800
Date: Thu, 06 Jan 2011 11:43:46 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/5] fix fix LIC_FILES_CHKSUM for pixman, compositeproto, xproto, inputproto, libdmx
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
X-List-Received-Date: Thu, 06 Jan 2011 03:44:04 -0000

I double checked the 10 recipes I upgraded last night and found the 5 ones'
LIC_FILES_CHKSUM should be fixed.
Previously I carelessly neglected the warning messages as that didn't cause build failure. Sorry!

Hi Saul, you might want to rebase the 5 commits and merge them into the previous ones.

Thanks,
- Dexuan

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (5):
  libdmx: fix LIC_FILES_CHKSUM
  inputproto: fix LIC_FILES_CHKSUM
  xproto: fix LIC_FILES_CHKSUM
  compositeproto: fix LIC_FILES_CHKSUM
  pixman: fix LIC_FILES_CHKSUM

 meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb     |    4 ++--
 meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb    |    2 +-
 .../xorg-proto/compositeproto_0.4.2.bb             |    6 +++---
 .../xorg-proto/inputproto_2.0.1.bb                 |    2 +-
 meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb  |    2 +-
 5 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.7.2


