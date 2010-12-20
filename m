Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB78F4C808B0
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 12:47:56 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Dec 2010 10:47:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="870154612"
Received: from unknown (HELO localhost) ([10.255.14.34])
	by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2010 10:47:54 -0800
Message-Id: <cover.1292870600.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Mon, 20 Dec 2010 12:43:20 -0600
To: poky@yoctoproject.org
Subject: [PATCH 0/1] Update emenlow with new BSP layout
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
X-List-Received-Date: Mon, 20 Dec 2010 18:47:57 -0000

This changes the meta-emenlow layout to match the new Yocto BSP standard.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/emenlow-bsp-layout-update
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/emenlow-bsp-layout-update

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


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
 63 files changed, 83 insertions(+), 3 deletions(-)
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


