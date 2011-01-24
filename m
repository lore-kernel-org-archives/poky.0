Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 665AF4C8085F;
	Mon, 24 Jan 2011 15:44:06 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0OLi33t016947;
	Mon, 24 Jan 2011 13:44:05 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 24 Jan 2011 16:46:49 -0500
Message-Id: <141dad4577db6d5942dfc6c9070ee1966023fd68.1295905272.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1295905272.git.bruce.ashfield@windriver.com>
References: <cover.1295905272.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295905272.git.bruce.ashfield@windriver.com>
References: <cover.1295905272.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/2] linux-yocto: allow multiple BSPs per branch
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
X-List-Received-Date: Mon, 24 Jan 2011 21:44:06 -0000

By default the linux-yocto recipes operate on the current branch
and use it as a trigger to locate the description of a board. This
model works well when using the git repo outside of a build system
since the commands can be simply invoked and will do something
useful. However, it does mean that you can't have two BSPs that
differ only by configuration, building out of a single branch
in the repository.

This means that you must have many branches for very similar
BSPs. This model is still preferred, but having the choice of
branching strategies is better.

With this change we can have multiple BSPs using a single branch
with the preferred description being hinted from the build
system by passing the $machine value to updateme/configme.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass                  |    4 ++--
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../kern-tools/kern-tools-native_git.bb            |    2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 32d2e20..8479b39 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -74,7 +74,7 @@ do_patch() {
 	if [ -n "${KERNEL_FEATURES}" ]; then
 	       addon_features="--features ${KERNEL_FEATURES}"
 	fi
-	updateme ${addon_features} ${ARCH} ${WORKDIR}
+	updateme ${addon_features} ${ARCH} ${MACHINE} ${WORKDIR}
 	if [ $? -ne 0 ]; then
 		echo "ERROR. Could not update ${kbranch}"
 		exit 1
@@ -126,7 +126,7 @@ do_kernel_configme() {
 	echo "[INFO] doing kernel configme"
 
 	cd ${S}
-	configme --reconfig --output ${B}
+	configme --reconfig --output ${B} ${KBRANCH} ${MACHINE}
 	if [ $? -ne 0 ]; then
 		echo "ERROR. Could not configure ${KMACHINE}-${LINUX_KERNEL_TYPE}"
 		exit 1
diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index e73c971..b9602ea 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -57,7 +57,7 @@ SRCREV_pn-gypsy ??= "147"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "f553af044615ba75c2b4b7ef1f382e6f75087213"
+SRCREV_pn-kern-tools-native ??= "8832b75dc2e494ae96ca3e1dee7bfde2f3096904"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "2031"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
diff --git a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
index 7350746..58e6470 100644
--- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
+++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://git/tools/kgit;beginline=5;endline=9;md5=e2bf4415f3d8
 
 DEPENDS = "git-native guilt-native"
 
-PR = r8
+PR = r9
 PV = "0.1+git${SRCPV}"
 
 inherit native
-- 
1.7.0.4


