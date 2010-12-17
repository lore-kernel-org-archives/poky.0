Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B12344C80FA8
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 19:16:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 17:16:31 -0800
Message-Id: <b9dded$hdep5f@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="584541359"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.126])
	by orsmga002.jf.intel.com with ESMTP; 16 Dec 2010 17:16:30 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Fri, 17 Dec 2010 08:51:40 +0800
To: poky@pokylinux.org,paul.eggleton@linux.intel.com,rpurdie@linux.intel.com
Subject: [PATCH 2/3] kernel.bbclass: introduce UIMAGE_BASE_NAME
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
X-List-Received-Date: Fri, 17 Dec 2010 01:16:31 -0000

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/classes/kernel.bbclass |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index b2f8132..4f7ceba 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -472,6 +472,7 @@ do_sizecheck() {
 addtask sizecheck before do_install after do_compile
 
 KERNEL_IMAGE_BASE_NAME ?= "${KERNEL_IMAGETYPE}-${PV}-${PR}-${MACHINE}-${DATETIME}"
+UIMAGE_BASE_NAME ?= "uImage-${PV}-${PR}-${MACHINE}-${DATETIME}"
 # Don't include the DATETIME variable in the sstate package signatures
 KERNEL_IMAGE_BASE_NAME[vardepsexclude] = "DATETIME"
 KERNEL_IMAGE_SYMLINK_NAME ?= "${KERNEL_IMAGETYPE}-${MACHINE}"
@@ -484,16 +485,16 @@ kernel_do_deploy() {
 
 	if test "x${KERNEL_IMAGETYPE}" = "xuImage" ; then 
 		if test -e arch/${ARCH}/boot/uImage ; then
-			cp arch/${ARCH}/boot/uImage ${DEPLOYDIR}/uImage-${PV}-${PR}-${MACHINE}-${DATETIME}.bin
+			cp arch/${ARCH}/boot/uImage ${DEPLOYDIR}/${UIMAGE_BASE_NAME}.bin
 		elif test -e arch/${ARCH}/boot/compressed/vmlinux ; then
 			${OBJCOPY} -O binary -R .note -R .comment -S arch/${ARCH}/boot/compressed/vmlinux linux.bin
-			uboot-mkimage -A ${ARCH} -O linux -T kernel -C none -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin ${DEPLOYDIR}/uImage-${PV}-${PR}-${MACHINE}-${DATETIME}.bin
+			uboot-mkimage -A ${ARCH} -O linux -T kernel -C none -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin ${DEPLOYDIR}/${UIMAGE_BASE_NAME}.bin
 			rm -f linux.bin
 		else
 			${OBJCOPY} -O binary -R .note -R .comment -S vmlinux linux.bin
 			rm -f linux.bin.gz
 			gzip -9 linux.bin
-			uboot-mkimage -A ${ARCH} -O linux -T kernel -C gzip -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin.gz ${DEPLOYDIR}/uImage-${PV}-${PR}-${MACHINE}-${DATETIME}.bin
+			uboot-mkimage -A ${ARCH} -O linux -T kernel -C gzip -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin.gz ${DEPLOYDIR}/${UIMAGE_BASE_NAME}.bin
 			rm -f linux.bin.gz
 		fi
 	fi
-- 
1.6.0.4


