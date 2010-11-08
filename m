Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D4784C811A6;
	Mon,  8 Nov 2010 15:06:33 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA8L6T25028719;
	Mon, 8 Nov 2010 13:06:31 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: saul.wold@intel.com, rpurdie@linux.intel.com
Date: Mon,  8 Nov 2010 16:06:40 -0500
Message-Id: <4e3d8e771e60738d0601dd7dc98186029bcd2935.1289250219.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1289250400-16953-1-git-send-email-bruce.ashfield@windriver.com>
References: <1289250400-16953-1-git-send-email-bruce.ashfield@windriver.com>
In-Reply-To: <94e24bd11b32f486e7a249cb856d9ade46f9bdc4.1289250219.git.bruce.ashfield@windriver.com>
References: <94e24bd11b32f486e7a249cb856d9ade46f9bdc4.1289250219.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 2/2] kernel: prefer the kernel produced uImage
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
X-List-Received-Date: Mon, 08 Nov 2010 21:06:33 -0000

The custom uImage produced by the kernel classes by default
does not universally boot and working with existing uboot
configurations and setups.

This changes the preference to the uImage constructed by
the kbuild processes and falls back to the other techniques
if uImage is requested by the kernel does not produce one.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel.bbclass |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 4c79a98..bb76285 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -481,7 +481,9 @@ do_deploy() {
 	fi
 
 	if test "x${KERNEL_IMAGETYPE}" = "xuImage" ; then 
-		if test -e arch/${ARCH}/boot/compressed/vmlinux ; then
+		if test -e arch/${ARCH}/boot/uImage ; then
+			cp arch/${ARCH}/boot/uImage ${DEPLOYDIR}/uImage-${PV}-${PR}-${MACHINE}-${DATETIME}.bin
+		elif test -e arch/${ARCH}/boot/compressed/vmlinux ; then
 			${OBJCOPY} -O binary -R .note -R .comment -S arch/${ARCH}/boot/compressed/vmlinux linux.bin
 			uboot-mkimage -A ${ARCH} -O linux -T kernel -C none -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin ${DEPLOYDIR}/uImage-${PV}-${PR}-${MACHINE}-${DATETIME}.bin
 			rm -f linux.bin
-- 
1.7.0.4


