Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2F0F4C8007E;
	Wed,  9 Feb 2011 00:19:14 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p196JB5t014751;
	Tue, 8 Feb 2011 22:19:12 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed,  9 Feb 2011 01:22:28 -0500
Message-Id: <eaec388c5c2bfcfde022835e359bd9a8f73e9137.1297232160.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297232160.git.bruce.ashfield@windriver.com>
References: <cover.1297232160.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1297232160.git.bruce.ashfield@windriver.com>
References: <cover.1297232160.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: streamline BSP bootstrapping
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
X-List-Received-Date: Wed, 09 Feb 2011 06:19:15 -0000

In order to build BSPs that were not already integrated into
the upstream linux yocto kernel AND keep the git fetcher happy,
some fairly complex anonymous python sections were required.

These sections cause problems with variable expansion and SRCREV
processing.

With the updated git fetcher code, we can streamline the BSP
boostrapping process and drop 99% of the anonymous python code.

This commit has the following changes to support BSP boot strapping
and simplication for existing BSPs.

   - KMETA is set per-recipe rather than in python code
   - undefined machines are no longer used, but instead common
     branch names are set per-recipe
   - fallback machine SRCREVs are present in the default revisions
     file
   - A new variable YOCTO_KERNEL_EXTERNAL_BRANCH should be set in
     the local.conf for new BSPs instead of being programatically
     determined in the anonymous python.
   - No more explicity KMACHINE variable expansion and manipulation,
     since the tools and build phases no longer require it due
     to the per-recipe fallbacks.

Integrated/merged BSPs are unaffected by the changes and have been
regression tested.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

foo

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass                  |   71 +++-----------------
 .../conf/distro/include/poky-default-revisions.inc |    3 +-
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |   10 ++--
 meta/recipes-kernel/linux/linux-yocto.inc          |    4 +-
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    4 +
 5 files changed, 23 insertions(+), 69 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 4c52bca..15802fa 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -1,61 +1,5 @@
 S = "${WORKDIR}/linux"
 
