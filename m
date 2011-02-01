Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE2674C800AE;
	Tue,  1 Feb 2011 11:22:07 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p11HM3Al018181;
	Tue, 1 Feb 2011 09:22:05 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue,  1 Feb 2011 12:25:06 -0500
Message-Id: <368409054248933ffd777fbd600a29670feeaa16.1296580694.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1296580694.git.bruce.ashfield@windriver.com>
References: <cover.1296580694.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1296580694.git.bruce.ashfield@windriver.com>
References: <cover.1296580694.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/2] linux-yocto: export kernel configuration audit to the console
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
X-List-Received-Date: Tue, 01 Feb 2011 17:22:08 -0000

Fixes [BUGID #692]

Previously the information dumped by the kernel configuration audit
scripts was only placed in log files. This isn't as useful as it
could be, since they are rarely checked. This change takes the
output from kconf_check and explicitly displays it to the user.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass                  |   17 +++++++++++------
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 meta/recipes-kernel/linux/linux-yocto.inc          |    1 -
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    1 +
 4 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 8479b39..70521a4 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -131,17 +131,22 @@ do_kernel_configme() {
 		echo "ERROR. Could not configure ${KMACHINE}-${LINUX_KERNEL_TYPE}"
 		exit 1
 	fi
-
+	
 	echo "# Global settings from linux recipe" >> ${B}/.config
 	echo "CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >> ${B}/.config
 }
 
-do_kernel_configcheck() {
-	echo "[INFO] validating kernel configuration"
-	cd ${B}/..
-	kconf_check ${B}/.config ${B} ${S} ${B} ${LINUX_VERSION} ${KMACHINE}-${LINUX_KERNEL_TYPE}
-}
+python do_kernel_configcheck() {
+    import bb, re, string, sys, commands
 
+    bb.plain("NOTE: validating kernel configuration")
+
+    pathprefix = "export PATH=%s; " % bb.data.getVar('PATH', d, True)
+    cmd = bb.data.expand("cd ${B}/..; kconf_check -${LINUX_KERNEL_TYPE}-config-${LINUX_VERSION} ${B} ${S} ${B} ${KBRANCH}",d )
+    ret, result = commands.getstatusoutput("%s%s" % (pathprefix, cmd))
+
+    bb.plain( "%s" % result )
+}
 
 # Ensure that the branches (BSP and meta) are on the locatios specified by
 # their SRCREV values. If they are NOT on the right commits, the branches
diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 0c3aa9a..ac0de6a 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -57,7 +57,7 @@ SRCREV_pn-gypsy ??= "147"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "8832b75dc2e494ae96ca3e1dee7bfde2f3096904"
+SRCREV_pn-kern-tools-native ??= "fde7ef8fa8043607752563b9b7908f487eb2f7dd"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "e8c2e412ea4a417afc1f30e32cb7bdc508b1dccc"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
@@ -105,7 +105,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc ?= "a9d833fda90e2f1257888a97e092135610b5f2
 SRCREV_machine_pn-linux-yocto_routerstationpro ?= "219a5f9dc6e5beced36184e141f80b2df61ae32f"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "3f01b98238c2ff7913ce9f68f9db5ae9538717bc"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_meta_pn-linux-yocto ?= "8a49ef6f1a43dabbce34a9ee9a1be08b26fc511c"
+SRCREV_meta_pn-linux-yocto ?= "e8b8c1ae44932835f4f79e77180d3ce5e4b1ec99"
 SRCREV_pn-linux-libc-headers-yocto ??= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
diff --git a/meta/recipes-kernel/linux/linux-yocto.inc b/meta/recipes-kernel/linux/linux-yocto.inc
index dc4ab55..3ad849e 100644
--- a/meta/recipes-kernel/linux/linux-yocto.inc
+++ b/meta/recipes-kernel/linux/linux-yocto.inc
@@ -15,7 +15,6 @@ LINUX_KERNEL_TYPE ?= standard
 do_patch[depends] = "kern-tools-native:do_populate_sysroot"
 
 addtask kernel_configme before do_configure after do_patch
-addtask kernel_configcheck after do_configure before do_compile
 
 # Pick up shared functions
 inherit kernel-yocto
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index 7833f65..b1486bc 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -30,5 +30,6 @@ KERNEL_FEATURES=features/netfilter
 # extra tasks
 addtask kernel_link_vmlinux after do_compile before do_install
 addtask validate_branches before do_patch after do_kernel_checkout
+addtask kernel_configcheck after do_configure before do_compile
 
 require linux-tools.inc
-- 
1.7.3.4


