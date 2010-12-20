Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 864094C8106A
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 12:47:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Dec 2010 10:47:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="870154636"
Received: from unknown (HELO localhost) ([10.255.14.34])
	by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2010 10:47:57 -0800
Message-Id: <9d5e49ea7332f9299f70f5df05699a1819df933a.1292870600.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1292870600.git.tom.zanussi@intel.com>
References: <cover.1292870600.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Mon, 20 Dec 2010 12:24:36 -0600
To: poky@yoctoproject.org
Subject: [PATCH 1/1] meta-emenlow: update to the new BSP layout
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
X-List-Received-Date: Mon, 20 Dec 2010 18:48:00 -0000

This modifies the meta-emenlow BSP layer to reflect the new BSP
standard layout as defined in the latestYocto BSP Developer's Guide.

There's no change in functionality here - this simply moves things
around, adds a README, and makes the SRCREVs local.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
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

diff --git a/meta-emenlow/README b/meta-emenlow/README
new file mode 100644
index 0000000..862af54
--- /dev/null
+++ b/meta-emenlow/README
@@ -0,0 +1,78 @@
+This README file contains information on building the meta-emenlow
+BSP layer using any of the supported machine configurations, and
+booting the images contained in the /binary directory.
+
+If you're only interested in booting the images in the /binary
+directory of a BSP tarball you've downloaded, there's nothing special
+to do - the appropriate images are already in the /binary directory
+depending on which BSP tarball you downloaded.
+
+Please see the corresponding sections below for details.
+
+
+Table of Contents
+=================
+
+ I. Building the meta-emenlow BSP layer
+II. Booting the images in /binary
+
+
+I. Building the meta-emenlow BSP layer
+=======================================
+
+In order to build an image with BSP support for emenlow, you just need
+to check out the poky master branch.
+
+Having done that, you can build an emenlow image by adding the
+location of the meta-emenlow layer to bblayers.conf e.g.:
+
+  yocto/meta-emenlow \
+
+To enable the emenlow layer, add the emenlow MACHINE to local.conf:
+
+  MACHINE ?= "emenlow"
+
+You should then be able to build an emenlow image as such:
+
+  $ source poky-init-build-env
+  $ bitbake poky-image-sato-live
+
+At the end of a successful build, you should have a live image that
+you can boot from a USB flash drive (see instructions on how to do
+that below, in the section 'Booting the images from /binary').
+
+
+II. Booting the images in /binary
+=================================
+
+This BSP contains bootable live images, which can be used to directly
+boot Yocto off of a USB flash drive.
+
+Under Linux, insert a USB flash drive.  Assuming the USB flash drive
+takes device /dev/sdf, use dd to copy the live image to it.  For
+example:
+
+# dd if=poky-image-sato-live-emenlow-20101207053738.hddimg of=/dev/sdf
+# sync
+# eject /dev/sdf
+
+This should give you a bootable USB flash device.  Insert the device
+into a bootable USB socket on the target, and power on.  This should
+result in a system booted to the Sato graphical desktop.
+
+If you want a terminal, use the arrows at the top of the UI to move to
+different pages of available applications, one of which is named
+'Terminal'.  Clicking that should give you a root terminal.
+
+If you want to ssh into the system, you can use the root terminal to
+ifconfig the IP address and use that to ssh in.  The root password is
+empty, so to log in type 'root' for the user name and hit 'Enter' at
+the Password prompt: and you should be in.
+
+----
+
+If you find you're getting corrupt images on the USB (it doesn't show
+the syslinux boot: prompt, or the boot: prompt contains strange
+characters), try doing this first:
+
+# dd if=/dev/zero of=/dev/sdf bs=1M count=512
diff --git a/meta-emenlow/binary/.gitignore b/meta-emenlow/binary/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/meta-emenlow/conf/layer.conf b/meta-emenlow/conf/layer.conf
index 4017787..563b9c8 100644
--- a/meta-emenlow/conf/layer.conf
+++ b/meta-emenlow/conf/layer.conf
@@ -2,8 +2,8 @@
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes/*/*.bb \
-	${LAYERDIR}/recipes/*/*.bbappend"
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "emenlow"
 BBFILE_PATTERN_emenlow := "^${LAYERDIR}/"
diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index b8dea64..d4234ff 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -43,3 +43,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+SRCREV_machine_pn-linux-yocto-stable_emenlow ?= "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
+SRCREV_meta_pn-linux-yocto-stable_emenlow ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
\ No newline at end of file
diff --git a/meta-emenlow/recipes/formfactor/formfactor/emenlow/machconfig b/meta-emenlow/recipes-bsp/formfactor/formfactor/emenlow/machconfig
similarity index 100%
rename from meta-emenlow/recipes/formfactor/formfactor/emenlow/machconfig
rename to meta-emenlow/recipes-bsp/formfactor/formfactor/emenlow/machconfig
diff --git a/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend b/meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
similarity index 100%
rename from meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
rename to meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
diff --git a/meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo-2.3.0/libdrm-poulsbo.patch b/meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo-2.3.0/libdrm-poulsbo.patch
similarity index 100%
rename from meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo-2.3.0/libdrm-poulsbo.patch
rename to meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo-2.3.0/libdrm-poulsbo.patch
diff --git a/meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb b/meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
similarity index 100%
rename from meta-emenlow/recipes/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
rename to meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/033_g45_add_rgba_subpic.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/033_g45_add_rgba_subpic.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/033_g45_add_rgba_subpic.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/033_g45_add_rgba_subpic.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/034_g45_fix_return_for_unimpl.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/034_g45_fix_return_for_unimpl.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/034_g45_fix_return_for_unimpl.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/034_g45_fix_return_for_unimpl.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/035_g45_add_yv12_image_format.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/035_g45_add_yv12_image_format.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/035_g45_add_yv12_image_format.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/035_g45_add_yv12_image_format.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/036_g45_add_vaGetImage.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/036_g45_add_vaGetImage.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/036_g45_add_vaGetImage.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/036_g45_add_vaGetImage.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/037_g45_add_vaPutImage.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/037_g45_add_vaPutImage.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/037_g45_add_vaPutImage.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/037_g45_add_vaPutImage.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/038_g45_vaPutSurface_cliprects.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/038_g45_vaPutSurface_cliprects.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/038_g45_vaPutSurface_cliprects.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/038_g45_vaPutSurface_cliprects.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/102_attribute_visibility.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/102_attribute_visibility.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/102_attribute_visibility.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/102_attribute_visibility.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/103_fix_vainfo_deps.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/103_fix_vainfo_deps.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/103_fix_vainfo_deps.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/103_fix_vainfo_deps.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/104_fix_libva_pkgconfig_deps.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/104_fix_libva_pkgconfig_deps.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/104_fix_libva_pkgconfig_deps.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/104_fix_libva_pkgconfig_deps.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/105_dont_search_LIBGL_DRIVERS_PATH.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/105_dont_search_LIBGL_DRIVERS_PATH.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/105_dont_search_LIBGL_DRIVERS_PATH.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/105_dont_search_LIBGL_DRIVERS_PATH.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/108_drivers_path.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/108_drivers_path.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/108_drivers_path.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/108_drivers_path.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/203_fix_fglrx_detection.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/203_fix_fglrx_detection.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/203_fix_fglrx_detection.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/203_fix_fglrx_detection.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/204_check_ATIFGLEXTENSION.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/204_check_ATIFGLEXTENSION.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/204_check_ATIFGLEXTENSION.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/204_check_ATIFGLEXTENSION.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/300_sds_version.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/300_sds_version.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/300_sds_version.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/300_sds_version.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/301_vdpau_mpeg4.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/301_vdpau_mpeg4.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/301_vdpau_mpeg4.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/301_vdpau_mpeg4.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/320_move_vaPutSurface_flags_def.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/320_move_vaPutSurface_flags_def.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/320_move_vaPutSurface_flags_def.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/320_move_vaPutSurface_flags_def.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/321_libva_glx.base.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/321_libva_glx.base.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/321_libva_glx.base.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/321_libva_glx.base.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/322_libva_glx.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/322_libva_glx.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/322_libva_glx.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/322_libva_glx.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/390_compat.base.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/390_compat.base.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/390_compat.base.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/390_compat.base.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/391_compat.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/391_compat.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/391_compat.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/391_compat.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/392_compat.dso.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/392_compat.dso.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/392_compat.dso.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/392_compat.dso.patch
diff --git a/meta-emenlow/recipes/libva/libva-0.31.0/libdrm-poulsbo.patch b/meta-emenlow/recipes-graphics/libva/libva-0.31.0/libdrm-poulsbo.patch
similarity index 100%
rename from meta-emenlow/recipes/libva/libva-0.31.0/libdrm-poulsbo.patch
rename to meta-emenlow/recipes-graphics/libva/libva-0.31.0/libdrm-poulsbo.patch
diff --git a/meta-emenlow/recipes/libva/libva_0.31.0.bb b/meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
similarity index 100%
rename from meta-emenlow/recipes/libva/libva_0.31.0.bb
rename to meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
diff --git a/meta-emenlow/recipes/psb-firmware/psb-firmware_0.30.bb b/meta-emenlow/recipes-graphics/psb-firmware/psb-firmware_0.30.bb
similarity index 100%
rename from meta-emenlow/recipes/psb-firmware/psb-firmware_0.30.bb
rename to meta-emenlow/recipes-graphics/psb-firmware/psb-firmware_0.30.bb
diff --git a/meta-emenlow/recipes/psb-kernel-source/psb-kernel-source-4.42.0/build.patch b/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source-4.42.0/build.patch
similarity index 100%
rename from meta-emenlow/recipes/psb-kernel-source/psb-kernel-source-4.42.0/build.patch
rename to meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source-4.42.0/build.patch
diff --git a/meta-emenlow/recipes/psb-kernel-source/psb-kernel-source_4.42.0.bb b/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source_4.42.0.bb
similarity index 100%
rename from meta-emenlow/recipes/psb-kernel-source/psb-kernel-source_4.42.0.bb
rename to meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source_4.42.0.bb
diff --git a/meta-emenlow/recipes/xorg-xserver/files/crosscompile.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/crosscompile.patch
similarity index 100%
rename from meta-emenlow/recipes/xorg-xserver/files/crosscompile.patch
rename to meta-emenlow/recipes-graphics/xorg-xserver/files/crosscompile.patch
diff --git a/meta-emenlow/recipes/xorg-xserver/files/fix_open_max_preprocessor_error.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix_open_max_preprocessor_error.patch
similarity index 100%
rename from meta-emenlow/recipes/xorg-xserver/files/fix_open_max_preprocessor_error.patch
rename to meta-emenlow/recipes-graphics/xorg-xserver/files/fix_open_max_preprocessor_error.patch
diff --git a/meta-emenlow/recipes/xorg-xserver/files/libdrm-poulsbo.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/libdrm-poulsbo.patch
similarity index 100%
rename from meta-emenlow/recipes/xorg-xserver/files/libdrm-poulsbo.patch
rename to meta-emenlow/recipes-graphics/xorg-xserver/files/libdrm-poulsbo.patch
diff --git a/meta-emenlow/recipes/xorg-xserver/files/macro_tweak.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/macro_tweak.patch
similarity index 100%
rename from meta-emenlow/recipes/xorg-xserver/files/macro_tweak.patch
rename to meta-emenlow/recipes-graphics/xorg-xserver/files/macro_tweak.patch
diff --git a/meta-emenlow/recipes/xorg-xserver/files/nodolt.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/nodolt.patch
similarity index 100%
rename from meta-emenlow/recipes/xorg-xserver/files/nodolt.patch
rename to meta-emenlow/recipes-graphics/xorg-xserver/files/nodolt.patch
diff --git a/meta-emenlow/recipes/xorg-xserver/xserver-psb_1.7.99.2.bb b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
similarity index 100%
rename from meta-emenlow/recipes/xorg-xserver/xserver-psb_1.7.99.2.bb
rename to meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
diff --git a/meta-emenlow/recipes/xorg-xserver/xserver-xf86-config/emenlow/xorg.conf b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config/emenlow/xorg.conf
similarity index 100%
rename from meta-emenlow/recipes/xorg-xserver/xserver-xf86-config/emenlow/xorg.conf
rename to meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config/emenlow/xorg.conf
diff --git a/meta-emenlow/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
similarity index 100%
rename from meta-emenlow/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend
rename to meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
diff --git a/meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/cross-compile.patch b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/cross-compile.patch
similarity index 100%
rename from meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/cross-compile.patch
rename to meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/cross-compile.patch
diff --git a/meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/libdrmname.patch b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/libdrmname.patch
similarity index 100%
rename from meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/libdrmname.patch
rename to meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/libdrmname.patch
diff --git a/meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/native-matypes.patch b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/native-matypes.patch
similarity index 100%
rename from meta-emenlow/recipes/xpsb-glx/xpsb-glx-0.18/native-matypes.patch
rename to meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/native-matypes.patch
diff --git a/meta-emenlow/recipes/xpsb-glx/xpsb-glx_0.18.bb b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
similarity index 100%
rename from meta-emenlow/recipes/xpsb-glx/xpsb-glx_0.18.bb
rename to meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/01_disable_lid_timer.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/01_disable_lid_timer.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/01_disable_lid_timer.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/01_disable_lid_timer.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/dri-h.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/dri-h.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/dri-h.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/dri-h.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/libdrm-poulsbo.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/libdrm-poulsbo.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/libdrm-poulsbo.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/libdrm-poulsbo.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_mixed.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_mixed.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_mixed.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_mixed.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_xvtempfix.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_xvtempfix.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_xvtempfix.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_xvtempfix.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/stubs.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/stubs.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/stubs.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/stubs.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/visibility.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/visibility.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/visibility.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/visibility.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_unused.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_unused.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_unused.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_unused.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.patch b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.patch
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.patch
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.patch
diff --git a/meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
similarity index 100%
rename from meta-emenlow/recipes/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
rename to meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
diff --git a/meta-emenlow/recipes/linux/linux-2.6.33.2/defconfig b/meta-emenlow/recipes-kernel/linux/linux-2.6.33.2/defconfig
similarity index 100%
rename from meta-emenlow/recipes/linux/linux-2.6.33.2/defconfig
rename to meta-emenlow/recipes-kernel/linux/linux-2.6.33.2/defconfig
diff --git a/meta-emenlow/recipes/linux/linux-yocto-stable_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
similarity index 100%
rename from meta-emenlow/recipes/linux/linux-yocto-stable_git.bbappend
rename to meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
diff --git a/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend b/meta-emenlow/recipes-kernel/linux/linux_2.6.33.2.bbappend
similarity index 100%
rename from meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
rename to meta-emenlow/recipes-kernel/linux/linux_2.6.33.2.bbappend
diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index a8fdf81..b238c1e 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -89,7 +89,6 @@ SRCREV_machine_pn-linux-yocto-stable_qemumips ?= "81f3cd467b9d51fa1dfa2d5939337c
 SRCREV_machine_pn-linux-yocto-stable_qemuppc ?= "9ac0daee43dd19d8bea828cf79450c9748ae0daa"
 SRCREV_machine_pn-linux-yocto-stable_qemux86 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
 SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-yocto-stable_emenlow ?= "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
 SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
 SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "2ec2edaf256dd8500ee3d4763fee6ca3ecd6da4b"
 SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
-- 
1.7.0.4


