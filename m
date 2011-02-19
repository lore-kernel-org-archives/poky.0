Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 671FD4C80A1D
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 18:36:23 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Feb 2011 16:36:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,190,1297065600"; d="scan'208";a="604376614"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.75])
	by orsmga002.jf.intel.com with ESMTP; 18 Feb 2011 16:36:22 -0800
Message-Id: <06344e4c7701bb425a6eb45e743b0407010136ee.1298076091.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1298076091.git.dvhart@linux.intel.com>
References: <cover.1298076091.git.dvhart@linux.intel.com>
Old-Date: Fri, 18 Feb 2011 15:17:21 -0800
Date: Fri, 18 Feb 2011 16:46:03 -0800
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	tom.zanussi@intel.com, bruce.ashfield@windriver.com
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/4] zaurus: remove zaurus linux includes
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
X-List-Received-Date: Sat, 19 Feb 2011 00:36:23 -0000

From: Darren Hart <dvhart@linux.intel.com>

Zaurus support was removed with:

673abd92f999829bdd67d0273c43570a62123a63
conf/machine: Drop older machines with no recent updates

which removed both the linux-rp and sharp-flash-header recipes required by the
zaurus includes removed by this patch.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/conf/machine/include/zaurus-2.6.inc       |   72 ------------------------
 meta/conf/machine/include/zaurus-clamshell.inc |   15 -----
 2 files changed, 0 insertions(+), 87 deletions(-)
 delete mode 100644 meta/conf/machine/include/zaurus-2.6.inc
 delete mode 100644 meta/conf/machine/include/zaurus-clamshell.inc

