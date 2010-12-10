Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7AF934C810B0;
	Fri, 10 Dec 2010 10:01:43 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBAG1dCR027769;
	Fri, 10 Dec 2010 08:01:40 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 10 Dec 2010 11:02:53 -0500
Message-Id: <029f02f207a3bd0bc408da480728f38f36001831.1291996631.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1291996631.git.bruce.ashfield@windriver.com>
References: <cover.1291996631.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1291996631.git.bruce.ashfield@windriver.com>
References: <cover.1291996631.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/3] yocto-kernel: factor common routes, update to 2.6.37 and branch renaming
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
X-List-Received-Date: Fri, 10 Dec 2010 16:01:43 -0000

In order to extend and create more kernel recipes based on the
supported yocto kernel common routines need to be placed in
re-usable blocks.

To accomplish this meta/recipes-kernel/linux/linux-yocto_git.bb
is broken into three parts:

 - meta/classes/kernel-yocto.bbclass: contains common routines
   for checking out and configuring a yocto kernel git repository.
   This should be inherited by recipes that need this functionality.

 - meta/recipes-kernel/linux/linux-yocto.inc: Contains the machine
   mappings, compatibility, build directives and common task
   definitions for a yocto kernel based recipe. This inherits
   kernel-yocto, and is the typical point of entry for other recipes.

 - meta/recipes-kernel/linux/linuux-tools.inc: tasks and function definitions
   for kernel recipes that want to build/export perf

It also updates the linux-yocto recipe to default to 2.6.37.

As part of the update to 2.6.37 the branch naming and conventions
have been modified to show inheritance, and be more generic.

For example:

  master
  meta
  yocto/base
  yocto/standard/arm_versatile_926ejs
  yocto/standard/base
  yocto/standard/beagleboard
  yocto/standard/common_pc/atom-pc
  yocto/standard/common_pc/base
  yocto/standard/common_pc_64
  yocto/standard/fsl-mpc8315e-rdb
  yocto/standard/intel_atom_z530
  yocto/standard/intel_core_qm57_pch
  yocto/standard/mti_malta32_be
  yocto/standard/preempt_rt/base
  yocto/standard/preempt_rt/common_pc
  yocto/standard/preempt_rt/common_pc_64
  yocto/standard/preempt_rt/intel_atom_z530
  yocto/standard/preempt_rt/intel_core_qm57_pch
  yocto/standard/qemu_ppc32
  yocto/standard/routerstationpro

In this structure:

  master: tracks the mainline kernel
  meta: meta information for the BSPs and kernel features
  yocto/base: baseline kernel branch
  yocto/standard/base: 'standard' kernel, contains features
                        and configs for all BSPs
  yocto/standard/<machine>: represents a BSP with specific
                            features or configurations

The tools, tree and libc-headers have all been updated to
deal with this new structure. Also in addition to dealing with
the new structure, they continue to work with the existing
tree and will adapt at runtime to the differences.

