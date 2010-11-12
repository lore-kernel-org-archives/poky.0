Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CA884C80FD4;
	Fri, 12 Nov 2010 12:40:11 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oACIe97P022416;
	Fri, 12 Nov 2010 10:40:10 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 12 Nov 2010 13:40:29 -0500
Message-Id: <260f3ad367b34221104b71380d329e092b6c93c6.1289583673.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1289583673.git.bruce.ashfield@windriver.com>
References: <cover.1289583673.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1289583673.git.bruce.ashfield@windriver.com>
References: <cover.1289583673.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 1/2] linux-wrs: implement BSP bootstrapping via fallback branches
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
X-List-Received-Date: Fri, 12 Nov 2010 18:40:12 -0000

When creating a new BSP there isn't always an upstream branch
to validate SRCREVs against. Therefore, creating a new BSP
required extra manipulations of the git repository, even though
the branch for the build would be dynamically created.

To fix this, provide a fallback to the 'standard' branch if
WRMACHINE is not assigned a specific value for the given MACHINE.
The fallback saved in KBRANCH, and represents the branch that
we should build, even if no fallback is required. Some substeps
of the recipe have been updated to use KBRANCH rather than
enforcing MACHINE-KERNELTYPE.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/recipes-kernel/linux/linux-wrs_git.bb |   40 ++++++++++++++++++++++-----
 1 files changed, 32 insertions(+), 8 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-wrs_git.bb b/meta/recipes-kernel/linux/linux-wrs_git.bb
index 1f2b11e..209648b 100644
--- a/meta/recipes-kernel/linux/linux-wrs_git.bb
+++ b/meta/recipes-kernel/linux/linux-wrs_git.bb
@@ -10,10 +10,10 @@ PV = "2.6.34+git${SRCPV}"
 # To use a staged, on-disk bare clone of a Wind River Kernel, use a 
 # variant of the below
 # SRC_URI = "git://///path/to/kernel/default_kernel.git;fullclone=1"
-SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${WRMACHINE}-${LINUX_KERNEL_TYPE};name=machine \
+SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
            git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
 
-WRMACHINE = "${MACHINE}"
+WRMACHINE = "UNDEFINED"
 WRMACHINE_qemux86  = "common_pc"
 WRMACHINE_qemux86-64  = "common_pc_64"
 WRMACHINE_qemuppc  = "qemu_ppc32"
@@ -24,11 +24,33 @@ WRMACHINE_routerstationpro = "routerstationpro"
 WRMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
 WRMACHINE_beagleboard = "beagleboard"
 
+# Determine which branch to fetch and build. Not all branches are in the
+# upstream repo (but will be locally created after the fetchers run) so 
+# a fallback branch needs to be chosen. 
+#
+# The default machine 'UNDEFINED'. If the machine is not set to a specific
+# branch in this recipe or in a recipe extension, then we fallback to a 
+# branch that is always present 'standard'. This sets the KBRANCH variable
+# and is used in the SRC_URI. The machine is then set back to ${MACHINE},
+# since futher processing will use that to create local branches
+python __anonymous () {
+    import bb, re
+
+    bb.data.setVar("KBRANCH", "${WRMACHINE}-${LINUX_KERNEL_TYPE}", d)
+    mach = bb.data.getVar("WRMACHINE", d, 1)
+    if mach == "UNDEFINED":
+        bb.data.setVar("KBRANCH", "standard", d)
+        bb.data.setVar("WRMACHINE", "${MACHINE}", d)
+        # track the global configuration on a bootstrapped BSP
+        bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
+        bb.data.setVar("BOOTSTRAP", "t", d)
+}
+
 COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
 
 LINUX_VERSION = "v2.6.34"
 LINUX_VERSION_EXTENSION = "-wr-${LINUX_KERNEL_TYPE}"
-PR = "r12"
+PR = "r13"
 
 S = "${WORKDIR}/linux"
 B = "${WORKDIR}/linux-${WRMACHINE}-${LINUX_KERNEL_TYPE}-build"
@@ -69,7 +91,7 @@ do_patch() {
 }
 
 validate_branches() {
-	branch_head=`git show-ref -s --heads ${WRMACHINE}-${LINUX_KERNEL_TYPE}`
+	branch_head=`git show-ref -s --heads ${KBRANCH}`
 	meta_head=`git show-ref -s --heads wrs_meta`
 	target_branch_head="${SRCREV_machine}"
 	target_meta_head="${SRCREV_meta}"
@@ -132,14 +154,16 @@ IFS='
 	cd ${S}
 
 	# checkout and clobber and unimportant files
-	git checkout -f ${WRMACHINE}-${LINUX_KERNEL_TYPE}
-
-	validate_branches
+	git checkout -f ${KBRANCH}
+	
+	if [ -z "${BOOTSTRAP}" ]; then
+		validate_branches
+	fi
 
 	# this second checkout is intentional, we want to leave ourselves
 	# on the branch to be built, but validate_branches could have changed
 	# our initial checkout. So we do it a second time to be sure
-	git checkout -f ${WRMACHINE}-${LINUX_KERNEL_TYPE}
+	git checkout -f ${KBRANCH}
 }
 do_wrlinux_checkout[dirs] = "${S}"
 
-- 
1.7.0.4