diff --git a/meta/conf/machine/include/zaurus-2.6.inc b/meta/conf/machine/include/zaurus-2.6.inc
deleted file mode 100644
index aec61c7..0000000
--- a/meta/conf/machine/include/zaurus-2.6.inc
+++ /dev/null
@@ -1,72 +0,0 @@
-# Zaurus specific configuration for kernel 2.6
-# Additionally, clamshell specific stuff in zaurus-clamshell.inc
-
-TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5e armv5te"
-PACKAGE_EXTRA_ARCHS_collie = ""
-
-MACHINE_KERNEL_VERSION = "2.6"
-
-ERASEBLOCKSIZE = "0x4000"
-ERASEBLOCKSIZE_akita = "0x20000"
-
-EXTRA_IMAGECMD_jffs2 = "--little-endian --eraseblock=${ERASEBLOCKSIZE} --pad --faketime -n" 
-IMAGE_CMD_jffs2 = "mkfs.jffs2 -x lzo --root=${IMAGE_ROOTFS} --output=${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.jffs2 ${EXTRA_IMAGECMD}"
-EXTRA_IMAGEDEPENDS += "zaurus-updater"
-
-SERIAL_CONSOLE = "115200 ttyS0"
-SERIAL_CONSOLE_collie = "115200 ttySA0"
-
-PREFERRED_PROVIDER_virtual/kernel = "linux-rp"
-PREFERRED_PROVIDER_xserver = "xserver-kdrive"
-
-PCMCIA_MANAGER ?= "pcmciautils"
-
-MACHINE_FEATURES = "kernel26 apm alsa pcmcia irda usbgadget keyboard touchscreen screen vfat"
-MACHINE_FEATURES_append_tosa  = " usbhost wifi "
-MACHINE_FEATURES_append_akita = " usbhost "
-MACHINE_FEATURES_append_spitz = " usbhost ext2 "
-
-MACHINE_EXTRA_RDEPENDS = "zaurusd"
-MACHINE_EXTRA_RRECOMMENDS_c7x0   = "kernel-module-snd-soc-corgi kernel-module-pxa2xx-cs kernel-module-pcmcia"
-MACHINE_EXTRA_RRECOMMENDS_akita  = "kernel-module-snd-soc-spitz kernel-module-pxa2xx-cs kernel-module-pcmcia"
-MACHINE_EXTRA_RRECOMMENDS_spitz  = "kernel-module-snd-soc-spitz"
-MACHINE_EXTRA_RRECOMMENDS_poodle = "kernel-module-snd-soc-poodle"
-
-GUI_MACHINE_CLASS = "bigscreen"
-GUI_MACHINE_CLASS_collie = "smallscreen"
-GUI_MACHINE_CLASS_poodle = "smallscreen"
-
-KERNEL_IMAGE_MAXSIZE = "1294336"
-KERNEL_IMAGE_MAXSIZE_collie = "1048576"
-
-MACHINE_POSTPROCESS_COMMAND = "zaurus_make_installkit"
-
-zaurus_make_installkit () {
-    cd ${DEPLOY_DIR_IMAGE}
-    rm -rf ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}-installkit/         
-    mkdir ${IMAGE_NAME}-installkit/
-
-    # Get the latest kernel using the zImage-<machine>.bin symlink
-    cp zImage-${MACHINE}.bin ${IMAGE_NAME}-installkit/zImage
-
-    if [ "${MACHINE}" = "spitz" ]; then
-        cp gnu-tar ${IMAGE_NAME}-installkit/
-        cp ${IMAGE_NAME}.rootfs.tar.gz ${IMAGE_NAME}-installkit/hdimage1.tgz
-    else
-        [ -f ${IMAGE_NAME}.rootfs.jffs2 ] && cp ${IMAGE_NAME}.rootfs.jffs2 ${IMAGE_NAME}-installkit/initrd.bin
-    fi
-
-    # All zaurus machines except collie need updater.sh
-    if [ "${MACHINE}" != "collie" ]; then
-        cp updater.sh.${MACHINE} ${IMAGE_NAME}-installkit/updater.sh
-    fi
- 
-    tar czf ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}-installkit.tgz ${IMAGE_NAME}-installkit/
-    md5sum ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}-installkit.tgz > ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}-installkit.tgz.md5
-    rm -rf ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}-installkit/     
-}
-
-# Don't include kernels in standard images for Zaurus machines
-RDEPENDS_kernel-base = ""
-KERNEL_IMAGETYPE = "zImage"
diff --git a/meta/conf/machine/include/zaurus-clamshell.inc b/meta/conf/machine/include/zaurus-clamshell.inc
deleted file mode 100644
index 4fa9f75..0000000
--- a/meta/conf/machine/include/zaurus-clamshell.inc
+++ /dev/null
@@ -1,15 +0,0 @@
-include conf/machine/include/tune-xscale.inc
-
-EXTRA_IMAGEDEPENDS += "sharp-flash-header-c700"
-
-IMAGE_CMD_jffs2 = "mkfs.jffs2 --root=${IMAGE_ROOTFS} --faketime -m favourlzo \
-                   --output=${T}/${IMAGE_NAME}.rootfs.jffs2 --pad --little-endian --eraseblock=${ERASEBLOCKSIZE} -n \
-                   && sumtool -i ${T}/${IMAGE_NAME}.rootfs.jffs2 \
-                   -o ${T}/${IMAGE_NAME}.rootfs.jffs2.summary \
-                   --eraseblock=${ERASEBLOCKSIZE} -l -p; \
-                   cat ${STAGING_LIBDIR}/sharp-flash-header/header-c700.bin \
-                   ${T}/${IMAGE_NAME}.rootfs.jffs2 > ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.jffs2; \
-                   rm ${T}/${IMAGE_NAME}.rootfs.jffs2; \
-                   cat ${STAGING_LIBDIR}/sharp-flash-header/header-c700.bin \
-                   ${T}/${IMAGE_NAME}.rootfs.jffs2.summary > ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.summary.jffs2; \
-                   rm ${T}/${IMAGE_NAME}.rootfs.jffs2.summary;"
-- 
1.7.0.4


