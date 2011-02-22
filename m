Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B8C444C80A82
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 20:08:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Feb 2011 18:08:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,204,1297065600"; d="scan'208";a="392042955"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by azsmga001.ch.intel.com with ESMTP; 21 Feb 2011 18:08:06 -0800
Message-Id: <31a41b85a0a81f7a6318aaaee1f19333e6497c9a.1298340269.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1298340269.git.edwin.zhai@intel.com>
References: <cover.1298340269.git.edwin.zhai@intel.com>
Old-Date: Tue, 22 Feb 2011 09:58:11 +0800
Date: Tue, 22 Feb 2011 10:06:58 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/1] qemu: enable audio support
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
X-List-Received-Date: Tue, 22 Feb 2011 02:08:07 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

On qemux86, export ac97 & es1370 emulated device to guest, and enable host oss&alsa
driver. So end user can get sound from qemux86 guest if the sound card
driver installed.

[BUGID #488] got fixed.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-devtools/qemu/qemu.inc |    2 +-
 scripts/poky-qemu                   |    7 +++++++
 2 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/qemu/qemu.inc b/meta/recipes-devtools/qemu/qemu.inc
index 33c2c71..2c6b114 100644
--- a/meta/recipes-devtools/qemu/qemu.inc
+++ b/meta/recipes-devtools/qemu/qemu.inc
@@ -3,7 +3,7 @@ HOMEPAGE = "http://qemu.org"
 LICENSE = "GPLv2 & LGPLv2.1"
 DEPENDS = "zlib"
 
-EXTRA_OECONF = "--target-list=arm-linux-user,arm-softmmu,i386-linux-user,i386-softmmu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-user,ppc-softmmu,mipsel-linux-user --disable-werror --disable-vnc-tls --enable-kvm"
+EXTRA_OECONF = "--target-list=arm-linux-user,arm-softmmu,i386-linux-user,i386-softmmu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-user,ppc-softmmu,mipsel-linux-user --disable-werror --disable-vnc-tls --enable-kvm --audio-drv-list=oss,alsa --audio-card-list=ac97,es1370"
 #EXTRA_OECONF += "--disable-sdl"
 
 inherit autotools
diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index b19a89d..cb08f27 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -129,6 +129,13 @@ while [ $i -le $# ]; do
             SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -serial stdio"
             SCRIPT_KERNEL_OPT="$SCRIPT_KERNEL_OPT console=ttyS0"
             ;;
+        "audio")
+            if [[ "x$MACHINE" == "xqemux86" || "x$MACHINE" == "xqemux86-64" ]]; then
+                echo "Enable audio on qemu. Pls. install snd_intel8x0 or snd_ens1370 driver in linux guest.";
+                QEMU_AUDIO_DRV="alsa"
+                SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -soundhw ac97,es1370"
+            fi
+            ;;
         "kvm")
             KVM_ENABLED="yes"
             KVM_CAPABLE=`grep 'vmx\|smx' /proc/cpuinfo`
-- 
1.6.3.3


