Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0FA0E01602
	for <poky@yoctoproject.org>; Tue,  1 Oct 2013 12:31:04 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id hz1so7917634pad.16
	for <poky@yoctoproject.org>; Tue, 01 Oct 2013 12:31:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OGD8SN9qLvjWyMWC0DE/pKSruCpYHnJw4NUQPyxhs0I=;
	b=X8Ihuc7Mw6Nod2KpEMeCsSvjLM/ePPWPKMBAeCIf/rKuhIFbS2ePLisBXCM5dznV+J
	MOQmt6piyyG1GOfg80p7hDRZ8OQP2Wo9LpJcnnz2b9Qezo9BJsVyHS1h6L0LdGf1eibD
	jClL4eYcRIitqGaQT3KU7tBVMSg697zdLrFa+eEhFkhjKBUjahzaMJVaKQSCCYQUOprR
	Cp3qgE75zM5/Wc6851mrHLmtUEAGLFLWbFWhP4NKWuwcLaDig4y2G4fyZLnm7qRedBui
	eHsZ4FxIZ0tkuO0Rru92Lqjfw67j2aEFBI3AJHAjCW7NJ4fOaSRPJlyGCpDic8PHPrq6
	AOTw==
X-Gm-Message-State: ALoCoQlPGk50gTmOmDm1u0o0TokwUrjHAKj/ACbx9pttasXnGOrKti7r+7lE7CrI2lSgz75KAN4P
X-Received: by 10.66.154.197 with SMTP id vq5mr10622117pab.155.1380655863428; 
	Tue, 01 Oct 2013 12:31:03 -0700 (PDT)
Received: from avartita.hsd1.or.comcast.net.
	(c-24-21-207-18.hsd1.or.comcast.net. [24.21.207.18])
	by mx.google.com with ESMTPSA id dk3sm8409089pbc.32.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Oct 2013 12:31:02 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: poky@yoctoproject.org
Date: Tue,  1 Oct 2013 12:30:38 -0700
Message-Id: <6ec510fbc3fd23ab9f117a2e44d112f130eb7dfc.1380655684.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1380655684.git.elizabeth.flanagan@intel.com>
References: <cover.1380655684.git.elizabeth.flanagan@intel.com>
Subject: [PATCH 1/2] distro_alias.inc: Sort entries
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
X-List-Received-Date: Tue, 01 Oct 2013 19:31:04 -0000

Entry order is inconsistent. sort -d on entries.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |   28 +++++++++++------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index bd3362a..fd1e47d 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -23,8 +23,8 @@ DISTRO_PN_ALIAS_pn-bluez4= "Fedora=bluez Ubuntu=bluez Debian=bluez-utils Opensus
 DISTRO_PN_ALIAS_pn-bluez4="Meego=bluz Fedora=bluz Ubuntu=bluz OpenSuSE=bluz Mandriva=bluz"
 DISTRO_PN_ALIAS_pn-bluez-dtl1-workaround = "OE-Core"
 DISTRO_PN_ALIAS_pn-btrfs-tools = "Debian=btrfs-tools Fedora=btrfs-progs"
-DISTRO_PN_ALIAS_pn-builder = "OE-Core"
 DISTRO_PN_ALIAS_pn-build-appliance-image = "OSPDT"
+DISTRO_PN_ALIAS_pn-builder = "OE-Core"
 DISTRO_PN_ALIAS_pn-calibrateproto = "OSPDT upstream=http://cgit.freedesktop.org/xorg/lib/libXCalibrate/"
 DISTRO_PN_ALIAS_pn-calibrateproto = "OSPDT upstream=http://cgit.freedesktop.org/xorg/proto/calibrateproto"
 DISTRO_PN_ALIAS_pn-cdrtools = "OpenSUSE=cdrtools OSPDT"
@@ -34,8 +34,8 @@ DISTRO_PN_ALIAS_pn-claws-plugin-maildir = "Fedora=claws-mail-plugins OpenSuSE=cl
 DISTRO_PN_ALIAS_pn-claws-plugin-mailmbox = "Fedora=claws-mail-plugins OpenSuSE=claws-mail-extra-plugins Debian=claws-mail-extra-plugins"
 DISTRO_PN_ALIAS_pn-claws-plugin-rssyl = "Fedora=claws-mail-plugins OpenSuSE=claws-mail-extra-plugins Debian=claws-mail-extra-plugins"
 DISTRO_PN_ALIAS_pn-clipboard-manager = "OpenedHand"
