Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDFC2E0027E
	for <poky@yoctoproject.org>; Wed, 10 Oct 2012 10:17:19 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Oct 2012 10:17:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,565,1344236400"; d="scan'208";a="203972445"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 10 Oct 2012 10:16:53 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 10 Oct 2012 10:16:53 -0700
Message-Id: <1349889413-28629-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH] distro_alias: Update for Internal BOM tracking
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Oct 2012 17:17:20 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 2d750c3..0699c5f 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -140,9 +140,11 @@ DISTRO_PN_ALIAS_pn-gtk-sato-engine = "OpenedHand"
 DISTRO_PN_ALIAS_pn-gtk-theme-torturer = "OSPDT upstream=http://wiki.laptop.org/go/GTK_for_OLPC"
 DISTRO_PN_ALIAS_pn-hello-mod = "OE-Core"
 DISTRO_PN_ALIAS_pn-hostap-conf = "OE-Core"
+DISTRO_PN_ALIAS_pn-hwlatdetect = "OSPDT"
 DISTRO_PN_ALIAS_pn-icecc-create-env = "OE-Core"
 DISTRO_PN_ALIAS_pn-imake = "Mandriva=xutils Ubuntu=xutils"
 DISTRO_PN_ALIAS_pn-initramfs-boot = "OE-Core"
+DISTRO_PN_ALIAS_pn-initramfs-framework = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-live-boot = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-live-install = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-live-install-efi = "OE-Core"
@@ -150,6 +152,7 @@ DISTRO_PN_ALIAS_pn-inputproto = "Meego=xorg-x11-proto-inputproto"
 DISTRO_PN_ALIAS_pn-iproute2 = "OSPDT"
 DISTRO_PN_ALIAS_pn-jpeg="OpenSuSE=libjpeg Ubuntu=libjpeg62"
 DISTRO_PN_ALIAS_pn-kbproto = "Meego=xorg-x11-proto-kbproto Ubuntu=x11proto-kb-dev Debian=x11proto-kb-dev"
+DISTRO_PN_ALIAS_pn-kconfig-frontends = "OSPDT"
 DISTRO_PN_ALIAS_pn-kernelshark = "Mandriva=kernelshark Ubuntu=kernelshark"
 DISTRO_PN_ALIAS_pn-kern-tools-native = "OpenedHand"
 DISTRO_PN_ALIAS_pn-kern-tools-native = "Windriver"
@@ -162,14 +165,19 @@ DISTRO_PN_ALIAS_pn-liba52 = "Mandriva=a52dec Debian=a52dec"
 DISTRO_PN_ALIAS_pn-libacpi="Ubuntu=libacpi Mandriva=libacpi"
 DISTRO_PN_ALIAS_pn-libatomics-ops = "Meego=libatomic-ops Debian=libatomic-ops Ubuntu=libatomic-ops OpenSuSE=libatomic-ops Mandriva=libatomic-ops"
 DISTRO_PN_ALIAS_pn-libcheck = "Ubuntu=check Fedora=check OpenSuSE=check"
+DISTRO_PN_ALIAS_pn-libclass-isa-perl = "OSPDT"
 DISTRO_PN_ALIAS_pn-libdrm-poulsbo = "Debian=libdrm-intel1 Ubuntu=libdrm-intel1"
+DISTRO_PN_ALIAS_pn-libdumpvalue-perl = "OSPDT"
+DISTRO_PN_ALIAS_pn-libenv-perl = "OSPDT"
 DISTRO_PN_ALIAS_pn-libfakekey="Meego1.0=libfakekey Debian=libfakekey"
+DISTRO_PN_ALIAS_pn-libfile-checktree-perl = "OSPDT"
 DISTRO_PN_ALIAS_pn-libfribidi = "OpenSuSE=fribidi Ubuntu=fribidi Mandriva=fribidi Debian=fribidi"
 DISTRO_PN_ALIAS_pn-libgcc = "Debian=libgcc4 Ubuntu=libgcc1 OpenSuSE=libgcc46"
 DISTRO_PN_ALIAS_pn-libgdbus = "Intel"
 DISTRO_PN_ALIAS_pn-libglade = "Meego=libglade2 Fedora=libglade2 OpenSuSE=libglade2 Ubuntu=libglade2 Mandriva=libglade2.0 Debian=libglade2"
 DISTRO_PN_ALIAS_pn-libgsmd = "Fedora=gsm Ubuntu=libgsm Debian=libgsm Opensuse=libgsm"
 DISTRO_PN_ALIAS_pn-libgtkstylus = "Debian=libgtkstylus Ubuntu=libgtkstylus"
