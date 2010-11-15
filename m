Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 128194C810D8;
	Mon, 15 Nov 2010 10:55:52 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAFGtmOV018032;
	Mon, 15 Nov 2010 08:55:49 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 15 Nov 2010 11:56:12 -0500
Message-Id: <b06561d2902d97f987946d1a0f92efb822e46a8a.1289839979.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1289839979.git.bruce.ashfield@windriver.com>
References: <cover.1289839979.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1289839979.git.bruce.ashfield@windriver.com>
References: <cover.1289839979.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 1/3] linux-wrs: rename to linux-yocto
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
X-List-Received-Date: Mon, 15 Nov 2010 16:55:52 -0000

The existing preferred yocto kernel wasn't named appropriately
and needs to be updated.

In keeping the changes small and isolated, this commit simply
renames the recipe and some internal variables. Future commits
will refactor the code into more usable blocks.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux-libc-headers-wrs_git.bb                  |    4 +-
 meta/recipes-kernel/linux/linux-wrs_git.bb         |   73 ++++++++++----------
 2 files changed, 39 insertions(+), 38 deletions(-)

diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-wrs_git.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-wrs_git.bb
index ab25e50..6ae6d5f 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-wrs_git.bb
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-wrs_git.bb
@@ -26,7 +26,7 @@ do_configure() {
 	oe_runmake allnoconfig ARCH=$ARCH
 }
 
