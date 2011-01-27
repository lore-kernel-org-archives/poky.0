Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 667204C81257
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Jan 2011 15:41:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="380951370"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 27 Jan 2011 15:41:19 -0800
Message-Id: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 07:34:47 +0800
Date: Fri, 28 Jan 2011  7:40:38 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 00/16] upgrade for some x11 and sdk recipes
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:34 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

I did incremental/full building(poky-image-sato-sdk and meta-toolchain-gmae)
 on qemux86 and qemux86-64. Sato GUI can boot fine
Most of these changes are filename change and should not cause reguression.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Dexuan Cui <dexuan.cui@intel.com>
---


Dexuan Cui (16):
  gnome-doc-utils: upgrade from 0.20.2 to 0.20.4
  freetype: upgrade from 2.4.3 to 2.4.4
  liburcu: upgrade from 0.4.8 to 0.5.2
  lttng-ust: upgrade from 0.8 to 0.11
  lttng-viewer: upgrade from 0.12.35 to 0.12.36
  pixman: upgrade from 0.21.2 to 0.21.4
  dmxproto: upgrade from 2.3 to 2.3.1
  printproto: upgrade from 1.0.4 to 1.0.5
  xineramaproto: upgrade from 1.2 to 1.2.1
  xf86driproto: upgrade from 2.1.0 to 2.1.1
  xf86vidmodeproto: upgrade from 2.3 to 2.3.1
  libxp: upgrade from 1.0.0 to 1.0.1
  xkeyboard-config: upgrade from 2.0 to 2.1
  libunique: update DESCRIPTION, HOMEPAGE, BUGTRACKER
  preferred-xorg-versions.inc: remove libfs, update xvinfo, pixman,
    dmxproto, printproto, xineramaproto, xf86driproto,
    xf86vidmodeproto, libxp
  distro_tracking_fields.inc: update the info for some recipes

 .../conf/distro/include/distro_tracking_fields.inc |  252 ++++++++++++-------
 .../distro/include/preferred-xorg-versions.inc     |   17 +-
 meta/recipes-gnome/gnome/gnome-doc-utils.inc       |    2 +-
 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb |    7 -
 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.4.bb |    7 +
 meta/recipes-gnome/libunique/libunique_1.1.6.bb    |    7 +-
 .../no-hardcode.patch                              |    0
 .../{freetype_2.4.3.bb => freetype_2.4.4.bb}       |    4 +-
 meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb      |   18 --
 meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb      |   18 ++
 .../{pixman_0.21.2.bb => pixman_0.21.4.bb}         |    6 +-
 ...board-config_2.0.bb => xkeyboard-config_2.1.bb} |    6 +-
 .../{dmxproto_2.3.bb => dmxproto_2.3.1.bb}         |    6 +-
 .../xorg-proto/printproto_1.0.4.bb                 |   12 -
 .../xorg-proto/printproto_1.0.5.bb                 |   12 +
 .../xorg-proto/xf86driproto_2.1.0.bb               |   11 -
 .../xorg-proto/xf86driproto_2.1.1.bb               |   11 +
 ...dmodeproto_2.3.bb => xf86vidmodeproto_2.3.1.bb} |    4 +-
 ...xineramaproto_1.2.bb => xineramaproto_1.2.1.bb} |    6 +-
 .../lttng/{lttng-ust_0.8.bb => lttng-ust_0.11.bb}  |    9 +-
 ...g-viewer_0.12.35.bb => lttng-viewer_0.12.36.bb} |    6 +-
 .../liburcu/{liburcu_0.4.8.bb => liburcu_0.5.2.bb} |    4 +-
 22 files changed, 245 insertions(+), 180 deletions(-)
 delete mode 100644 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb
 create mode 100644 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.4.bb
 rename meta/recipes-graphics/freetype/{freetype-2.4.3 => freetype-2.4.4}/no-hardcode.patch (100%)
 rename meta/recipes-graphics/freetype/{freetype_2.4.3.bb => freetype_2.4.4.bb} (91%)
 delete mode 100644 meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb
 create mode 100644 meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb
 rename meta/recipes-graphics/xorg-lib/{pixman_0.21.2.bb => pixman_0.21.4.bb} (70%)
 rename meta/recipes-graphics/xorg-lib/{xkeyboard-config_2.0.bb => xkeyboard-config_2.1.bb} (76%)
 rename meta/recipes-graphics/xorg-proto/{dmxproto_2.3.bb => dmxproto_2.3.1.bb} (59%)
 delete mode 100644 meta/recipes-graphics/xorg-proto/printproto_1.0.4.bb
 create mode 100644 meta/recipes-graphics/xorg-proto/printproto_1.0.5.bb
 delete mode 100644 meta/recipes-graphics/xorg-proto/xf86driproto_2.1.0.bb
 create mode 100644 meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb
 rename meta/recipes-graphics/xorg-proto/{xf86vidmodeproto_2.3.bb => xf86vidmodeproto_2.3.1.bb} (54%)
 rename meta/recipes-graphics/xorg-proto/{xineramaproto_1.2.bb => xineramaproto_1.2.1.bb} (61%)
 rename meta/recipes-kernel/lttng/{lttng-ust_0.8.bb => lttng-ust_0.11.bb} (68%)
 rename meta/recipes-kernel/lttng/{lttng-viewer_0.12.35.bb => lttng-viewer_0.12.36.bb} (85%)
 rename meta/recipes-support/liburcu/{liburcu_0.4.8.bb => liburcu_0.5.2.bb} (86%)

-- 
1.7.2