The linux-yocto-stable_git.bb recipe continues to build the
2.6.34 based tree,and linux-yocto_git.bb builds 2.6.37. As
boards are enabled for the new kernel they will move from
-stable to the development kernel. As of now, only the
emulated targets have moved to 2.6.37-rcX

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-emenlow/conf/machine/emenlow.conf             |    3 +-
 meta/classes/kernel-yocto.bbclass                  |  202 ++++++++++++++++++
 .../conf/distro/include/poky-default-revisions.inc |   36 +++-
 meta/conf/machine/atom-pc.conf                     |    3 +-
 meta/conf/machine/beagleboard.conf                 |    3 +-
 meta/conf/machine/include/qemu.inc                 |    1 +
 meta/conf/machine/mpc8315e-rdb.conf                |    3 +-
 meta/conf/machine/routerstationpro.conf            |    3 +-
 .../linux-libc-headers-yocto_git.bb                |    4 +-
 meta/recipes-kernel/linux/linux-tools.inc          |   19 ++
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |   41 ++++
 meta/recipes-kernel/linux/linux-yocto.inc          |   23 ++
 meta/recipes-kernel/linux/linux-yocto_git.bb       |  219 ++------------------
 13 files changed, 336 insertions(+), 224 deletions(-)
 create mode 100644 meta/classes/kernel-yocto.bbclass
 create mode 100644 meta/recipes-kernel/linux/linux-tools.inc
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-stable_git.bb
 create mode 100644 meta/recipes-kernel/linux/linux-yocto.inc

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 0f9ed8a..b8dea64 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -16,7 +16,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
+#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
new file mode 100644
index 0000000..8e82012
--- /dev/null
+++ b/meta/classes/kernel-yocto.bbclass
@@ -0,0 +1,202 @@
+S = "${WORKDIR}/linux"
+
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
+    version = bb.data.getVar("LINUX_VERSION", d, 1)
+    # 2.6.34 signifies the old-style tree, so we need some temporary
+    # conditional processing based on the kernel version.
+    if version == "2.6.34":
+        bb.data.setVar("KBRANCH", "${KMACHINE}-${LINUX_KERNEL_TYPE}", d)
+        bb.data.setVar("KMETA", "wrs_meta", d)
+        mach = bb.data.getVar("KMACHINE", d, 1)
+        if mach == "UNDEFINED":
+            bb.data.setVar("KBRANCH", "standard", d)
+            bb.data.setVar("KMACHINE", "${MACHINE}", d)
+            # track the global configuration on a bootstrapped BSP
+            bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
+            bb.data.setVar("BOOTSTRAP", "t", d)
+    else:
+        # The branch for a build is:
+        #    yocto/<kernel type>/${KMACHINE} or
+        #    yocto/<kernel type>/${KMACHINE}/base
+        bb.data.setVar("KBRANCH", bb.data.expand("yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}",d), d)
+        bb.data.setVar("KMETA", "meta", d)
+
+        mach = bb.data.getVar("KMACHINE", d, 1)
+        # drop the "/base" if it was on the KMACHINE
+        kmachine = mach.replace('/base','')
+        # and then write KMACHINE back
+        bb.data.setVar('KMACHINE_' + bb.data.expand("${MACHINE}",d), kmachine, d)
+
+        if mach == "UNDEFINED":
+            bb.data.setVar("KBRANCH", "yocto/standard/base", d)
+            bb.data.setVar('KMACHINE_' + bb.data.expand("${MACHINE}",d), bb.data.expand("${MACHINE}",d), d)
+            bb.data.setVar("SRCREV_machine", "standard", d)
+            bb.data.setVar("BOOTSTRAP", "t", d)
+}
+
+do_patch() {
+	cd ${S}
+	if [ -f ${WORKDIR}/defconfig ]; then
+	    defconfig=${WORKDIR}/defconfig
+	fi
+
+	if [ -n "${BOOTSTRAP}" ]; then
+	    kbranch="yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
+	else
+	    kbranch=${KBRANCH}
+	fi
+
+	# simply ensures that a branch of the right name has been created
+	createme ${ARCH} ${kbranch} ${defconfig}
+	if [ $? -ne 0 ]; then
+		echo "ERROR. Could not create ${kbranch}"
+		exit 1
+	fi
+
+	# updates or generates the target description
+	if [ -n "${KERNEL_FEATURES}" ]; then
+	       addon_features="--features ${KERNEL_FEATURES}"
+	fi
+	updateme ${addon_features} ${ARCH} ${WORKDIR}
+	if [ $? -ne 0 ]; then
+		echo "ERROR. Could not update ${kbranch}"
+		exit 1
+	fi
+
+	# executes and modifies the source tree as required
+	patchme ${kbranch}
+	if [ $? -ne 0 ]; then
+		echo "ERROR. Could not modify ${kbranch}"
+		exit 1
+	fi
+}
+
+do_kernel_checkout() {
+	if [ -d ${WORKDIR}/.git/refs/remotes/origin ]; then
+		echo "Fixing up git directory for ${LINUX_KERNEL_TYPE}/${KMACHINE}"
+		rm -rf ${S}
+		mkdir ${S}
+		mv ${WORKDIR}/.git ${S}
+	
+		if [ -e ${S}/.git/packed-refs ]; then
+			cd ${S}
+			rm -f .git/refs/remotes/origin/HEAD
+IFS='
+';
+			for r in `git show-ref | grep remotes`; do
+				ref=`echo $r | cut -d' ' -f1`; 
+				b=`echo $r | cut -d' ' -f2 | sed 's%refs/remotes/origin/%%'`;
+				dir=`dirname $b`
+				mkdir -p .git/refs/heads/$dir
+				echo $ref > .git/refs/heads/$b
+			done
+			cd ..
+		else
+			cp -r ${S}/.git/refs/remotes/origin/* ${S}/.git/refs/heads
+			rmdir ${S}/.git/refs/remotes/origin
+		fi
+	fi
+	cd ${S}
+
+	# checkout and clobber and unimportant files
+	git checkout -f ${KBRANCH}
+}
+do_kernel_checkout[dirs] = "${S}"
+
+addtask kernel_checkout before do_patch after do_unpack
+
+do_kernel_configme() {
+	echo "[INFO] doing kernel configme"
+
+	cd ${S}
+	configme --reconfig
+	if [ $? -ne 0 ]; then
+		echo "ERROR. Could not configure ${KMACHINE}-${LINUX_KERNEL_TYPE}"
+		exit 1
+	fi
+
+	echo "# Global settings from linux recipe" >> ${B}/.config
+	echo "CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >> ${B}/.config
+}
+
+do_kernel_configcheck() {
+	echo "[INFO] validating kernel configuration"
+	cd ${B}/..
+	kconf_check ${B}/.config ${B} ${S} ${B} ${LINUX_VERSION} ${KMACHINE}-${LINUX_KERNEL_TYPE}
+}
+
+
+# Ensure that the branches (BSP and meta) are on the locatios specified by
+# their SRCREV values. If they are NOT on the right commits, the branches
+# are reset to the correct commit.
+do_validate_branches() {
+	cd ${S}
+ 	branch_head=`git show-ref -s --heads ${KBRANCH}`
+ 	meta_head=`git show-ref -s --heads ${KMETA}`
+ 	target_branch_head="${SRCREV_machine}"
+ 	target_meta_head="${SRCREV_meta}"
+
+	# nothing to do if bootstrapping
+ 	if [ -n "${BOOTSTRAP}" ]; then
+ 	 	return
+ 	fi
+
+	current=`git branch |grep \*|sed 's/^\* //'`
+	if [ -n "$target_branch_head" ] && [ "$branch_head" != "$target_branch_head" ]; then
+		if [ -n "${KERNEL_REVISION_CHECKING}" ]; then
+			git show ${target_branch_head} > /dev/null 2>&1
+			if [ $? -eq 0 ]; then
+				echo "Forcing branch $current to ${target_branch_head}"
+				git branch -m $current $current-orig
+				git checkout -b $current ${target_branch_head}
+			else
+				echo "ERROR ${target_branch_head} is not a valid commit ID."
+				echo "The kernel source tree may be out of sync"
+				exit 1
+			fi	       
+		fi
+	fi
+
+	if [ "$meta_head" != "$target_meta_head" ]; then
+		if [ -n "${KERNEL_REVISION_CHECKING}" ]; then
+			git show ${target_meta_head} > /dev/null 2>&1
+			if [ $? -eq 0 ]; then
+				echo "Forcing branch meta to ${target_meta_head}"
+				git branch -m ${KMETA} ${KMETA}-orig
+				git checkout -b ${KMETA} ${target_meta_head}
+			else
+				echo "ERROR ${target_meta_head} is not a valid commit ID"
+				echo "The kernel source tree may be out of sync"
+				exit 1
+			fi	   
+		fi
+	fi
+
+	# restore the branch for builds
+	git checkout -f ${KBRANCH}
+}
+
+# Many scripts want to look in arch/$arch/boot for the bootable
+# image. This poses a problem for vmlinux based booting. This 
+# task arranges to have vmlinux appear in the normalized directory
+# location.
+do_kernel_link_vmlinux() {
+	if [ ! -d "${B}/arch/${ARCH}/boot" ]; then
+		mkdir ${B}/arch/${ARCH}/boot
+	fi
+	cd ${B}/arch/${ARCH}/boot
+	ln -sf ../../../vmlinux
+}
+
+
diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 7f3468d..fa6d785 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -56,7 +56,7 @@ SRCREV_pn-gypsy ??= "147"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "9722d8decacd2b750f079b3fde7918810700f80e"
+SRCREV_pn-kern-tools-native ??= "c85dcdd2dc50d71476a11c2960bf14c2b144b3c7"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "2031"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
@@ -83,17 +83,29 @@ SRCREV_pn-linux-omap-zoomsync ??= "015cbaf1035cd9a61d33a27de2a22902555db3c5"
 SRCREV_pn-linux-omap2 ??= "d3b3ae0fe6c71641da19c8de466ec366d39847e3"
 SRCREV_pn-linux-omap3 ??= "de1121fdb899f762b9e717f44eaf3fae7c00cd3e"
 SRCREV_pn-linux-omap3-pm ??= "totallybroken"
-SRCREV_machine_pn-linux-yocto_qemuarm ?= "4f4177b4bea5b8858acc1eeb788d80b7af0df962"
-SRCREV_machine_pn-linux-yocto_qemumips ?= "81f3cd467b9d51fa1dfa2d5939337cc756ae8061"
-SRCREV_machine_pn-linux-yocto_qemuppc ?= "9ac0daee43dd19d8bea828cf79450c9748ae0daa"
-SRCREV_machine_pn-linux-yocto_qemux86 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-yocto_emenlow ?= "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
-SRCREV_machine_pn-linux-yocto_atom-pc ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-yocto_routerstationpro ?= "2ec2edaf256dd8500ee3d4763fee6ca3ecd6da4b"
-SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
-SRCREV_machine_pn-linux-yocto_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_meta_pn-linux-yocto ?= "d1cd5c80ee97e81e130be8c3de3965b770f320d6"
+SRCREV_machine_pn-linux-yocto-stable_qemuarm ?= "4f4177b4bea5b8858acc1eeb788d80b7af0df962"
+SRCREV_machine_pn-linux-yocto-stable_qemumips ?= "81f3cd467b9d51fa1dfa2d5939337cc756ae8061"
+SRCREV_machine_pn-linux-yocto-stable_qemuppc ?= "9ac0daee43dd19d8bea828cf79450c9748ae0daa"
+SRCREV_machine_pn-linux-yocto-stable_qemux86 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
+SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
+SRCREV_machine_pn-linux-yocto-stable_emenlow ?= "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
+SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
+SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "2ec2edaf256dd8500ee3d4763fee6ca3ecd6da4b"
+SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
+SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
+SRCREV_meta_pn-linux-yocto-stable ?= "d1cd5c80ee97e81e130be8c3de3965b770f320d6"
+# development SRCREVs
+SRCREV_machine_pn-linux-yocto_qemuarm = "87e00a2d47ba80b4ad1f9170cb3f6cf81f21d739"
+SRCREV_machine_pn-linux-yocto_qemumips = "7231e473dd981a28e3cea9f677ed60583e731550"
+SRCREV_machine_pn-linux-yocto_qemuppc = "3ab3559637130b65d8889fa74286fdb57935726f"
+SRCREV_machine_pn-linux-yocto_qemux86 = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
+SRCREV_machine_pn-linux-yocto_qemux86-64 = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
+SRCREV_machine_pn-linux-yocto_emenlow = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
+SRCREV_machine_pn-linux-yocto_atom-pc = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
+SRCREV_machine_pn-linux-yocto_routerstationpro = "773d3a1c8eba563ffcdbf61057ef6e39cee0c88b"
+SRCREV_machine_pn-linux-yocto_mpc8315e-rdb = "5ff609967ffe87c49d534d7861a7e0b150517726"
+SRCREV_machine_pn-linux-yocto_beagleboard = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
+SRCREV_meta_pn-linux-yocto ?= "ee0a10ab687b29c4d22d47e5b28bc8b3ebb7a8d9"
 SRCREV_pn-linux-libc-headers-yocto ??= "09a39c638dd65dc27c549c119abe1af2631b2ae0"
 SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
diff --git a/meta/conf/machine/atom-pc.conf b/meta/conf/machine/atom-pc.conf
index 7ca952a..8cf09b8 100644
--- a/meta/conf/machine/atom-pc.conf
+++ b/meta/conf/machine/atom-pc.conf
@@ -13,7 +13,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 wifi \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
+#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
diff --git a/meta/conf/machine/beagleboard.conf b/meta/conf/machine/beagleboard.conf
index 657bd36..1b73250 100644
--- a/meta/conf/machine/beagleboard.conf
+++ b/meta/conf/machine/beagleboard.conf
@@ -22,7 +22,8 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 # Guesswork
 SERIAL_CONSOLE = "115200 ttyS2"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
+#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 KERNEL_IMAGETYPE = "uImage"
 
diff --git a/meta/conf/machine/include/qemu.inc b/meta/conf/machine/include/qemu.inc
index 1b1b888..502e24f 100644
--- a/meta/conf/machine/include/qemu.inc
+++ b/meta/conf/machine/include/qemu.inc
@@ -16,5 +16,6 @@ RDEPENDS_kernel-base = ""
 
 # Use a common kernel recipe for all QEMU machines
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
diff --git a/meta/conf/machine/mpc8315e-rdb.conf b/meta/conf/machine/mpc8315e-rdb.conf
index 3341186..1b7982a 100644
--- a/meta/conf/machine/mpc8315e-rdb.conf
+++ b/meta/conf/machine/mpc8315e-rdb.conf
@@ -13,4 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
+#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
diff --git a/meta/conf/machine/routerstationpro.conf b/meta/conf/machine/routerstationpro.conf
index 485ee3c..4f1bbbb 100644
--- a/meta/conf/machine/routerstationpro.conf
+++ b/meta/conf/machine/routerstationpro.conf
@@ -12,7 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
 KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
+#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
index 6ae6d5f..3e3c1fa 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
@@ -4,7 +4,7 @@ INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS += "unifdef-native"
 PROVIDES = "linux-libc-headers"
 PV = "2.6.34+git-${SRCPV}"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;fullclone=1"
 
@@ -45,7 +45,7 @@ do_compile () {
 
 do_install() {
 	set_arch
-	oe_runmake headers_install_all INSTALL_HDR_PATH=${D}${exec_prefix} ARCH=$ARCH
+	oe_runmake headers_install INSTALL_HDR_PATH=${D}${exec_prefix} ARCH=$ARCH
 }
 
 BBCLASSEXTEND = "nativesdk"
diff --git a/meta/recipes-kernel/linux/linux-tools.inc b/meta/recipes-kernel/linux/linux-tools.inc
new file mode 100644
index 0000000..714207f
--- /dev/null
+++ b/meta/recipes-kernel/linux/linux-tools.inc
@@ -0,0 +1,19 @@
+# included by kernel recipes if they want to build/provide
+# perf functionality from their tree.
+
+do_compile_perf() {
+	oe_runmake -C ${S}/tools/perf CC="${KERNEL_CC}" LD="${KERNEL_LD}" prefix=${prefix}
+}
+
+do_install_perf() {
+	oe_runmake -C ${S}/tools/perf CC="${KERNEL_CC}" LD="${KERNEL_LD}" prefix=${prefix} DESTDIR=${D} install
+}
+
+
+# perf tasks
+addtask compile_perf after do_compile before do_install
+addtask install_perf after do_install before do_package do_deploy
+
+do_compile_perf[depends] =  "virtual/libc:do_populate_sysroot"
+do_compile_perf[depends] =+ "elfutils:do_populate_sysroot"
+RDEPENDS_perf += "python perl elfutils"
diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
new file mode 100644
index 0000000..8ecd86f
--- /dev/null
+++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
@@ -0,0 +1,41 @@
+inherit kernel
+require linux-yocto.inc
+
+KMACHINE_qemux86  = "common_pc/base"
+KMACHINE_qemux86-64  = "common_pc_64"
+KMACHINE_qemuppc  = "qemu_ppc32"
+KMACHINE_qemumips = "mti_malta32_be"
+KMACHINE_qemuarm  = "arm_versatile_926ejs"
+KMACHINE_atom-pc  = "atom-pc"
+KMACHINE_routerstationpro = "routerstationpro"
+KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
+KMACHINE_beagleboard = "beagleboard"
+
+LINUX_VERSION ?= "2.6.34"
+LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
+PR = "r0"
+PV = "${LINUX_VERSION}+git${SRCPV}"
+SRCREV_FORMAT = "meta_machine"
+
+# this performs a fixup on the SRCREV for new/undefined BSPs
+python __anonymous () {
+    import bb, re
+
+    rev = bb.data.getVar("SRCREV_machine", d, 1)
+    if rev == "standard":
+        bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
+}
+
+SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
+           git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
+
+
+# Functionality flags
+KERNEL_REVISION_CHECKING ?= "t"
+KERNEL_FEATURES=features/netfilter
+
+# extra tasks
+addtask kernel_link_vmlinux after do_compile before do_install
+addtask validate_branches before do_patch after do_kernel_checkout
+
+require linux-tools.inc
diff --git a/meta/recipes-kernel/linux/linux-yocto.inc b/meta/recipes-kernel/linux/linux-yocto.inc
new file mode 100644
index 0000000..095b337
--- /dev/null
+++ b/meta/recipes-kernel/linux/linux-yocto.inc
@@ -0,0 +1,23 @@
+DESCRIPTION = "Yocto Kernel"
+SECTION = "kernel"
+LICENSE = "GPL"
+
+# A KMACHINE is the mapping of a yocto $MACHINE to what is built
+# by the kernel. This is typically the branch that should be built,
+# and it can be specific to the machine or shared
+KMACHINE = "UNDEFINED"
+
+COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro)"
+
+# Set this to 'preempt_rt' in the local.conf if you want a real time kernel
+LINUX_KERNEL_TYPE ?= standard
+
+do_patch[depends] = "kern-tools-native:do_populate_sysroot"
+
+addtask kernel_configme before do_configure after do_patch
+addtask kernel_configcheck after do_configure before do_compile
+
+# Pick up shared functions
+inherit kernel-yocto
+
+B = "${WORKDIR}/linux-${KMACHINE}-${LINUX_KERNEL_TYPE}-build"
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index ef005ae..1e3df47 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -1,21 +1,7 @@
-DESCRIPTION = "Yocto Kernel"
-SECTION = "kernel"
-LICENSE = "GPL"
-
-# Set this to 'preempt_rt' in the local.conf if you want a real time kernel
-LINUX_KERNEL_TYPE ?= standard
-SRCREV_FORMAT = "meta_machine"
-PV = "2.6.34+git${SRCPV}"
-
-# To use a staged, on-disk bare clone of a Wind River Kernel, use a 
-# variant of the below
-# SRC_URI = "git://///path/to/kernel/default_kernel.git;fullclone=1"
-SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
-           git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
+inherit kernel
+require linux-yocto.inc
 
-# map the poky machine to a 'kernel machine'
-KMACHINE = "UNDEFINED"
-KMACHINE_qemux86  = "common_pc"
+KMACHINE_qemux86  = "common_pc/base"
 KMACHINE_qemux86-64  = "common_pc_64"
 KMACHINE_qemuppc  = "qemu_ppc32"
 KMACHINE_qemumips = "mti_malta32_be"
@@ -25,199 +11,22 @@ KMACHINE_routerstationpro = "routerstationpro"
 KMACHINE_mpc8315e-rdb = "fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "beagleboard"
 
-# Determine which branch to fetch and build. Not all branches are in the
-# upstream repo (but will be locally created after the fetchers run) so 
-# a fallback branch needs to be chosen. 
-#
-# The default machine 'UNDEFINED'. If the machine is not set to a specific
-# branch in this recipe or in a recipe extension, then we fallback to a 
-# branch that is always present 'standard'. This sets the KBRANCH variable
-# and is used in the SRC_URI. The machine is then set back to ${MACHINE},
-# since futher processing will use that to create local branches
-python __anonymous () {
-    import bb, re
-
-    bb.data.setVar("KBRANCH", "${KMACHINE}-${LINUX_KERNEL_TYPE}", d)
-    mach = bb.data.getVar("KMACHINE", d, 1)
-    if mach == "UNDEFINED":
-        bb.data.setVar("KBRANCH", "standard", d)
-        bb.data.setVar("KMACHINE", "${MACHINE}", d)
-        # track the global configuration on a bootstrapped BSP
-        bb.data.setVar("SRCREV_machine", "${SRCREV_meta}", d)
-        bb.data.setVar("BOOTSTRAP", "t", d)
-}
-
-COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
+LINUX_VERSION ?= "2.6.37"
+LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
+PR = "r14"
+PV = "${LINUX_VERSION}+git${SRCPV}"
+SRCREV_FORMAT = "meta_machine"
 
-LINUX_VERSION = "v2.6.34"
-LINUX_VERSION_EXTENSION = "-wr-${LINUX_KERNEL_TYPE}"
-PR = "r13"
+SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
+           git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;noclone=1;branch=meta;name=meta"
 
-S = "${WORKDIR}/linux"
-B = "${WORKDIR}/linux-${KMACHINE}-${LINUX_KERNEL_TYPE}-build"
 
-# functionality flags
+# Functionality flags
 KERNEL_REVISION_CHECKING ?= "t"
 KERNEL_FEATURES=features/netfilter
 
-do_patch() {
-	cd ${S}
-	if [ -f ${WORKDIR}/defconfig ]; then
-	    defconfig=${WORKDIR}/defconfig
-	fi
-
-	# simply ensures that a branch of the right name has been created
-	createme ${ARCH} ${KMACHINE}-${LINUX_KERNEL_TYPE} ${defconfig}
-	if [ $? -ne 0 ]; then
-		echo "ERROR. Could not create ${KMACHINE}-${LINUX_KERNEL_TYPE}"
-		exit 1
-	fi
-
-        # updates or generates the target description
-	if [ -n "${KERNEL_FEATURES}" ]; then
-	       addon_features="--features ${KERNEL_FEATURES}"
-	fi
-	updateme ${addon_features} ${ARCH} ${WORKDIR}
-	if [ $? -ne 0 ]; then
-		echo "ERROR. Could not update ${KMACHINE}-${LINUX_KERNEL_TYPE}"
-		exit 1
-	fi
-
-	# executes and modifies the source tree as required
-	patchme ${KMACHINE}-${LINUX_KERNEL_TYPE}
-	if [ $? -ne 0 ]; then
-		echo "ERROR. Could not modify ${KMACHINE}-${LINUX_KERNEL_TYPE}"
-		exit 1
-	fi
-}
-
-validate_branches() {
-	branch_head=`git show-ref -s --heads ${KBRANCH}`
-	meta_head=`git show-ref -s --heads wrs_meta`
-	target_branch_head="${SRCREV_machine}"
-	target_meta_head="${SRCREV_meta}"
-
-	if [ -n "$target_branch_head" ] && [ "$branch_head" != "$target_branch_head" ]; then
-		if [ -n "${KERNEL_REVISION_CHECKING}" ]; then
-			git show ${target_branch_head} > /dev/null 2>&1
-			if [ $? -eq 0 ]; then
-				echo "Forcing branch ${KMACHINE}-${LINUX_KERNEL_TYPE} to ${target_branch_head}"
-				git branch -m ${KMACHINE}-${LINUX_KERNEL_TYPE} ${KMACHINE}-${LINUX_KERNEL_TYPE}-orig
-				git checkout -b ${KMACHINE}-${LINUX_KERNEL_TYPE} ${target_branch_head}
-			else
-				echo "ERROR ${target_branch_head} is not a valid commit ID."
-				echo "The kernel source tree may be out of sync"
-				exit 1
-			fi	       
-		fi
-	fi
-
-	if [ "$meta_head" != "$target_meta_head" ]; then
-		if [ -n "${KERNEL_REVISION_CHECKING}" ]; then
-			git show ${target_meta_head} > /dev/null 2>&1
-			if [ $? -eq 0 ]; then
-				echo "Forcing branch wrs_meta to ${target_meta_head}"
-				git branch -m wrs_meta wrs_meta-orig
-				git checkout -b wrs_meta ${target_meta_head}
-			else
-				echo "ERROR ${target_meta_head} is not a valid commit ID"
-				echo "The kernel source tree may be out of sync"
-				exit 1
-			fi	   
-		fi
-	fi
-}
-
-do_kernel_checkout() {
-	if [ -d ${WORKDIR}/.git/refs/remotes/origin ]; then
-		echo "Fixing up git directory for ${KMACHINE}-${LINUX_KERNEL_TYPE}"
-		rm -rf ${S}
-		mkdir ${S}
-		mv ${WORKDIR}/.git ${S}
-	
-		if [ -e ${S}/.git/packed-refs ]; then
-			cd ${S}
-			rm -f .git/refs/remotes/origin/HEAD
-IFS='
-';
-
-			for r in `git show-ref | grep remotes`; do
-				ref=`echo $r | cut -d' ' -f1`; 
-				b=`echo $r | cut -d'/' -f4`;
-				echo $ref > .git/refs/heads/$b
-			done
-			cd ..
-		else
-			mv ${S}/.git/refs/remotes/origin/* ${S}/.git/refs/heads
-			rmdir ${S}/.git/refs/remotes/origin
-		fi
-	fi
-	cd ${S}
-
-	# checkout and clobber and unimportant files
-	git checkout -f ${KBRANCH}
-	
-	if [ -z "${BOOTSTRAP}" ]; then
-		validate_branches
-	fi
-
-	# this second checkout is intentional, we want to leave ourselves
-	# on the branch to be built, but validate_branches could have changed
-	# our initial checkout. So we do it a second time to be sure
-	git checkout -f ${KBRANCH}
-}
-do_kernel_checkout[dirs] = "${S}"
-
-addtask kernel_checkout before do_patch after do_unpack
-
-do_kernel_configme() {
-	echo "Doing kernel configme"
-
-	cd ${S}
-	configme --reconfig
-	if [ $? -ne 0 ]; then
-		echo "ERROR. Could not configure ${KMACHINE}-${LINUX_KERNEL_TYPE}"
-		exit 1
-	fi
-
-	echo "# CONFIG_WRNOTE is not set" >> ${B}/.config
-	echo "# Global settings from linux recipe" >> ${B}/.config
-	echo "CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >> ${B}/.config
-}
-
-do_kernel_configcheck() {
-	echo "[INFO] validating kernel configuration"
-	cd ${B}/..
-	kconf_check ${B}/.config ${B} ${S} ${B} ${LINUX_VERSION} ${KMACHINE}-${LINUX_KERNEL_TYPE}
-}
-
-do_kernel_link_vmlinux() {
-	if [ ! -d "${B}/arch/${ARCH}/boot" ]; then
-		mkdir ${B}/arch/${ARCH}/boot
-	fi
-	cd ${B}/arch/${ARCH}/boot
-	ln -sf ../../../vmlinux
-}
-
-do_compile_perf() {
-	oe_runmake -C ${S}/tools/perf CC="${KERNEL_CC}" LD="${KERNEL_LD}" prefix=${prefix}
-}
-
-do_install_perf() {
-	oe_runmake -C ${S}/tools/perf CC="${KERNEL_CC}" LD="${KERNEL_LD}" prefix=${prefix} DESTDIR=${D} install
-}
-
-do_patch[depends] = "kern-tools-native:do_populate_sysroot"
-addtask kernel_configme before do_configure after do_patch
+# extra tasks
 addtask kernel_link_vmlinux after do_compile before do_install
-addtask kernel_configcheck after do_configure before do_compile
-
-inherit kernel
-
-# perf tasks
-addtask compile_perf after do_compile before do_install
-addtask install_perf after do_install before do_package do_deploy
+addtask validate_branches before do_patch after do_kernel_checkout
 
-do_compile_perf[depends] =  "virtual/libc:do_populate_sysroot"
-do_compile_perf[depends] =+ "elfutils:do_populate_sysroot"
-RDEPENDS_perf += "python perl elfutils"
+require linux-tools.inc
-- 
1.7.0.4


