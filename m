Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id AB1CB4C811D5
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 00:12:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Jan 2011 22:12:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="381994511"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 30 Jan 2011 22:12:11 -0800
Message-Id: <cover.1296453989.git.dexuan.cui@intel.com>
Old-Date: Mon, 31 Jan 2011 14:06:29 +0800
Date: Mon, 31 Jan 2011 14:11:27 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 31: pixman: PULL 0/2] pixman: downgrade from development release 0.21.4 to stable release 0.20.2
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
X-List-Received-Date: Mon, 31 Jan 2011 06:12:32 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

pixman's stable releases have even minor version numbers, e.g., 0.18.x, 0.20.x.
Odd minor version numbers mean development snapshots that may contain bugs and
experimental features.
The next stable release should be 0.22.0.

Sorry for my previous ignorance about this and thanks Koen Kooi's reminder.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (2):
  pixman: downgrade from development release 0.21.4 to stable release
    0.20.2
  distro_tracking_fields.inc: update pixman

 .../conf/distro/include/distro_tracking_fields.inc |    3 ++-
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{pixman_0.21.4.bb => pixman_0.20.2.bb}         |    7 ++++---
 3 files changed, 7 insertions(+), 5 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{pixman_0.21.4.bb => pixman_0.20.2.bb} (70%)

-- 
1.7.2


