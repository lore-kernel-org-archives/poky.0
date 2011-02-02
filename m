Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C06A54C800A3
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 12:55:50 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p12ItnQ2012855
	for <poky@yoctoproject.org>; Wed, 2 Feb 2011 10:55:49 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 2 Feb 2011 10:55:49 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 2 Feb 2011 10:55:48 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Wed,  2 Feb 2011 12:52:19 -0600
Message-Id: <cover.1296672559.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 02 Feb 2011 18:55:49.0042 (UTC)
	FILETIME=[CE6B5120:01CBC30A]
Subject: [PATCH 0/3] Misc changes that to fix various issues
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
X-List-Received-Date: Wed, 02 Feb 2011 18:55:52 -0000

This request includes three separate changes.  

1) The first simply adds the cross "NM" to the environment.  Some packages 
were found to be using the host system "nm", causing failures.

2) Update the summary and description information for most of the graphics 
packages

3) Update the way the SUMMARY and DESCRIPTION is used to create the automatic
packages-split files.

This has all been test in a bitbake -k world build -- only expected 
failures have occured!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/wrsync
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/wrsync

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (3):
  bitbake.conf: Fix missing NM definition
  recipes-graphics: Add more detailed SUMMARY and DESCRIPTIONS
  bitbake.conf & package.bbclass: Use default SUMMARY and DESCRIPTION

 meta/classes/package.bbclass                       |    5 +++-
 meta/conf/bitbake.conf                             |   29 ++++++++++++++-----
 meta/recipes-graphics/cairo/cairo.inc              |   12 +++++---
 meta/recipes-graphics/cairo/cairo_1.10.2.bb        |   20 +++++++++++--
 meta/recipes-graphics/directfb/directfb.inc        |    1 +
 meta/recipes-graphics/drm/libdrm.inc               |    7 +++-
 .../fontconfig/fontconfig_2.8.0.bb                 |   12 +++++++-
 meta/recipes-graphics/mesa/mesa-common.inc         |    9 +++++-
 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb     |    4 ++-
 meta/recipes-graphics/pango/pango.inc              |    8 +++--
 meta/recipes-graphics/tslib/tslib_1.0.bb           |    6 +++-
 .../ttf-fonts/liberation-fonts_1.04.bb             |    4 ++-
 .../ttf-fonts/liberation-fonts_1.06.bb             |    5 +++-
 .../ttf-fonts/ttf-bitstream-vera_1.10.bb           |    7 ++++-
 meta/recipes-graphics/x11-common/x11-common_0.1.bb |    2 +-
 meta/recipes-graphics/xcb/libxcb.inc               |    5 +++-
 meta/recipes-graphics/xcb/xcb-proto.inc            |    6 +++-
 meta/recipes-graphics/xcb/xcb-util.inc             |    9 +++++-
 meta/recipes-graphics/xorg-app/mkfontdir_1.0.6.bb  |    8 +++++-
 .../recipes-graphics/xorg-app/mkfontscale_1.0.8.bb |    8 +++++-
 meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb    |    7 ++++-
 meta/recipes-graphics/xorg-app/xauth_1.0.5.bb      |    2 +-
 meta/recipes-graphics/xorg-app/xdpyinfo_1.2.0.bb   |    9 +++++-
 meta/recipes-graphics/xorg-app/xhost_1.0.4.bb      |   10 ++++++-
 meta/recipes-graphics/xorg-app/xinit_1.3.0.bb      |    9 +++++-
 meta/recipes-graphics/xorg-app/xkbcomp_1.2.0.bb    |    7 +++-
 meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb    |    9 +++++-
 meta/recipes-graphics/xorg-app/xprop_1.2.0.bb      |    8 +++++-
 meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb     |    7 ++++-
 meta/recipes-graphics/xorg-app/xset_1.2.1.bb       |    6 +++-
 meta/recipes-graphics/xorg-app/xvinfo_1.1.1.bb     |    7 ++++-
 meta/recipes-graphics/xorg-app/xwininfo_1.1.1.bb   |    7 ++++-
 .../xorg-driver/xf86-input-evdev_2.6.0.bb          |   12 +++++++-
 .../xorg-driver/xf86-input-keyboard_1.5.0.bb       |    7 ++++-
 .../xorg-driver/xf86-input-keyboard_git.bb         |    7 ++++-
 .../xorg-driver/xf86-input-mouse_1.6.0.bb          |    8 +++++-
 .../xorg-driver/xf86-input-mouse_git.bb            |    8 +++++-
 .../xorg-driver/xf86-input-synaptics_1.3.0.bb      |    8 +++++-
 .../xorg-driver/xf86-input-synaptics_git.bb        |    8 +++++-
 .../xorg-driver/xf86-video-intel_2.14.0.bb         |    7 ++++-
 .../xorg-driver/xf86-video-intel_git.bb            |    8 +++++-
 .../xorg-driver/xf86-video-omapfb_git.bb           |    6 +++-
 .../xorg-driver/xf86-video-vesa_2.3.0.bb           |    8 +++++-
 .../xorg-driver/xf86-video-vmware_11.0.3.bb        |    4 ++-
 meta/recipes-graphics/xorg-font/encodings_1.0.4.bb |    6 +++-
 .../xorg-font/xorg-minimal-fonts.bb                |    3 +-
 meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb     |    7 ++++-
 meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb |    5 +++-
 meta/recipes-graphics/xorg-lib/libice_1.0.7.bb     |    8 +++++-
 .../xorg-lib/libpciaccess_0.12.0.bb                |    5 +++-
 meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    8 +++++-
 meta/recipes-graphics/xorg-lib/libx11-diet_1.3.bb  |    3 ++
 meta/recipes-graphics/xorg-lib/libx11-diet_git.bb  |    3 ++
 .../recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb |    2 +
 meta/recipes-graphics/xorg-lib/libx11-trim_git.bb  |    2 +
 meta/recipes-graphics/xorg-lib/libx11.inc          |    6 +++-
 meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb     |    6 +++-
 .../recipes-graphics/xorg-lib/libxcalibrate_git.bb |    5 +++-
 .../xorg-lib/libxcomposite_0.4.3.bb                |   11 +++++++-
 .../recipes-graphics/xorg-lib/libxcursor_1.1.11.bb |    8 +++++-
 meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb |   13 ++++++++-
 meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb   |    8 +++++-
 meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb    |   10 ++++++-
 meta/recipes-graphics/xorg-lib/libxext_git.bb      |   11 +++++++-
 meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb  |    7 ++++-
 meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb   |    6 +++-
 .../xorg-lib/libxfontcache_1.0.5.bb                |    6 +++-
 meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb     |   12 +++++++-
 meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb      |    7 ++++-
 meta/recipes-graphics/xorg-lib/libxi_git.bb        |    8 +++++-
 .../recipes-graphics/xorg-lib/libxinerama_1.1.1.bb |    6 +++-
 meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb |    5 +++-
 meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb     |   10 ++++++-
 meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb      |    5 +++-
 meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb     |    8 +++++-
 .../xorg-lib/libxprintapputil_1.0.1.bb             |    7 ++++-
 .../xorg-lib/libxprintutil_1.0.1.bb                |    7 ++++-
 meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb  |    8 +++++-
 meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb |    8 +++++-
 meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb    |    7 ++++-
 .../xorg-lib/libxscrnsaver_1.2.1.bb                |   10 ++++++-
 meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb      |   12 +++++++-
 meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb   |    6 +++-
 meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb    |    6 +++-
 meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb      |    7 ++++-
 meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb    |    5 +++-
 .../recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb |    8 +++++-
 .../xorg-lib/libxxf86misc_1.0.3.bb                 |    5 +++-
 meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb |    7 ++++-
 meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb    |    7 ++++-
 .../xorg-lib/xkeyboard-config_2.1.bb               |    9 +++++-
 meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb     |   10 +++++--
 .../xorg-proto/bigreqsproto_1.1.1.bb               |    6 +++-
 .../xorg-proto/calibrateproto_git.bb               |    5 +++-
 .../xorg-proto/compositeproto_0.4.2.bb             |    6 ++++
 .../xorg-proto/damageproto_1.2.1.bb                |    7 +++++
 meta/recipes-graphics/xorg-proto/dmxproto_2.3.1.bb |    8 +++++
 meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb  |    8 ++++-
 meta/recipes-graphics/xorg-proto/dri2proto_git.bb  |    8 ++++-
 meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb  |    6 +++-
 .../xorg-proto/fixesproto_4.1.2.bb                 |    8 +++++
 .../xorg-proto/fontcacheproto_0.1.3.bb             |    6 ++++
 .../xorg-proto/fontsproto_2.1.1.bb                 |    6 ++++
 meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb |    6 ++++
 .../xorg-proto/inputproto_2.0.1.bb                 |    6 ++++
 meta/recipes-graphics/xorg-proto/inputproto_git.bb |    6 ++++
 meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb  |    6 ++++
 .../xorg-proto/printproto_1.0.5.bb                 |    5 +++
 .../xorg-proto/randrproto_1.3.2.bb                 |    6 ++++
 .../xorg-proto/recordproto_1.14.1.bb               |    6 ++++
 .../xorg-proto/renderproto_0.11.1.bb               |    6 ++++
 .../xorg-proto/resourceproto_1.1.1.bb              |    6 ++++
 .../xorg-proto/scrnsaverproto_1.2.1.bb             |    6 ++++
 .../recipes-graphics/xorg-proto/trapproto_3.4.3.bb |    6 ++++
 .../xorg-proto/videoproto_2.3.1.bb                 |    5 +++
 .../xorg-proto/xcmiscproto_1.2.1.bb                |    6 ++++
 .../recipes-graphics/xorg-proto/xextproto_7.1.2.bb |    9 ++++++
 .../xorg-proto/xf86bigfontproto_1.2.0.bb           |    6 ++++
 .../xorg-proto/xf86dgaproto_2.1.bb                 |    7 +++++
 .../xorg-proto/xf86driproto_2.1.1.bb               |    7 +++++
 .../xorg-proto/xf86miscproto_0.9.3.bb              |    7 +++++
 .../xorg-proto/xf86rushproto_1.1.2.bb              |    6 ++++
 .../xorg-proto/xf86vidmodeproto_2.3.1.bb           |    6 ++++
 .../xorg-proto/xineramaproto_1.2.1.bb              |    7 +++++
 meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb  |    5 +++
 .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    6 ++++
 meta/recipes-graphics/xorg-util/imake_1.0.4.bb     |    9 +++++-
 .../recipes-graphics/xorg-util/makedepend_1.0.3.bb |   10 ++++++-
 .../xorg-util/util-macros_1.11.0.bb                |    4 ++-
 meta/recipes-graphics/xrestop/xrestop_0.4.bb       |    3 ++
 meta/recipes-graphics/xtscal/xtscal_0.6.3.bb       |    5 +++-
 131 files changed, 815 insertions(+), 117 deletions(-)

-- 
1.7.3.4


