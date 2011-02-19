Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C3EA44C80A49
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 18:36:51 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Feb 2011 16:36:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,190,1297065600"; d="scan'208";a="709775600"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.75])
	by orsmga001.jf.intel.com with ESMTP; 18 Feb 2011 16:36:22 -0800
Message-Id: <15dcdef7cdf5d170f06dba9e54aa5344157ef368.1298076091.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1298076091.git.dvhart@linux.intel.com>
References: <cover.1298076091.git.dvhart@linux.intel.com>
Old-Date: Fri, 18 Feb 2011 15:38:12 -0800
Date: Fri, 18 Feb 2011 16:46:03 -0800
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	tom.zanussi@intel.com, bruce.ashfield@windriver.com
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 4/4] linux.inc: remove the obsolete linux.inc kernel recipe include
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
X-List-Received-Date: Sat, 19 Feb 2011 00:36:52 -0000

From: Darren Hart <dvhart@linux.intel.com>

linux.inc was used by older kernel recipes which have now been removed from the
core meta data. I references machines now only defined in meta-extras. The
configure prepend mangles the kernel .config in non-intuitive ways and the
install peroforms some odd boot image manipulation that is not used nor required
by supported machines. The required functionality, such as defconfig setup, has
already been moved to the kernel bbclass. Remove linux.inc to avoid confusion
for new kernel recipe authors and clean up the kernel meta data.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-kernel/linux/linux.inc |   95 -----------------------------------
 1 files changed, 0 insertions(+), 95 deletions(-)
 delete mode 100644 meta/recipes-kernel/linux/linux.inc

diff --git a/meta/recipes-kernel/linux/linux.inc b/meta/recipes-kernel/linux/linux.inc
deleted file mode 100644
index f0b47da..0000000
--- a/meta/recipes-kernel/linux/linux.inc
+++ /dev/null
@@ -1,95 +0,0 @@
-DESCRIPTION = "Linux Kernel"
-SECTION = "kernel"
-LICENSE = "GPLv2"
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
-
-inherit kernel
-require linux-dtb.inc
-
-DEPENDS_append_em-x270 = " mtd-utils "
-
-RPSRC = "http://www.rpsys.net/openzaurus/patches/archive"
-
-# Specify the commandline for your device
-
-#boot from mmc
-CMDLINE_at91sam9263ek = "mem=64M console=ttyS0,115200 root=/dev/mmcblk0p1 rootfstype=ext2 rootdelay=5"
-#boot from nfs
-#CMDLINE_at91sam9263ek = "mem=64M console=ttyS0,115200 root=301 root=/dev/nfs nfsroot=172.20.3.1:/data/at91 ip=172.20.0.5:::255.255.0.0"
-
-do_configure_prepend() {
-        echo "" > ${S}/.config
-
-        #
-        # logo support, if you supply logo_linux_clut224.ppm in SRC_URI, then it's going to be used
-        #
-        if [ -e ${WORKDIR}/logo_linux_clut224.ppm ]; then
-                install -m 0644 ${WORKDIR}/logo_linux_clut224.ppm drivers/video/logo/logo_linux_clut224.ppm
-                echo "CONFIG_LOGO=y"                    >> ${S}/.config
-                echo "CONFIG_LOGO_LINUX_CLUT224=y"      >> ${S}/.config
-        fi
-
-        #
-        # oabi / eabi support
-        #
-        if [ "${TARGET_OS}" = "linux-gnueabi" -o  "${TARGET_OS}" = "linux-uclibcgnueabi" ]; then
-                echo "CONFIG_AEABI=y"                   >> ${S}/.config
-                echo "# CONFIG_OABI_COMPAT is not set"             >> ${S}/.config
-        else
-                echo "# CONFIG_AEABI is not set"        >> ${S}/.config
-                echo "# CONFIG_OABI_COMPAT is not set"  >> ${S}/.config
-        fi
-
-        echo "CONFIG_CMDLINE=\"${CMDLINE}\"" >> ${S}/.config
-
-        sed -e '/CONFIG_AEABI/d' \
-            -e '/CONFIG_OABI_COMPAT=/d' \
-            -e '/CONFIG_CMDLINE=/d' \
-            -e '/CONFIG_LOGO=/d' \
-            -e '/CONFIG_LOGO_LINUX_CLUT224=/d' \
-            < '${WORKDIR}/defconfig' >>'${S}/.config'
-
-        #
-        # root-over-nfs-over-usb-eth support. Limited, but should cover some cases.
-        # Enable this by setting a proper CMDLINE_NFSROOT_USB.
-        #
-        if [ ! -z "${CMDLINE_NFSROOT_USB}" ]; then
-                oenote "Configuring the kernel for root-over-nfs-over-usb-eth with CMDLINE ${CMDLINE_NFSROOT_USB}"
-                sed -e '/CONFIG_INET/d' \
-                    -e '/CONFIG_IP_PNP=/d' \
-                    -e '/CONFIG_USB_GADGET=/d' \
-                    -e '/CONFIG_USB_GADGET_SELECTED=/d' \
-                    -e '/CONFIG_USB_ETH=/d' \
-                    -e '/CONFIG_NFS_FS=/d' \
-                    -e '/CONFIG_ROOT_NFS=/d' \
-                    -e '/CONFIG_CMDLINE=/d' \
-                    -i ${S}/.config
-                echo "CONFIG_INET=y"                     >> ${S}/.config
-                echo "CONFIG_IP_PNP=y"                   >> ${S}/.config
-                echo "CONFIG_USB_GADGET=y"               >> ${S}/.config
-                echo "CONFIG_USB_GADGET_SELECTED=y"      >> ${S}/.config
-                echo "CONFIG_USB_ETH=y"                  >> ${S}/.config
-                echo "CONFIG_NFS_FS=y"                   >> ${S}/.config
-                echo "CONFIG_ROOT_NFS=y"                 >> ${S}/.config
-                echo "CONFIG_CMDLINE=\"${CMDLINE_NFSROOT_USB}\"" >> ${S}/.config
-        fi
-        yes '' | oe_runmake oldconfig
-}
-
-
-
-do_install_prepend() {
-        if [ -f arch/${ARCH}/boot/Image ] && [ ! -f arch/${ARCH}/boot/uImage ]; then
-             ln -f arch/${ARCH}/boot/Image arch/${ARCH}/boot/uImage
-        fi
-
-        if test -e arch/${ARCH}/boot/images/uImage ; then
-             ln -f arch/${ARCH}/boot/images/uImage arch/${ARCH}/boot/uImage
-        fi
-
-        if test -e arch/${ARCH}/kernel/vmlinux.lds ; then
-             ln -f arch/${ARCH}/kernel/vmlinux.lds arch/${ARCH}/boot/vmlinux
-        fi
-}
-
-- 
1.7.0.4


