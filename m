Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 079594C80FA7
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 11:07:19 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Nov 2010 09:07:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,218,1288594800"; d="scan'208";a="350463906"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 18 Nov 2010 09:07:04 -0800
Message-Id: <cover.1290097804.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Fri, 19 Nov 2010 00:30:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/5] upgrade xserver v2
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
X-List-Received-Date: Thu, 18 Nov 2010 17:07:20 -0000

accodring to Saul's comments, V2 patch has the following changes
- add clear explanation on the commit message.
- correct the license check sum and  test it
  against latest poky/master
- add SRI_URI checksum
- mesa/cairo related recpies(mesa, talloc, libxml2,cairo) are still hold,
  as one time build failure are observed. Although the failure
  disappers after build again, it is better to find out the reason
  before submitting it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/upgrade-11-18
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/upgrade-11-18

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (5):
  libdrm: upgrade from 2.4.21 to 2.4.22
  xf86-video-intel: upgrade from 2.12.0 to 2.13.0
  xserver-xf86-dri-lite: upgrade from 1.9.0 rc4 to 1.9.2
  xrandr: upgrade from 1.3.2 to 1.3.4
  pixman: upgrade from 0.18.2 to 0.20.0

 .../distro/include/preferred-xorg-versions.inc     |   10 +++---
 .../installtests.patch                             |    0
 meta/recipes-graphics/drm/libdrm_2.4.21.bb         |    4 --
 meta/recipes-graphics/drm/libdrm_2.4.22.bb         |    7 ++++
 .../xorg-app/xrandr/resolve_symbol_clash.patch     |   33 --------------------
 .../xorg-app/{xrandr_1.3.2.bb => xrandr_1.3.4.bb}  |    3 +-
 ...-intel_2.12.0.bb => xf86-video-intel_2.13.0.bb} |    3 ++
 .../{pixman_0.18.2.bb => pixman_0.20.0.bb}         |    3 ++
 ....8.99.904.bb => xserver-xf86-dri-lite_1.9.2.bb} |    5 ++-
 9 files changed, 24 insertions(+), 44 deletions(-)
 rename meta/recipes-graphics/drm/{libdrm-2.4.21 => libdrm-2.4.22}/installtests.patch (100%)
 delete mode 100644 meta/recipes-graphics/drm/libdrm_2.4.21.bb
 create mode 100644 meta/recipes-graphics/drm/libdrm_2.4.22.bb
 delete mode 100644 meta/recipes-graphics/xorg-app/xrandr/resolve_symbol_clash.patch
 rename meta/recipes-graphics/xorg-app/{xrandr_1.3.2.bb => xrandr_1.3.4.bb} (61%)
 rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.12.0.bb => xf86-video-intel_2.13.0.bb} (67%)
 rename meta/recipes-graphics/xorg-lib/{pixman_0.18.2.bb => pixman_0.20.0.bb} (80%)
 rename meta/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.8.99.904.bb => xserver-xf86-dri-lite_1.9.2.bb} (76%)


