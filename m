Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 597754C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 01:40:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2010 23:39:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,212,1291622400"; d="scan'208";a="586126440"
Received: from unknown (HELO localhost) ([10.255.13.77])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2010 23:39:58 -0800
Message-Id: <cover.1293003470.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Tue, 21 Dec 2010 23:37:50 -0800
Date: Tue, 21 Dec 2010 23:39:56 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/4] Consolidated Pull and World Fixes
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
X-List-Received-Date: Wed, 22 Dec 2010 07:40:00 -0000

Richard,

These are a couple of fixes that work toward getting World to
build clean along with a fix to the send-pull-request script and
the emenlow reorg getting it toward the BSP standard

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Darren Hart (1):
  send-pull-request: allow users to select git-send-email or sendmail

Saul Wold (2):
  apt: update use-host patch to support x86_64
  apr: update x86_64 site config file

Tom Zanussi (1):
  meta-emenlow: update to the new BSP layout

 meta-emenlow/README                                |   78 ++++++++++++++++++++
 meta-emenlow/conf/layer.conf                       |    4 +-
 meta-emenlow/conf/machine/emenlow.conf             |    3 +
 .../formfactor/formfactor/emenlow/machconfig       |    0
 .../formfactor/formfactor_0.0.bbappend             |    0
 .../libdrm-poulsbo-2.3.0/libdrm-poulsbo.patch      |    0
 .../libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb         |    0
 .../libva-0.31.0/033_g45_add_rgba_subpic.patch     |    0
 .../034_g45_fix_return_for_unimpl.patch            |    0
 .../035_g45_add_yv12_image_format.patch            |    0
 .../libva-0.31.0/036_g45_add_vaGetImage.patch      |    0
 .../libva-0.31.0/037_g45_add_vaPutImage.patch      |    0
 .../038_g45_vaPutSurface_cliprects.patch           |    0
 .../libva-0.31.0/102_attribute_visibility.patch    |    0
 .../libva/libva-0.31.0/103_fix_vainfo_deps.patch   |    0
 .../104_fix_libva_pkgconfig_deps.patch             |    0
 .../105_dont_search_LIBGL_DRIVERS_PATH.patch       |    0
 .../libva/libva-0.31.0/108_drivers_path.patch      |    0
 .../libva-0.31.0/203_fix_fglrx_detection.patch     |    0
 .../libva-0.31.0/204_check_ATIFGLEXTENSION.patch   |    0
 .../libva/libva-0.31.0/300_sds_version.patch       |    0
 .../libva/libva-0.31.0/301_vdpau_mpeg4.patch       |    0
 .../320_move_vaPutSurface_flags_def.patch          |    0
 .../libva/libva-0.31.0/321_libva_glx.base.patch    |    0
 .../libva/libva-0.31.0/322_libva_glx.patch         |    0
 .../libva/libva-0.31.0/390_compat.base.patch       |    0
 .../libva/libva-0.31.0/391_compat.patch            |    0
 .../libva/libva-0.31.0/392_compat.dso.patch        |    0
 .../libva/libva-0.31.0/libdrm-poulsbo.patch        |    0
 .../libva/libva_0.31.0.bb                          |    0
 .../psb-firmware/psb-firmware_0.30.bb              |    0
 .../psb-kernel-source-4.42.0/build.patch           |    0
 .../psb-kernel-source/psb-kernel-source_4.42.0.bb  |    0
 .../xorg-xserver/files/crosscompile.patch          |    0
 .../files/fix_open_max_preprocessor_error.patch    |    0
 .../xorg-xserver/files/libdrm-poulsbo.patch        |    0
 .../xorg-xserver/files/macro_tweak.patch           |    0
 .../xorg-xserver/files/nodolt.patch                |    0
 .../xorg-xserver/xserver-psb_1.7.99.2.bb           |    0
 .../xserver-xf86-config/emenlow/xorg.conf          |    0
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    0
 .../xpsb-glx/xpsb-glx-0.18/cross-compile.patch     |    0
 .../xpsb-glx/xpsb-glx-0.18/libdrmname.patch        |    0
 .../xpsb-glx/xpsb-glx-0.18/native-matypes.patch    |    0
 .../xpsb-glx/xpsb-glx_0.18.bb                      |    0
 .../01_disable_lid_timer.patch                     |    0
 .../xserver-xorg-video-psb-0.32.1/dri-h.patch      |    0
 .../libdrm-poulsbo.patch                           |    0
 .../xserver-xorg-video-psb-0.32.1/psb_mixed.patch  |    0
 .../psb_xvtempfix.patch                            |    0
 .../xserver-xorg-video-psb-0.32.1/stubs.patch      |    0
 .../xserver-xorg-video-psb-0.32.1/visibility.patch |    0
 .../xorg-x11-drv-psb-0.31.0-ignoreacpi.patch       |    0
 .../xorg-x11-drv-psb-0.31.0-xserver17.patch        |    0
 .../xserver-xorg-video-psb-0.31.0-assert.patch     |    0
 ...rver-xorg-video-psb-0.31.0-comment_unused.patch |    0
 .../xserver-xorg-video-psb-0.31.0-greedy.patch     |    0
 .../xserver-xorg-video-psb-0.31.0-loader.patch     |    0
 .../xserver-xorg-video-psb_0.32.1.bb               |    0
 .../linux/linux-2.6.33.2/defconfig                 |    0
 .../linux/linux-yocto-stable_git.bbappend          |    0
 .../linux/linux_2.6.33.2.bbappend                  |    0
 .../conf/distro/include/poky-default-revisions.inc |    1 -
 .../recipes-devtools/apt/apt-0.7.14/use-host.patch |   20 ++---
 meta/site/x86_64-linux                             |    4 +
 scripts/send-pull-request                          |   69 +++++++++++++-----
 66 files changed, 145 insertions(+), 34 deletions(-)
 create mode 100644 meta-emenlow/README
 create mode 100644 meta-emenlow/binary/.gitignore
 rename meta-emenlow/{recipes => recipes-bsp}/formfactor/formfactor/emenlow/machconfig (100%)
 rename meta-emenlow/{recipes => recipes-bsp}/formfactor/formfactor_0.0.bbappend (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libdrm-poulsbo/libdrm-poulsbo-2.3.0/libdrm-poulsbo.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/033_g45_add_rgba_subpic.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/034_g45_fix_return_for_unimpl.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/035_g45_add_yv12_image_format.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/036_g45_add_vaGetImage.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/037_g45_add_vaPutImage.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/038_g45_vaPutSurface_cliprects.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/102_attribute_visibility.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/103_fix_vainfo_deps.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/104_fix_libva_pkgconfig_deps.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/105_dont_search_LIBGL_DRIVERS_PATH.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/108_drivers_path.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/203_fix_fglrx_detection.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/204_check_ATIFGLEXTENSION.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/300_sds_version.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/301_vdpau_mpeg4.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/320_move_vaPutSurface_flags_def.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/321_libva_glx.base.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/322_libva_glx.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/390_compat.base.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/391_compat.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/392_compat.dso.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva-0.31.0/libdrm-poulsbo.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/libva/libva_0.31.0.bb (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/psb-firmware/psb-firmware_0.30.bb (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/psb-kernel-source/psb-kernel-source-4.42.0/build.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/psb-kernel-source/psb-kernel-source_4.42.0.bb (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xorg-xserver/files/crosscompile.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xorg-xserver/files/fix_open_max_preprocessor_error.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xorg-xserver/files/libdrm-poulsbo.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xorg-xserver/files/macro_tweak.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xorg-xserver/files/nodolt.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xorg-xserver/xserver-psb_1.7.99.2.bb (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xorg-xserver/xserver-xf86-config/emenlow/xorg.conf (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xorg-xserver/xserver-xf86-config_0.1.bbappend (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xpsb-glx/xpsb-glx-0.18/cross-compile.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xpsb-glx/xpsb-glx-0.18/libdrmname.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xpsb-glx/xpsb-glx-0.18/native-matypes.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xpsb-glx/xpsb-glx_0.18.bb (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/01_disable_lid_timer.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/dri-h.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/libdrm-poulsbo.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_mixed.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_xvtempfix.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/stubs.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/visibility.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_unused.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.patch (100%)
 rename meta-emenlow/{recipes => recipes-graphics}/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb (100%)
 rename meta-emenlow/{recipes => recipes-kernel}/linux/linux-2.6.33.2/defconfig (100%)
 rename meta-emenlow/{recipes => recipes-kernel}/linux/linux-yocto-stable_git.bbappend (100%)
 rename meta-emenlow/{recipes => recipes-kernel}/linux/linux_2.6.33.2.bbappend (100%)


