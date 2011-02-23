Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B4E74C80049;
	Tue, 22 Feb 2011 20:48:32 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1N2mSHr010742;
	Tue, 22 Feb 2011 18:48:30 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 22 Feb 2011 21:49:28 -0500
Message-Id: <f2ce752b4053f9b7d0327d2316432906f459f92f.1298429140.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1298429140.git.bruce.ashfield@windriver.com>
References: <cover.1298429140.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1298429140.git.bruce.ashfield@windriver.com>
References: <cover.1298429140.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: enable audio for selected qemu targets
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
X-List-Received-Date: Wed, 23 Feb 2011 02:48:32 -0000

Fixes [BUGID #488 #734]

Enable audio for qemux86/qemux86-64 via the following kernel
configuration options.

  CONFIG_SOUND_OSS_CORE=y
  CONFIG_SOUND_OSS_CORE_PRECLAIM=y
  CONFIG_SND_RAWMIDI=m
  CONFIG_SND_SEQUENCER=y
  CONFIG_SND_OSSEMUL=y
  CONFIG_SND_MIXER_OSS=y
  CONFIG_SND_PCM_OSS=y
  CONFIG_SND_PCM_OSS_PLUGINS=y
  CONFIG_SND_SEQUENCER_OSS=y
  CONFIG_SND_RAWMIDI_SEQ=m
  CONFIG_SND_AC97_CODEC=m
  CONFIG_SND_ENS1370=m
  CONFIG_SND_INTEL8X0=m
  CONFIG_AC97_BUS=m

The mechanism to trigger these options is in the form of an
optional kernel feature that is only appended for qemux86
and qemux86-64, but is contained within the kernel tree.

This allows several things:

  - the options to be available/shared for all boards
  - the options to be in tree
  - to not add the options to every board, which unecessarily
    bloats the default configuration.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass                  |    4 +++-
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    6 ++++--
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 15802fa..fc9f3a7 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -21,7 +21,9 @@ do_patch() {
 
 	# updates or generates the target description
 	if [ -n "${KERNEL_FEATURES}" ]; then
-	       addon_features="--features ${KERNEL_FEATURES}"
+		for feat in ${KERNEL_FEATURES}; do
+			addon_features="$addon_features --feature $feat"
+		done
 	fi
 	updateme ${addon_features} ${ARCH} ${MACHINE} ${WORKDIR}
 	if [ $? -ne 0 ]; then
diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 32f105a..5321c5a 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -59,7 +59,7 @@ SRCREV_pn-gypsy ??= "3652e1f37e82b8e63983e30fda3482cd099a8cf5"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "4f13a46499261ea181fdc13db5459067df08aca7"
+SRCREV_pn-kern-tools-native ??= "8f61abb6344e78677450994e8930cabc86102d78"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "e8c2e412ea4a417afc1f30e32cb7bdc508b1dccc"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
@@ -109,7 +109,7 @@ SRCREV_machine_pn-linux-yocto_routerstationpro ?= "b557fff9c7f864ea2a9c81ac80ec1
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "8f0124a21f5563b0c51c8426f4430ac222bd463d"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "929567ec621cf99e0932d8ede34f756e25d4c751"
 SRCREV_machine_pn-linux-yocto ?= "929567ec621cf99e0932d8ede34f756e25d4c751"
-SRCREV_meta_pn-linux-yocto ?= "29047c254624e0bd8a0ac6da92862f7c6357cb0b"
+SRCREV_meta_pn-linux-yocto ?= "94772ea4f51267a6a9aaffd106035d47dfef1354"
 SRCREV_pn-linux-libc-headers-yocto ??= "929567ec621cf99e0932d8ede34f756e25d4c751"
 SRCREV_pn-matchbox-config-gtk ??= "3ed74dfb7c57be088a5ab36e446c0ccde9fa1028"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index 75c6fb1..9a3c666 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -17,7 +17,7 @@ KMETA = meta
 
 LINUX_VERSION ?= "2.6.37"
 LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
-PR = "r15"
+PR = "r16"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 SRCREV_FORMAT = "meta_machine"
 
@@ -28,7 +28,9 @@ COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|
 
 # Functionality flags
 KERNEL_REVISION_CHECKING ?= "t"
-KERNEL_FEATURES=features/netfilter
+KERNEL_FEATURES="features/netfilter"
+KERNEL_FEATURES_append_qemux86=" cfg/sound"
+KERNEL_FEATURES_append_qemux86-64=" cfg/sound"
 
 # extra tasks
 addtask kernel_link_vmlinux after do_compile before do_install
-- 
1.7.0.4