-DISTRO_PN_ALIAS_pn-clutter = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
 DISTRO_PN_ALIAS_pn-clutter-1.8 = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
+DISTRO_PN_ALIAS_pn-clutter = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
 DISTRO_PN_ALIAS_pn-clutter-gst-1.8 = "Fedora=clutter-gst Debian=libclutter-gst"
 DISTRO_PN_ALIAS_pn-clutter-gtk-1.8 = "Fedora=clutter-gtk OpenSuSE=clutter-gtk Ubuntu=clutter-gtk-0.10 Mandriva=clutter-gtk Debian=clutter-gtk"
 DISTRO_PN_ALIAS_pn-cogl = "Fedora=cogl OpenSuse=cogl Ubuntu=cogl Mandriva=cogl Debian=cogl"
@@ -75,8 +75,8 @@ DISTRO_PN_ALIAS_pn-damageproto = "Meego=xorg-x11-proto-damageproto"
 DISTRO_PN_ALIAS_pn-db = "Debian=db5.1 Ubuntu=db5.1"
 DISTRO_PN_ALIAS_pn-dbus-wait = "OpenedHand"
 DISTRO_PN_ALIAS_pn-directfb-examples = "Debian=directfb Fedora=directfb"
-DISTRO_PN_ALIAS_pn-distcc = "Debian=distcc Fedora=distcc"
 DISTRO_PN_ALIAS_pn-distcc-config = "OpenedHand"
+DISTRO_PN_ALIAS_pn-distcc = "Debian=distcc Fedora=distcc"
 DISTRO_PN_ALIAS_pn-dmxproto = "Meego=xorg-x11-proto-dmxproto Ubuntu=x11proto-dmx Debian=x11proto-dmx"
 DISTRO_PN_ALIAS_pn-docbook-dsssl-stylesheets = "Fedora=docbook-style-dsssl Ubuntu=docbook-dsssl"
 DISTRO_PN_ALIAS_pn-docbook-sgml-dtd-3.1 = "Fedora=docbook-dtds Mandriva=docbook-dtd31-sgml"
@@ -88,9 +88,9 @@ DISTRO_PN_ALIAS_pn-dtc = "Fedora=dtc Ubuntu=dtc"
 DISTRO_PN_ALIAS_pn-dtc-native = "Fedora=dtc Ubuntu=dtc"
 DISTRO_PN_ALIAS_pn-eds-tools = "OpenedHand"
 DISTRO_PN_ALIAS_pn-eee-acpi-scripts = "Debian=eeepc-acpi-scripts Ubuntu=eeepc-acpi-scripts"
-DISTRO_PN_ALIAS_pn-eglibc = "OE-Core"
 DISTRO_PN_ALIAS_pn-eglibc-initial = "OE-Core"
 DISTRO_PN_ALIAS_pn-eglibc-locale = "OE-Core"
+DISTRO_PN_ALIAS_pn-eglibc = "OE-Core"
 DISTRO_PN_ALIAS_pn-emgd-driver-bin = "Intel"
 DISTRO_PN_ALIAS_pn-encodings = "Ubuntu=xfonts-encodings Mandriva=x11-font-encodings Debian=xfonts-encodings"
 DISTRO_PN_ALIAS_pn-evieext = "Meego=xorg-x11-proto-evieext Debian=x11proto-evie"
@@ -144,8 +144,8 @@ DISTRO_PN_ALIAS_pn-imake = "Mandriva=xutils Ubuntu=xutils"
 DISTRO_PN_ALIAS_pn-initramfs-boot = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-framework = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-live-boot = "OE-Core"
-DISTRO_PN_ALIAS_pn-initramfs-live-install = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-live-install-efi = "OE-Core"
+DISTRO_PN_ALIAS_pn-initramfs-live-install = "OE-Core"
 DISTRO_PN_ALIAS_pn-inputproto = "Meego=xorg-x11-proto-inputproto"
 DISTRO_PN_ALIAS_pn-iproute2 = "OSPDT"
 DISTRO_PN_ALIAS_pn-jpeg="OpenSuSE=libjpeg Ubuntu=libjpeg62"
