Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB65B4C80B70;
	Fri, 17 Dec 2010 14:49:03 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBHKmjRb025159;
	Fri, 17 Dec 2010 12:48:47 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com, saul.wold@intel.com
Date: Fri, 17 Dec 2010 15:50:16 -0500
Message-Id: <8312a1834b24a22fb7f17ed82d9c053fa8565c76.1292618741.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292618741.git.bruce.ashfield@windriver.com>
References: <cover.1292618741.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1292618741.git.bruce.ashfield@windriver.com>
References: <cover.1292618741.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto: remove or adjust to _ in branch names
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
X-List-Received-Date: Fri, 17 Dec 2010 20:49:04 -0000

The existing 2.6.34 kernel tree uses _ where poky typically
uses -. This is a historical artifact, since working with
gnu Make and shells means avoiding - is wise. The opposite
is true in Yocto.

To avoid using the _ reserved character wherever possible
we can simply remove it from the branch names in the
new 2.6.37 kernel, but to keep the content stable in the
0.9 2.6.34 kernel, we map _ to - for the purposes of
packaging.

To further faciliate this switch, the branch names no
longer need to be shortened in the KMACHINE mappings, but
can be fully specified and the tools/processing adapt as
required. This gives us the flexibility to map multiple
boards to a single branch for building.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass                  |   12 +++++-------
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |    8 ++++++--
 meta/recipes-kernel/linux/linux-yocto_git.bb       |   18 +++++++++---------
 4 files changed, 21 insertions(+), 19 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 8e82012..f541878 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -10,7 +10,7 @@ S = "${WORKDIR}/linux"
 # and is used in the SRC_URI. The machine is then set back to ${MACHINE},
 # since futher processing will use that to create local branches
 python __anonymous () {
-    import bb, re
+    import bb, re, string
 
     version = bb.data.getVar("LINUX_VERSION", d, 1)
     # 2.6.34 signifies the old-style tree, so we need some temporary
@@ -29,12 +29,14 @@ python __anonymous () {
         # The branch for a build is:
         #    yocto/<kernel type>/${KMACHINE} or
         #    yocto/<kernel type>/${KMACHINE}/base
-        bb.data.setVar("KBRANCH", bb.data.expand("yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}",d), d)
+        bb.data.setVar("KBRANCH", bb.data.expand("${KMACHINE}",d), d)
         bb.data.setVar("KMETA", "meta", d)
 
         mach = bb.data.getVar("KMACHINE", d, 1)
         # drop the "/base" if it was on the KMACHINE
         kmachine = mach.replace('/base','')
+        # drop everything but the last segment
+        kmachine = os.path.basename( kmachine )
         # and then write KMACHINE back
         bb.data.setVar('KMACHINE_' + bb.data.expand("${MACHINE}",d), kmachine, d)
 
@@ -51,11 +53,7 @@ do_patch() {
 	    defconfig=${WORKDIR}/defconfig
 	fi
 
-	if [ -n "${BOOTSTRAP}" ]; then
-	    kbranch="yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
-	else
-	    kbranch=${KBRANCH}
-	fi
+	kbranch=${KBRANCH}
 
 	# simply ensures that a branch of the right name has been created
 	createme ${ARCH} ${kbranch} ${defconfig}
diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index a8fdf81..6b77bee 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -57,7 +57,7 @@ SRCREV_pn-gypsy ??= "147"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "c85dcdd2dc50d71476a11c2960bf14c2b144b3c7"
+SRCREV_pn-kern-tools-native ??= "796d7fef92b2eed449c17c14441587ff0c465368"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "2031"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
index dd4d176..a059f3d 100644
--- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
@@ -12,7 +12,8 @@ KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "beagleboard"
 
 LINUX_VERSION ?= "2.6.34"
-LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
+LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE_EXTENSION}"
+
 PR = "r0"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 SRCREV_FORMAT = "meta_machine"
@@ -21,11 +22,14 @@ COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|route
 
 # this performs a fixup on the SRCREV for new/undefined BSPs
 python __anonymous () {
-    import bb, re
+    import bb, re, string
 
     rev = bb.data.getVar("SRCREV_machine", d, 1)
     if rev == "standard":
         bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
+
+    kerntype = string.replace(bb.data.expand("${LINUX_KERNEL_TYPE}", d), "_", "-")
+    bb.data.setVar("LINUX_KERNEL_TYPE_EXTENSION", kerntype, d)
 }
 
 SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index f40fe38..6677f99 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -1,15 +1,15 @@
 inherit kernel
 require linux-yocto.inc
 
-KMACHINE_qemux86  = "common_pc/base"
-KMACHINE_qemux86-64  = "common_pc_64"
-KMACHINE_qemuppc  = "qemu_ppc32"
-KMACHINE_qemumips = "mti_malta32_be"
-KMACHINE_qemuarm  = "arm_versatile_926ejs"
-KMACHINE_atom-pc  = "atom-pc"
-KMACHINE_routerstationpro = "routerstationpro"
-KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
-KMACHINE_beagleboard = "beagleboard"
+KMACHINE_qemux86  = "yocto/standard/common_pc/base"
+KMACHINE_qemux86-64  = "yocto/standard/common-pc-64"
+KMACHINE_qemuppc  = "yocto/standard/qemu-ppc32"
+KMACHINE_qemumips = "yocto/standard/mti-malta32-be"
+KMACHINE_qemuarm  = "yocto/standard/arm-versatile-926ejs"
+KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
+KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
+KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 LINUX_VERSION ?= "2.6.37"
 LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
-- 
1.7.0.4