-# Determine which branch to fetch and build. Not all branches are in the
-# upstream repo (but will be locally created after the fetchers run) so 
-# a fallback branch needs to be chosen. 
-#
-# The default machine 'UNDEFINED'. If the machine is not set to a specific
-# branch in this recipe or in a recipe extension, then we fallback to a 
-# branch that is always present 'standard'. This sets the KBRANCH variable
-# and is used in the SRC_URI. The machine is then set back to ${MACHINE},
-# since futher processing will use that to create local branches
-
-SRCPV_prepend = "${@yoctokernel_variables_fixup(d)}"
-
-def yoctokernel_variables_fixup(d):
-    if d.getVar("PVFIXUPDONE", False) is "done":
-        return ""
-
-    import bb, re, string
-
-    version = bb.data.getVar("LINUX_VERSION", d, 1)
-    # 2.6.34 signifies the old-style tree, so we need some temporary
-    # conditional processing based on the kernel version.
-    if version == "2.6.34":
-        bb.data.setVar("KBRANCH", "${KMACHINE}-${LINUX_KERNEL_TYPE}", d)
-        bb.data.setVar("KMETA", "wrs_meta", d)
-        mach = bb.data.getVar("KMACHINE", d, 1)
-        if mach == "UNDEFINED":
-            bb.data.setVar("KBRANCH", "standard", d)
-            bb.data.setVar("KMACHINE", "${MACHINE}", d)
-            # track the global configuration on a bootstrapped BSP
-            bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
-            bb.data.setVar("BOOTSTRAP", bb.data.expand("${MACHINE}",d) + "-standard", d)
-    else:
-        # The branch for a build is:
-        #    yocto/<kernel type>/${KMACHINE} or
-        #    yocto/<kernel type>/${KMACHINE}/base
-        mach = bb.data.getVar("KMACHINE_" + bb.data.expand("${MACHINE}",d), d, 1)
-        if mach == None:
-             mach = bb.data.getVar("KMACHINE", d, 1)
-
-        bb.data.setVar("KBRANCH", mach, d)
-        bb.data.setVar("KMETA", "meta", d)
-
-        # drop the "/base" if it was on the KMACHINE
-        kmachine = mach.replace('/base','')
-        # drop everything but the last segment
-        kmachine = os.path.basename( kmachine )
-        # and then write KMACHINE back
-        bb.data.setVar('KMACHINE_' + bb.data.expand("${MACHINE}",d), kmachine, d)
-
-        if mach == "UNDEFINED":
-            bb.data.setVar('KMACHINE_' + bb.data.expand("${MACHINE}",d), bb.data.expand("${MACHINE}",d), d)
-            bb.data.setVar("KBRANCH", "yocto/standard/base", d)
-            bb.data.setVar("BOOTSTRAP", "yocto/standard/" + bb.data.expand("${MACHINE}",d), d)
-    d.setVar("PVFIXUPDONE", "done")
-    return ""
-
 do_patch() {
 	cd ${S}
 	if [ -f ${WORKDIR}/defconfig ]; then
@@ -63,12 +7,11 @@ do_patch() {
 	fi
 
 	kbranch=${KBRANCH}
-	if [ -n "${BOOTSTRAP}" ]; then
+	if [ -n "${YOCTO_KERNEL_EXTERNAL_BRANCH}" ]; then
            # switch from a generic to a specific branch
-           kbranch=${BOOTSTRAP}
+           kbranch=${YOCTO_KERNEL_EXTERNAL_BRANCH}
 	fi
 
-
 	# simply ensures that a branch of the right name has been created
 	createme ${ARCH} ${kbranch} ${defconfig}
 	if [ $? -ne 0 ]; then
@@ -131,8 +74,14 @@ addtask kernel_checkout before do_patch after do_unpack
 do_kernel_configme() {
 	echo "[INFO] doing kernel configme"
 
+	kbranch=${KBRANCH}
+	if [ -n "${YOCTO_KERNEL_EXTERNAL_BRANCH}" ]; then
+           # switch from a generic to a specific branch
+           kbranch=${YOCTO_KERNEL_EXTERNAL_BRANCH}
+	fi
+
 	cd ${S}
-	configme --reconfig --output ${B} ${KBRANCH} ${MACHINE}
+	configme --reconfig --output ${B} ${kbranch} ${MACHINE}
 	if [ $? -ne 0 ]; then
 		echo "ERROR. Could not configure ${KMACHINE}-${LINUX_KERNEL_TYPE}"
 		exit 1
@@ -165,7 +114,7 @@ do_validate_branches() {
  	target_meta_head="${SRCREV_meta}"
 
 	# nothing to do if bootstrapping
- 	if [ -n "${BOOTSTRAP}" ]; then
+ 	if [ -n "${YOCTO_KERNEL_EXTERNAL_BRANCH}" ]; then
  	 	return
  	fi
 
diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 9abc4a5..a04fa9e 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -59,7 +59,7 @@ SRCREV_pn-gypsy ??= "147"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "fde7ef8fa8043607752563b9b7908f487eb2f7dd"
+SRCREV_pn-kern-tools-native ??= "4f13a46499261ea181fdc13db5459067df08aca7"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "e8c2e412ea4a417afc1f30e32cb7bdc508b1dccc"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
@@ -110,6 +110,7 @@ SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "68fb0b8d73bbb336ffa4a47bc70ec1eab
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "343c06b25b221aa7f7019aee83b2d976041fddce"
 SRCREV_machine_pn-linux-yocto ?= "cb4faf3af527e25feee584f39c3956ca0c9448c8"
 SRCREV_meta_pn-linux-yocto ?= "5a32d7fe3b817868ebb697d2d883d743903685ae"
+SRCREV_machine_pn-linux-yocto ?= "cb4faf3af527e25feee584f39c3956ca0c9448c8"
 SRCREV_pn-linux-libc-headers-yocto ??= "343c06b25b221aa7f7019aee83b2d976041fddce"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
index d4bee77..3c1e669 100644
--- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
@@ -1,6 +1,7 @@
 inherit kernel
 require linux-yocto.inc
 
+KMACHINE = "common_pc"
 KMACHINE_qemux86  = "common_pc"
 KMACHINE_qemux86-64  = "common_pc_64"
 KMACHINE_qemuppc  = "qemu_ppc32"
@@ -14,20 +15,19 @@ KMACHINE_beagleboard = "beagleboard"
 LINUX_VERSION ?= "2.6.34"
 LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE_EXTENSION}"
 
+KMETA = wrs_meta
+KBRANCH = ${KMACHINE}-${LINUX_KERNEL_TYPE_EXTENSION}
+
 PR = "r1"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 SRCREV_FORMAT = "meta_machine"
 
 COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
 
-# this performs a fixup on the SRCREV for new/undefined BSPs
+# this performs a fixup on historical kernel types with embedded _'s
 python __anonymous () {
     import bb, re, string
 
-    rev = bb.data.getVar("SRCREV_machine", d, 1)
-    if rev == "standard":
-        bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
-
     kerntype = string.replace(bb.data.expand("${LINUX_KERNEL_TYPE}", d), "_", "-")
     bb.data.setVar("LINUX_KERNEL_TYPE_EXTENSION", kerntype, d)
 }
diff --git a/meta/recipes-kernel/linux/linux-yocto.inc b/meta/recipes-kernel/linux/linux-yocto.inc
index 3ad849e..03935fa 100644
--- a/meta/recipes-kernel/linux/linux-yocto.inc
+++ b/meta/recipes-kernel/linux/linux-yocto.inc
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
 # A KMACHINE is the mapping of a yocto $MACHINE to what is built
 # by the kernel. This is typically the branch that should be built,
 # and it can be specific to the machine or shared
-KMACHINE = "UNDEFINED"
+# KMACHINE = "UNDEFINED"
 
 # Set this to 'preempt_rt' in the local.conf if you want a real time kernel
 LINUX_KERNEL_TYPE ?= standard
@@ -19,4 +19,4 @@ addtask kernel_configme before do_configure after do_patch
 # Pick up shared functions
 inherit kernel-yocto
 
-B = "${WORKDIR}/linux-${KMACHINE}-${LINUX_KERNEL_TYPE}-build"
+B = "${WORKDIR}/linux-${MACHINE}-${LINUX_KERNEL_TYPE}-build"
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index cc52397..75c6fb1 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -1,6 +1,7 @@
 inherit kernel
 require linux-yocto.inc
 
+KMACHINE = "yocto/standard/base"
 KMACHINE_qemux86  = "yocto/standard/common-pc/base"
 KMACHINE_qemux86-64  = "yocto/standard/common-pc-64/base"
 KMACHINE_qemuppc  = "yocto/standard/qemu-ppc32"
@@ -11,6 +12,9 @@ KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
 KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
+KBRANCH = ${KMACHINE}
+KMETA = meta
+
 LINUX_VERSION ?= "2.6.37"
 LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
 PR = "r15"
-- 
1.7.0.4


