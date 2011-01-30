Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB9674C80050
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 20:25:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Jan 2011 18:25:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,398,1291622400"; d="scan'208";a="652489510"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2011 18:25:21 -0800
Message-Id: <cover.1296354078.git.dexuan.cui@intel.com>
Old-Date: Sun, 30 Jan 2011 10:21:18 +0800
Date: Sun, 30 Jan 2011 10:24:36 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 30: PULL 0/1] RESEND: upgrade for xkeyboard-config
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
X-List-Received-Date: Sun, 30 Jan 2011 02:25:22 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Hi Saul,
In my previous pull request for xkeyboard-config, I removed the 2 lines

SECTION = "x11/libs"
DEPENDS = "intltool xkbcomp-native glib-2.0"

from the recipe of xkeyboard-config accidently. I don't know why I made
this mistake -- maybe I was not careful enough when rebasing... Sorry!

Thank Joshua Lock for pointing this out!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (1):
  xkeyboard-config: upgrade from 2.0 to 2.1

 ...board-config_2.0.bb => xkeyboard-config_2.1.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{xkeyboard-config_2.0.bb => xkeyboard-config_2.1.bb} (83%)

-- 
1.7.2


