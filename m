Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC51C4C80053;
	Wed,  9 Feb 2011 00:23:55 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p196NqsR015198;
	Tue, 8 Feb 2011 22:23:53 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed,  9 Feb 2011 01:27:08 -0500
Message-Id: <a80cd52437e3b3874ea0196d31127f14cf486f2f.1297232632.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297232632.git.bruce.ashfield@windriver.com>
References: <cover.1297232632.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1297232632.git.bruce.ashfield@windriver.com>
References: <cover.1297232632.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/3] linux: factor dts/dtc/dtb handling into a specific include
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
X-List-Received-Date: Wed, 09 Feb 2011 06:23:55 -0000

Fixes [BUGID #610]

The powerpc linux-yocto kernels were not creating dtb images
in the deploy directories. This was due to two problems:

  - the dtb generation rules were not being configured
  - the boards were not specifying a device tree in their config

This change addresses the first point by factoring out the
dtb generation routines into a new include that can be used by
multiple recipes.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/recipes-kernel/linux/linux-dtb.inc   |   27 +++++++++++++++++++++++++++
 meta/recipes-kernel/linux/linux-yocto.inc |    1 +
 meta/recipes-kernel/linux/linux.inc       |   27 +--------------------------
 3 files changed, 29 insertions(+), 26 deletions(-)
 create mode 100644 meta/recipes-kernel/linux/linux-dtb.inc

diff --git a/meta/recipes-kernel/linux/linux-dtb.inc b/meta/recipes-kernel/linux/linux-dtb.inc
new file mode 100644
index 0000000..0b27d18
--- /dev/null
+++ b/meta/recipes-kernel/linux/linux-dtb.inc
@@ -0,0 +1,27 @@
+# Support for device tree generation
+FILES_kernel_devicetree = "/boot/devicetree*"
+KERNEL_DEVICETREE_FLAGS = "-R 8 -p 0x3000"
+
+python __anonymous () {
+    import bb
+
+    devicetree = bb.data.getVar("KERNEL_DEVICETREE", d, 1) or ''
+    if devicetree:
+	depends = bb.data.getVar("DEPENDS", d, 1)
+	bb.data.setVar("DEPENDS", "%s dtc-native" % depends, d)
+	packages = bb.data.getVar("PACKAGES", d, 1)
+	bb.data.setVar("PACKAGES", "%s kernel-devicetree" % packages, d)
+}
+
+do_install_append() {
+    if test -n "${KERNEL_DEVICETREE}"; then
+	dtc -I dts -O dtb ${KERNEL_DEVICETREE_FLAGS} -o devicetree ${KERNEL_DEVICETREE}
+	install -m 0644 devicetree ${D}/boot/devicetree-${KERNEL_VERSION}
+	install -d ${DEPLOY_DIR_IMAGE}
+	install -m 0644 devicetree ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGE_BASE_NAME}.dtb
+	cd ${DEPLOY_DIR_IMAGE}
+	rm -f ${KERNEL_IMAGE_SYMLINK_NAME}.dtb
+	ln -sf ${KERNEL_IMAGE_BASE_NAME}.dtb ${KERNEL_IMAGE_SYMLINK_NAME}.dtb
+    fi
+}
+
diff --git a/meta/recipes-kernel/linux/linux-yocto.inc b/meta/recipes-kernel/linux/linux-yocto.inc
index 03935fa..0812144 100644
--- a/meta/recipes-kernel/linux/linux-yocto.inc
+++ b/meta/recipes-kernel/linux/linux-yocto.inc
@@ -18,5 +18,6 @@ addtask kernel_configme before do_configure after do_patch
 
 # Pick up shared functions
 inherit kernel-yocto
+require linux-dtb.inc
 
 B = "${WORKDIR}/linux-${MACHINE}-${LINUX_KERNEL_TYPE}-build"
diff --git a/meta/recipes-kernel/linux/linux.inc b/meta/recipes-kernel/linux/linux.inc
index 93859bb..726d3d6 100644
--- a/meta/recipes-kernel/linux/linux.inc
+++ b/meta/recipes-kernel/linux/linux.inc
@@ -3,6 +3,7 @@ SECTION = "kernel"
 LICENSE = "GPL"
 
 inherit kernel
+require linux-dtb.inc
 
 DEPENDS_append_em-x270 = " mtd-utils "
 
@@ -15,21 +16,6 @@ CMDLINE_at91sam9263ek = "mem=64M console=ttyS0,115200 root=/dev/mmcblk0p1 rootfs
 #boot from nfs
 #CMDLINE_at91sam9263ek = "mem=64M console=ttyS0,115200 root=301 root=/dev/nfs nfsroot=172.20.3.1:/data/at91 ip=172.20.0.5:::255.255.0.0"
 
-# Support for device tree generation
-FILES_kernel_devicetree = "/boot/devicetree*"
-KERNEL_DEVICETREE_FLAGS = "-R 8 -p 0x3000"
-
-python __anonymous () {
-    import bb
-
-    devicetree = bb.data.getVar("KERNEL_DEVICETREE", d, 1) or ''
-    if devicetree:
-        depends = bb.data.getVar("DEPENDS", d, 1)
-        bb.data.setVar("DEPENDS", "%s dtc-native" % depends, d)
-        packages = bb.data.getVar("PACKAGES", d, 1)
-        bb.data.setVar("PACKAGES", "%s kernel-devicetree" % packages, d)
-}
-
 do_configure_prepend() {
         echo "" > ${S}/.config
 
@@ -105,14 +91,3 @@ do_install_prepend() {
         fi
 }
 
-do_install_append() {
-    if test -n "${KERNEL_DEVICETREE}"; then
-        dtc -I dts -O dtb ${KERNEL_DEVICETREE_FLAGS} -o devicetree ${KERNEL_DEVICETREE}
-        install -m 0644 devicetree ${D}/boot/devicetree-${KERNEL_VERSION}
-        install -d ${DEPLOY_DIR_IMAGE}
-        install -m 0644 devicetree ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGE_BASE_NAME}.dtb
-        cd ${DEPLOY_DIR_IMAGE}
-        rm -f ${KERNEL_IMAGE_SYMLINK_NAME}.dtb
-        ln -sf ${KERNEL_IMAGE_BASE_NAME}.dtb ${KERNEL_IMAGE_SYMLINK_NAME}.dtb
-    fi
-}
-- 
1.7.0.4


