Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DE954C80FA4
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 03:11:09 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2011 01:11:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,338,1291622400"; d="scan'208";a="648105710"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2011 01:11:09 -0800
Message-ID: <4D35592C.5080609@linux.intel.com>
Date: Tue, 18 Jan 2011 01:11:08 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] Consolidated Pull Request 1/17
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
X-List-Received-Date: Tue, 18 Jan 2011 09:11:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

This has been built and test with ARM (found past failure and works 
now), bit change set is the Xserver update and changing the logo for 
psplash.

There is also an update to pseudo, so if we see any permission issue, 
please let me know soonest.

Thanks
	Sau!



Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Jessica Zhang (1):
   meta-toolchain-sdk: rename tarball to toolchain-gmae

Mark Hatle (2):
   pseudo: Update to the latest upstream version
   Workaround issue with latest version of pseudo.

Mei Lei (1):
   psplash_svn.bb: Change poky boot logo to yocto logo

Saul Wold (3):
   task-sdk-host: add libtool-nativesdk to meta-toolchain
   puzzles: SRC_URI Checksum disabled
   distro-tracking: update manual checking

Scott Rifenbark (1):
   documentation/yocto-project-qs:  Updated the Packages section.

Yu Ke (19):
   xhost: upgrade to 1.0.4
   mkfontdir: upgrade to 1.0.6
   xinit: upgrade to 1.3.0
   bigreqsproto: upgrade to 1.1.1
   xprop: upgrade to 1.2.0
   mkfontscale: upgrade to 1.0.8
   xdpyinfo: upgrade to 1.2.0
   xf86-input-keyboard: upgrade to 1.5.0
   xkbcomp: upgrade to 1.2.0
   xf86-input-evdev: upgrade to 2.6.0
   xf86-input-synaptics: upgrade to 1.3.0
   libdrm: upgrade to 2.4.23
   xwininfo: upgrade to 1.1.1
   xf86-video-intel: upgrade to 2.14.0
   cairo: upgrade to 1.10.2
   mesa: upgrade to mesa 7.10
   mesa-glsl: add mesa glsl 7.8.2
   mesa: add mesa 7.8.2
   xserver-xf86-dri-lite: upgrade to 1.9.3

  .../yocto-project-qs/yocto-project-qs.xml          |    5 +-
  .../conf/distro/include/distro_tracking_fields.inc |   27 +-
  .../conf/distro/include/poky-default-revisions.inc |    2 +-
  .../distro/include/preferred-xorg-versions.inc     |   30 +-
  meta/recipes-core/meta/meta-toolchain-sdk.bb       |    6 +-
  meta/recipes-core/psplash/files/psplash-poky-img.h | 1013 
++++++++++++++++++++
  meta/recipes-core/psplash/psplash_svn.bb           |    9 +-
  meta/recipes-core/tasks/task-sdk-host.bb           |    1 +
  .../895fa7e359e8026a608fba052c2994e42901e45f.patch |  235 -----
  .../pseudo/pseudo/pseudo-exec-crash.patch          |   20 +
  meta/recipes-devtools/pseudo/pseudo_git.bb         |    3 +-
  .../cairo/{cairo_1.10.0.bb => cairo_1.10.2.bb}     |    6 +-
  .../installtests.patch                             |    0
  .../drm/{libdrm_2.4.22.bb => libdrm_2.4.23.bb}     |    4 +-
  meta/recipes-graphics/mesa/mesa-common.inc         |    4 +-
  .../mesa/mesa-dri-glsl-native_7.8.2.bb             |   27 +
  .../mesa/mesa-dri-glsl-native_7.9.bb               |   25 -
  .../mesa/{mesa-dri_7.9.bb => mesa-dri_7.10.bb}     |   10 +-
  meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |   59 ++
  .../{mkfontdir_1.0.5.bb => mkfontdir_1.0.6.bb}     |    6 +-
  .../recipes-graphics/xorg-app/mkfontscale_1.0.7.bb |   12 -
  .../recipes-graphics/xorg-app/mkfontscale_1.0.8.bb |   12 +
  .../{xdpyinfo_1.1.0.bb => xdpyinfo_1.2.0.bb}       |    6 +-
  meta/recipes-graphics/xorg-app/xhost_1.0.3.bb      |   10 -
  meta/recipes-graphics/xorg-app/xhost_1.0.4.bb      |   10 +
  .../xorg-app/{xinit_1.2.1.bb => xinit_1.3.0.bb}    |    4 +-
  .../xorg-app/xkbcomp/cross-compile-fix.patch       |   35 +
  .../{xkbcomp_1.1.1.bb => xkbcomp_1.2.0.bb}         |    6 +-
  meta/recipes-graphics/xorg-app/xprop_1.1.0.bb      |   13 -
  meta/recipes-graphics/xorg-app/xprop_1.2.0.bb      |   13 +
  .../{xwininfo_1.1.0.bb => xwininfo_1.1.1.bb}       |    4 +-
  ...ut-evdev_2.5.0.bb => xf86-input-evdev_2.6.0.bb} |    4 +-
  .../xorg-driver/xf86-input-keyboard_1.4.0.bb       |   10 -
  .../xorg-driver/xf86-input-keyboard_1.5.0.bb       |   10 +
  .../xorg-driver/xf86-input-synaptics_1.2.1.bb      |   10 -
  .../xorg-driver/xf86-input-synaptics_1.3.0.bb      |   16 +
  ...-intel_2.13.0.bb => xf86-video-intel_2.14.0.bb} |    4 +-
  ...bigreqsproto_1.1.0.bb => bigreqsproto_1.1.1.bb} |    6 +-
  ...ite_1.9.2.bb => xserver-xf86-dri-lite_1.9.3.bb} |    4 +-
  meta/recipes-sato/puzzles/puzzles_r9076.bb         |    5 +-
  40 files changed, 1302 insertions(+), 384 deletions(-)
  create mode 100644 meta/recipes-core/psplash/files/psplash-poky-img.h
  delete mode 100644 
meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch
  create mode 100644 
meta/recipes-devtools/pseudo/pseudo/pseudo-exec-crash.patch
  rename meta/recipes-graphics/cairo/{cairo_1.10.0.bb => 
cairo_1.10.2.bb} (90%)
  rename meta/recipes-graphics/drm/{libdrm-2.4.22 => 
libdrm-2.4.23}/installtests.patch (100%)
  rename meta/recipes-graphics/drm/{libdrm_2.4.22.bb => 
libdrm_2.4.23.bb} (54%)
  create mode 100644 
meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.8.2.bb
  delete mode 100644 meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.9.bb
  rename meta/recipes-graphics/mesa/{mesa-dri_7.9.bb => 
mesa-dri_7.10.bb} (83%)
  create mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
  rename meta/recipes-graphics/xorg-app/{mkfontdir_1.0.5.bb => 
mkfontdir_1.0.6.bb} (62%)
  delete mode 100644 meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb
  create mode 100644 meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb
  rename meta/recipes-graphics/xorg-app/{xdpyinfo_1.1.0.bb => 
xdpyinfo_1.2.0.bb} (56%)
  delete mode 100644 meta/recipes-graphics/xorg-app/xhost_1.0.3.bb
  create mode 100644 meta/recipes-graphics/xorg-app/xhost_1.0.4.bb
  rename meta/recipes-graphics/xorg-app/{xinit_1.2.1.bb => 
xinit_1.3.0.bb} (59%)
  create mode 100644 
meta/recipes-graphics/xorg-app/xkbcomp/cross-compile-fix.patch
  rename meta/recipes-graphics/xorg-app/{xkbcomp_1.1.1.bb => 
xkbcomp_1.2.0.bb} (61%)
  delete mode 100644 meta/recipes-graphics/xorg-app/xprop_1.1.0.bb
  create mode 100644 meta/recipes-graphics/xorg-app/xprop_1.2.0.bb
  rename meta/recipes-graphics/xorg-app/{xwininfo_1.1.0.bb => 
xwininfo_1.1.1.bb} (58%)
  rename meta/recipes-graphics/xorg-driver/{xf86-input-evdev_2.5.0.bb => 
xf86-input-evdev_2.6.0.bb} (54%)
  delete mode 100644 
meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb
  create mode 100644 
meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb
  delete mode 100644 
meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
  create mode 100644 
meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb
  rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.13.0.bb 
=> xf86-video-intel_2.14.0.bb} (72%)
  rename meta/recipes-graphics/xorg-proto/{bigreqsproto_1.1.0.bb => 
bigreqsproto_1.1.1.bb} (59%)
  rename 
meta/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.2.bb => 
xserver-xf86-dri-lite_1.9.3.bb} (75%)



-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