+DISTRO_PN_ALIAS_pn-libi18n-collate-perl = "OSPDT"
 DISTRO_PN_ALIAS_pn-libiconv = "Fedora=mingw-libiconv Opensuse=cross-mingw-libiconv"
 DISTRO_PN_ALIAS_pn-libjson = "Ubuntu=libjson0-dev Debian=libjson0-dev"
 DISTRO_PN_ALIAS_pn-libksba = "Fedora=libksba Debian=libksba8"
@@ -182,6 +190,7 @@ DISTRO_PN_ALIAS_pn-libowl-av = "OpenedHand"
 DISTRO_PN_ALIAS_pn-libowl = "Debian=owl OpenedHand"
 DISTRO_PN_ALIAS_pn-libpam = "Meego=pam Fedora=pam OpenSuSE=pam Ubuntu=pam Mandriva=pam Debian=pam"
 DISTRO_PN_ALIAS_pn-libpcre = "Mandriva=libpcre0 Fedora=pcre"
+DISTRO_PN_ALIAS_pn-libpod-plainer-perl = "OSPDT"
 DISTRO_PN_ALIAS_pn-libsamplerate0 = "Meego=libsamplerate Fedora=libsamplerate OpenSuSE=libsamplerate Ubuntu=libsamplerate Mandriva=libsamplerate Debian=libsamplerate"
 DISTRO_PN_ALIAS_pn-libsdl = "Fedora=SDL Opensuse=SDL"
 DISTRO_PN_ALIAS_pn-libsndfile1 = "Meego=libsndfile Fedora=libsndfile OpenSuSE=libsndfile Ubuntu=libsndfile Mandriva=libsndfile Debian=libsndfile"
@@ -255,6 +264,7 @@ DISTRO_PN_ALIAS_pn-msynctool = "OpenSuse=msynctool Mandriva=msynctool"
 DISTRO_PN_ALIAS_pn-n450-audio = "Intel"
 DISTRO_PN_ALIAS_pn-network-suspend-scripts = "OE-Core"
 DISTRO_PN_ALIAS_pn-nfs-export-root = "OpenedHand"
+DISTRO_PN_ALIAS_pn-npth = "OSPDT"
 DISTRO_PN_ALIAS_pn-ocf-linux = "OSPDT"
 DISTRO_PN_ALIAS_pn-ofono = "Debian=ofono Ubuntu=ofono"
 DISTRO_PN_ALIAS_pn-oh-puzzles = "OpenedHand"
@@ -301,6 +311,7 @@ DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-host = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-target = "Intel"
 DISTRO_PN_ALIAS_pn-packagegroup-sdk-host = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-self-hosted = "OE-Core"
+DISTRO_PN_ALIAS_pn-perf = "OSPDT"
 DISTRO_PN_ALIAS_pn-pointercal = "OE-Core"
 DISTRO_PN_ALIAS_pn-poky-feed-config-opkg = "OE-Core"
 DISTRO_PN_ALIAS_pn-pong-clock = "OpenedHand"
@@ -344,6 +355,7 @@ DISTRO_PN_ALIAS_pn-remake = "Mandriva=remake Debian=remake"
 DISTRO_PN_ALIAS_pn-renderproto = "Meego=xorg-x11-proto-renderproto"
 DISTRO_PN_ALIAS_pn-resourceproto = "Meego=xorg-x11-proto-resourceproto"
 DISTRO_PN_ALIAS_pn-rgb = "Fedora=xorg-X11-server-utils Debian=x11-xserver-utils"
+DISTRO_PN_ALIAS_pn-rpmresolve = "OSPDT"
 DISTRO_PN_ALIAS_pn-rt-tests = "Debian=rt-tests Ubuntu=rt-tests"
 DISTRO_PN_ALIAS_pn-run-postinsts = "OE-Core"
 DISTRO_PN_ALIAS_pn-sato-icon-theme = "OpenedHand"
-- 
1.7.7.6