@@ -173,9 +173,9 @@ DISTRO_PN_ALIAS_pn-libfribidi = "OpenSuSE=fribidi Ubuntu=fribidi Mandriva=fribid
 DISTRO_PN_ALIAS_pn-libgcc = "Debian=libgcc4 Ubuntu=libgcc1 OpenSuSE=libgcc46"
 DISTRO_PN_ALIAS_pn-libgdbus = "Intel"
 DISTRO_PN_ALIAS_pn-libglade = "Meego=libglade2 Fedora=libglade2 OpenSuSE=libglade2 Ubuntu=libglade2 Mandriva=libglade2.0 Debian=libglade2"
-DISTRO_PN_ALIAS_pn-libgu = "OpenSuSE=glu OSPDT"
 DISTRO_PN_ALIAS_pn-libgsmd = "Fedora=gsm Ubuntu=libgsm Debian=libgsm Opensuse=libgsm"
 DISTRO_PN_ALIAS_pn-libgtkstylus = "Debian=libgtkstylus Ubuntu=libgtkstylus"
+DISTRO_PN_ALIAS_pn-libgu = "OpenSuSE=glu OSPDT"
 DISTRO_PN_ALIAS_pn-libi18n-collate-perl = "OSPDT"
 DISTRO_PN_ALIAS_pn-libiconv = "Fedora=mingw-libiconv Opensuse=cross-mingw-libiconv"
 DISTRO_PN_ALIAS_pn-libjson = "Ubuntu=libjson0-dev Debian=libjson0-dev"
@@ -246,9 +246,9 @@ DISTRO_PN_ALIAS_pn-meta-ide-support = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-gmae = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-qte = "OE-Core"
-DISTRO_PN_ALIAS_pn-mkfontdir = "Mandriva=mkfontdir Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
 DISTRO_PN_ALIAS_pn-meta-toolchain-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-mini-x-session = "OSPDT"
+DISTRO_PN_ALIAS_pn-mkfontdir = "Mandriva=mkfontdir Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
 DISTRO_PN_ALIAS_pn-mkfontscale = "Mandriva=mkfontscale Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
 DISTRO_PN_ALIAS_pn-mktemp = "Mandriva=mktemp Fedora=mktemp"
 DISTRO_PN_ALIAS_pn-moblin-proto = "OE-Core"
@@ -259,8 +259,8 @@ DISTRO_PN_ALIAS_pn-n450-audio = "Intel"
 DISTRO_PN_ALIAS_pn-neard = "Intel"
 DISTRO_PN_ALIAS_pn-network-suspend-scripts = "OE-Core"
 DISTRO_PN_ALIAS_pn-nfs-export-root = "OpenedHand"
-DISTRO_PN_ALIAS_pn-nss-myhostname = "Meego=nss-mdns OpenSuSE=nss-mdns Ubuntu=nss-mdns Mandriva=nss_mdns Debian=nss-mdns"
 DISTRO_PN_ALIAS_pn-npth = "OSPDT"
+DISTRO_PN_ALIAS_pn-nss-myhostname = "Meego=nss-mdns OpenSuSE=nss-mdns Ubuntu=nss-mdns Mandriva=nss_mdns Debian=nss-mdns"
 DISTRO_PN_ALIAS_pn-ocf-linux = "OSPDT"
 DISTRO_PN_ALIAS_pn-ofono = "Debian=ofono Ubuntu=ofono"
 DISTRO_PN_ALIAS_pn-oh-puzzles = "OpenedHand"
@@ -272,7 +272,6 @@ DISTRO_PN_ALIAS_pn-opkg-utils = "OSPDT upstream=http://svn.openmoko.org/trunk/sr
 DISTRO_PN_ALIAS_pn-oprofileui = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
 DISTRO_PN_ALIAS_pn-oprofileui-server = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
 DISTRO_PN_ALIAS_pn-owl-video = "OpenedHand"