-do_wrlinux_checkout() {
+do_kernel_checkout() {
 	if [ -d ${WORKDIR}/.git/refs/remotes/origin ]; then
 		rm -rf ${S}
 		mkdir ${S}
@@ -38,7 +38,7 @@ do_wrlinux_checkout() {
 	git checkout -f standard
 }
 
-addtask wrlinux_checkout before do_patch after do_unpack
+addtask kernel_checkout before do_patch after do_unpack
 
 do_compile () {
 }
diff --git a/meta/recipes-kernel/linux/linux-wrs_git.bb b/meta/recipes-kernel/linux/linux-wrs_git.bb
index 209648b..ef005ae 100644
--- a/meta/recipes-kernel/linux/linux-wrs_git.bb
+++ b/meta/recipes-kernel/linux/linux-wrs_git.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "Wind River Kernel"
+DESCRIPTION = "Yocto Kernel"
 SECTION = "kernel"
 LICENSE = "GPL"
 
@@ -13,16 +13,17 @@ PV = "2.6.34+git${SRCPV}"
 SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
            git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
 
-WRMACHINE = "UNDEFINED"
-WRMACHINE_qemux86  = "common_pc"
-WRMACHINE_qemux86-64  = "common_pc_64"
-WRMACHINE_qemuppc  = "qemu_ppc32"
-WRMACHINE_qemumips = "mti_malta32_be"
-WRMACHINE_qemuarm  = "arm_versatile_926ejs"
-WRMACHINE_atom-pc  = "atom-pc"
-WRMACHINE_routerstationpro = "routerstationpro"
-WRMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
-WRMACHINE_beagleboard = "beagleboard"
+# map the poky machine to a 'kernel machine'
+KMACHINE = "UNDEFINED"
+KMACHINE_qemux86  = "common_pc"
+KMACHINE_qemux86-64  = "common_pc_64"
+KMACHINE_qemuppc  = "qemu_ppc32"
+KMACHINE_qemumips = "mti_malta32_be"
+KMACHINE_qemuarm  = "arm_versatile_926ejs"
+KMACHINE_atom-pc  = "atom-pc"
+KMACHINE_routerstationpro = "routerstationpro"
+KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "beagleboard"
 
 # Determine which branch to fetch and build. Not all branches are in the
 # upstream repo (but will be locally created after the fetchers run) so 
@@ -36,11 +37,11 @@ WRMACHINE_beagleboard = "beagleboard"
 python __anonymous () {
     import bb, re
 
-    bb.data.setVar("KBRANCH", "${WRMACHINE}-${LINUX_KERNEL_TYPE}", d)
-    mach = bb.data.getVar("WRMACHINE", d, 1)
+    bb.data.setVar("KBRANCH", "${KMACHINE}-${LINUX_KERNEL_TYPE}", d)
+    mach = bb.data.getVar("KMACHINE", d, 1)
     if mach == "UNDEFINED":
         bb.data.setVar("KBRANCH", "standard", d)
-        bb.data.setVar("WRMACHINE", "${MACHINE}", d)
+        bb.data.setVar("KMACHINE", "${MACHINE}", d)
         # track the global configuration on a bootstrapped BSP
         bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
         bb.data.setVar("BOOTSTRAP", "t", d)
@@ -53,7 +54,7 @@ LINUX_VERSION_EXTENSION = "-wr-${LINUX_KERNEL_TYPE}"
 PR = "r13"
 
 S = "${WORKDIR}/linux"
-B = "${WORKDIR}/linux-${WRMACHINE}-${LINUX_KERNEL_TYPE}-build"
+B = "${WORKDIR}/linux-${KMACHINE}-${LINUX_KERNEL_TYPE}-build"
 
 # functionality flags
 KERNEL_REVISION_CHECKING ?= "t"
@@ -66,9 +67,9 @@ do_patch() {
 	fi
 
 	# simply ensures that a branch of the right name has been created
-	createme ${ARCH} ${WRMACHINE}-${LINUX_KERNEL_TYPE} ${defconfig}
+	createme ${ARCH} ${KMACHINE}-${LINUX_KERNEL_TYPE} ${defconfig}
 	if [ $? -ne 0 ]; then
-		echo "ERROR. Could not create ${WRMACHINE}-${LINUX_KERNEL_TYPE}"
+		echo "ERROR. Could not create ${KMACHINE}-${LINUX_KERNEL_TYPE}"
 		exit 1
 	fi
 
@@ -78,14 +79,14 @@ do_patch() {
 	fi
 	updateme ${addon_features} ${ARCH} ${WORKDIR}
 	if [ $? -ne 0 ]; then
-		echo "ERROR. Could not update ${WRMACHINE}-${LINUX_KERNEL_TYPE}"
+		echo "ERROR. Could not update ${KMACHINE}-${LINUX_KERNEL_TYPE}"
 		exit 1
 	fi
 
 	# executes and modifies the source tree as required
-	patchme ${WRMACHINE}-${LINUX_KERNEL_TYPE}
+	patchme ${KMACHINE}-${LINUX_KERNEL_TYPE}
 	if [ $? -ne 0 ]; then
-		echo "ERROR. Could not modify ${WRMACHINE}-${LINUX_KERNEL_TYPE}"
+		echo "ERROR. Could not modify ${KMACHINE}-${LINUX_KERNEL_TYPE}"
 		exit 1
 	fi
 }
@@ -100,9 +101,9 @@ validate_branches() {
 		if [ -n "${KERNEL_REVISION_CHECKING}" ]; then
 			git show ${target_branch_head} > /dev/null 2>&1
 			if [ $? -eq 0 ]; then
-				echo "Forcing branch ${WRMACHINE}-${LINUX_KERNEL_TYPE} to ${target_branch_head}"
-				git branch -m ${WRMACHINE}-${LINUX_KERNEL_TYPE} ${WRMACHINE}-${LINUX_KERNEL_TYPE}-orig
-				git checkout -b ${WRMACHINE}-${LINUX_KERNEL_TYPE} ${target_branch_head}
+				echo "Forcing branch ${KMACHINE}-${LINUX_KERNEL_TYPE} to ${target_branch_head}"
+				git branch -m ${KMACHINE}-${LINUX_KERNEL_TYPE} ${KMACHINE}-${LINUX_KERNEL_TYPE}-orig
+				git checkout -b ${KMACHINE}-${LINUX_KERNEL_TYPE} ${target_branch_head}
 			else
 				echo "ERROR ${target_branch_head} is not a valid commit ID."
 				echo "The kernel source tree may be out of sync"
@@ -127,9 +128,9 @@ validate_branches() {
 	fi
 }
 
-do_wrlinux_checkout() {
+do_kernel_checkout() {
 	if [ -d ${WORKDIR}/.git/refs/remotes/origin ]; then
-		echo "Fixing up git directory for ${WRMACHINE}-${LINUX_KERNEL_TYPE}"
+		echo "Fixing up git directory for ${KMACHINE}-${LINUX_KERNEL_TYPE}"
 		rm -rf ${S}
 		mkdir ${S}
 		mv ${WORKDIR}/.git ${S}
@@ -165,17 +166,17 @@ IFS='
 	# our initial checkout. So we do it a second time to be sure
 	git checkout -f ${KBRANCH}
 }
-do_wrlinux_checkout[dirs] = "${S}"
+do_kernel_checkout[dirs] = "${S}"
 
-addtask wrlinux_checkout before do_patch after do_unpack
+addtask kernel_checkout before do_patch after do_unpack
 
-do_wrlinux_configme() {
-	echo "Doing wrlinux configme"
+do_kernel_configme() {
+	echo "Doing kernel configme"
 
 	cd ${S}
 	configme --reconfig
 	if [ $? -ne 0 ]; then
-		echo "ERROR. Could not configure ${WRMACHINE}-${LINUX_KERNEL_TYPE}"
+		echo "ERROR. Could not configure ${KMACHINE}-${LINUX_KERNEL_TYPE}"
 		exit 1
 	fi
 
@@ -184,13 +185,13 @@ do_wrlinux_configme() {
 	echo "CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >> ${B}/.config
 }
 
-do_wrlinux_configcheck() {
+do_kernel_configcheck() {
 	echo "[INFO] validating kernel configuration"
 	cd ${B}/..
-	kconf_check ${B}/.config ${B} ${S} ${B} ${LINUX_VERSION} ${WRMACHINE}-${LINUX_KERNEL_TYPE}
+	kconf_check ${B}/.config ${B} ${S} ${B} ${LINUX_VERSION} ${KMACHINE}-${LINUX_KERNEL_TYPE}
 }
 
-do_wrlinux_link_vmlinux() {
+do_kernel_link_vmlinux() {
 	if [ ! -d "${B}/arch/${ARCH}/boot" ]; then
 		mkdir ${B}/arch/${ARCH}/boot
 	fi
@@ -207,9 +208,9 @@ do_install_perf() {
 }
 
 do_patch[depends] = "kern-tools-native:do_populate_sysroot"
-addtask wrlinux_configme before do_configure after do_patch
-addtask wrlinux_link_vmlinux after do_compile before do_install
-addtask wrlinux_configcheck after do_configure before do_compile
+addtask kernel_configme before do_configure after do_patch
+addtask kernel_link_vmlinux after do_compile before do_install
+addtask kernel_configcheck after do_configure before do_compile
 
 inherit kernel
 
-- 
1.7.0.4


