Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22B8F4C80FD4
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:26:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Dec 2010 06:26:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="365818251"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by azsmga001.ch.intel.com with ESMTP; 23 Dec 2010 06:26:37 -0800
Message-Id: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 06:20:03 -0800
Date: Thu, 23 Dec 2010  6:26:36 -0800
To: poky@yoctoproject.org
Subject: [PATCH 00/28] Consolidated Pull & Enable LIC_FILES_CHKSUM as Error
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
X-List-Received-Date: Thu, 23 Dec 2010 14:26:39 -0000

This request has more of worlds building across all acrhes
and enable the LIC_FILES_CHKSUM check as an ERROR

This also has the meta-emenlow reorg first step, next step will 
be to move it to meta-intel

Sau!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/stage
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/stage

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Bruce Ashfield (4):
  linux-yocto-stable: fix qemux86 branch name
  qemu: match kernel headers to preferred kernel
  linux-yocto: update to 2.6.37-rc6
  linux-yocto: add dropped qemuppc configuration

Darren Hart (1):
  send-pull-request: allow users to select git-send-email or sendmail

Saul Wold (19):
  insane.bbclass: make LIC_FILES_CHKSUM failures report errors
  apr: add configure for NODELAY to mips-common
  connman: Update to 0.64 to solve build issue with .37 kernel headers
  db: add LIC_FILES_CHKSUM
  xf86-input-vmmouse: add COMPATIBLE_HOST set to x86*
  perl: Add LIC_FILES_CHKSUM to native recipe
  python-pygobject: remove older install of generate-constants and add
    BBCLASSEXTEND
  guilt: add LIC_FILES_CHKSUM
  desktop-file-utils: Add LIC_FILES_CHKSUM
  icon-naming-utils: Add LIC_FILES_CHKSUM
  python: Add LIC_FILES_CHKSUM
  unifdef Add LIC_FILES_CHKSUM
  tzcode: Add LIC_FILES_CHKSUM
  bootst-jam:  Add LIC_FILES_CHKSUM
  gdb: Add LIC_FILE_CHKSUMS
  qemu-helper: Add LIC_FILE_CHKSUMS
  gtk: Add LIC_FILES_CHKSUM
  xserver-xf86: Add LIC_FILES_CHKSUM
  linux-yocto: Add LIC_FILES_CHKSUM

Tom Zanussi (1):
  meta-emenlow: update to the new BSP layout

Zhai Edwin (3):
  matchbox-keyboard: Make as singleton
  matchbox-stroke: Make as singleton
  qemu: Add some checks before enabling KVM

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
 meta/classes/insane.bbclass                        |    8 +-
 .../conf/distro/include/poky-default-revisions.inc |   27 +++----
 meta/conf/machine/include/qemu.inc                 |    2 +-
 .../connman/{connman-0.63 => connman-0.64}/connman |    0
 .../{connman-0.63 => connman-0.64}/dbusperms.patch |    0
 .../fix-shutdown-ap-disconnect.patch               |    0
 .../connman/{connman_0.63.bb => connman_0.64.bb}   |    4 +-
 .../desktop-file-utils-native_0.15.bb              |    3 +-
 meta/recipes-devtools/gdb/gdb-common.inc           |    4 +
 meta/recipes-devtools/guilt/guilt-native_0.33.bb   |    6 +-
 .../icon-naming-utils-native_0.8.7.bb              |    2 +
 meta/recipes-devtools/perl/perl-native_5.8.8.bb    |    3 +
 .../recipes-devtools/python/python-native_2.6.6.bb |    1 +
 .../python/python-pygobject-native_2.27.0.bb       |   15 ----
 .../python/python-pygobject_2.27.0.bb              |    2 +
 .../qemu/qemu-helper-native_1.0.bb                 |    2 +
 .../unifdef/unifdef-native_2.6.18+git.bb           |    2 +
 .../recipes-extended/tzcode/tzcode-native_2009r.bb |    2 +
 meta/recipes-gnome/gtk+/gtk+.inc                   |    2 +
 .../xorg-driver/xf86-input-vmmouse_12.6.10.bb      |    2 +
 .../xorg-xserver/xserver-xf86-common.inc           |    2 +
 .../linux-libc-headers-yocto_git.bb                |   10 +--
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |    2 +-
 meta/recipes-kernel/linux/linux-yocto.inc          |    2 +
 .../matchbox-keyboard/files/single-instance.patch  |   22 ++++++
 .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    1 +
 .../matchbox-stroke/files/single-instance.patch    |   19 +++++
 .../matchbox-stroke/matchbox-stroke_svn.bb         |    1 +
 meta/recipes-support/boost/boost-jam-native.inc    |    2 +
 meta/recipes-support/db/db_4.2.52.bb               |    2 +
 meta/site/mips-common                              |    3 +
 scripts/poky-qemu                                  |   25 ++++++-
 scripts/send-pull-request                          |   69 +++++++++++++-----
 95 files changed, 262 insertions(+), 70 deletions(-)
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
 rename meta/recipes-connectivity/connman/{connman-0.63 => connman-0.64}/connman (100%)
 rename meta/recipes-connectivity/connman/{connman-0.63 => connman-0.64}/dbusperms.patch (100%)
 rename meta/recipes-connectivity/connman/{connman-0.63 => connman-0.64}/fix-shutdown-ap-disconnect.patch (100%)
 rename meta/recipes-connectivity/connman/{connman_0.63.bb => connman_0.64.bb} (80%)
 delete mode 100644 meta/recipes-devtools/python/python-pygobject-native_2.27.0.bb
 create mode 100644 meta/recipes-sato/matchbox-keyboard/files/single-instance.patch
 create mode 100644 meta/recipes-sato/matchbox-stroke/files/single-instance.patch

-- 
1.7.2.3