-DISTRO_PN_ALIAS_pn-package-index = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-base = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-basic = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-boot = "OE-Core"
@@ -283,8 +282,8 @@ DISTRO_PN_ALIAS_pn-packagegroup-core-directfb = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-lsb = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-nfs = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-qt = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-qt4e = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-qt = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-sdk-gmae = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-ssh-dropbear = "OE-Core"
@@ -295,9 +294,9 @@ DISTRO_PN_ALIAS_pn-packagegroup-core-tools-debug = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-tools = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-tools-profile = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-tools-testapps = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-x11-base = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-x11-mini = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-x11 = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-x11-base = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-x11-sato = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-x11-xserver = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-cross-canadian-i586 = "OE-Core"
@@ -306,6 +305,7 @@ DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-host = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-target = "Intel"
 DISTRO_PN_ALIAS_pn-packagegroup-sdk-host = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-self-hosted = "OE-Core"
+DISTRO_PN_ALIAS_pn-package-index = "OE-Core"
 DISTRO_PN_ALIAS_pn-perf = "OSPDT"
 DISTRO_PN_ALIAS_pn-pointercal = "OE-Core"
 DISTRO_PN_ALIAS_pn-poky-feed-config-opkg = "OE-Core"
@@ -330,11 +330,11 @@ DISTRO_PN_ALIAS_pn-python-scons = "Fedora=scons OpenSuSE=scons Ubuntu=scons Mand
 DISTRO_PN_ALIAS_pn-python-setuptools = "Mandriva=python-setup OpenSuSE=python-setup-git"
 DISTRO_PN_ALIAS_pn-python-smartpm = "Debian=smart OSPDT"
 DISTRO_PN_ALIAS_pn-python-ZSI = "OE-Core"
-DISTRO_PN_ALIAS_pn-qemu-helper = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemu-config = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemugl = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemu-helper-native = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemu-helper-nativesdk = "OpenedHand"
+DISTRO_PN_ALIAS_pn-qemu-helper = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qmmp = "Fedora=qmmp"
 DISTRO_PN_ALIAS_pn-qt4e-demo-image = "OE-Core"
 DISTRO_PN_ALIAS_pn-qt4-embedded = "OSPDT"
@@ -369,9 +369,9 @@ DISTRO_PN_ALIAS_pn-shutdown-desktop = "OpenedHand"
 DISTRO_PN_ALIAS_pn-signgp-native = "OE-Core"
 DISTRO_PN_ALIAS_pn-stat = "Debian=coreutils Fedora=coreutils"
 DISTRO_PN_ALIAS_pn-swabber-native = "OE-Core"
-DISTRO_PN_ALIAS_pn-systemtap-uprobes = "Ubuntu=systemtap Debian=systemtap"
 DISTRO_PN_ALIAS_pn-systemd-compat-units = "Fedora=systemd Ubuntu=systemd"
 DISTRO_PN_ALIAS_pn-systemd-systemdctl-native = "Fedora=systemd Ubuntu=systemd"
+DISTRO_PN_ALIAS_pn-systemtap-uprobes = "Ubuntu=systemtap Debian=systemtap"
 DISTRO_PN_ALIAS_pn-sysvinit-inittab = "OE-Core"
 DISTRO_PN_ALIAS_pn-table = "Intel"
 DISTRO_PN_ALIAS_pn-tar-replacement-native = "OE-Core"
@@ -404,9 +404,9 @@ DISTRO_PN_ALIAS_pn-wpa-supplicant = "Meego=wpa_supplicant Fedora=wpa_supplicant
 DISTRO_PN_ALIAS_pn-x11-common = "OE-Core"
 DISTRO_PN_ALIAS_pn-x11perf = "Fedora=xorg-x11-apps Ubuntu=x11-apps"
 DISTRO_PN_ALIAS_pn-x11vnc = "Fedora=x11vnc Ubuntu=x11vnc"
-DISTRO_PN_ALIAS_pn-xcb-util-wm = "Debian=xcb-util Fedora=xcb-util"
 DISTRO_PN_ALIAS_pn-xcb-util-image = "Debian=xcb-util Fedora=xcb-util"
 DISTRO_PN_ALIAS_pn-xcb-util-keysyms = "Debian=xcb-util Fedora=xcb-util"
+DISTRO_PN_ALIAS_pn-xcb-util-wm = "Debian=xcb-util Fedora=xcb-util"
 DISTRO_PN_ALIAS_pn-xcmiscproto = "Meego=xorg-x11-proto-xcmiscproto"
 DISTRO_PN_ALIAS_pn-xcursor-transparent-theme = "OpenedHand"
 DISTRO_PN_ALIAS_pn-xdpyinfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
-- 
1.7.9.5


