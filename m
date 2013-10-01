Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A928CE01602
	for <poky@yoctoproject.org>; Tue,  1 Oct 2013 12:31:05 -0700 (PDT)
Received: by mail-pb0-f51.google.com with SMTP id jt11so7538386pbb.24
	for <poky@yoctoproject.org>; Tue, 01 Oct 2013 12:31:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=UGCjwFtui1kWkXjN9Vd4JBTKFsgmfdZBZue1O0TJFOI=;
	b=T9X0Ea2fyoHUL4qBF4ed7HHHfn4cCCbpJV8vRbanet4BtMLACJsMWEwFz6K3ogB4XD
	H6VRpTMhYBzcSAtKD0VZ/tEOqZdJAd31DT8HYAaWifucNzo62gfcDOhv+MdUkDfhA3Nb
	BTSVSyRWAPq+DC/b/JrOfDT2KTKrP677YbFMQk4Ve26L+bi81crxMiSTVUOaUC72TcEx
	FaqcUzXE0WEnHJeXaNVWqEAOuDfz6pJguxGei+Vy9Ldv+97+qP3hHY+IH+4WG9mp7cmN
	MzbYD7mopk+RFmdWBHptFWoEr34wkuQN6KEYTSU+pew31M7snz1bqc/Ss0n2jm/cFMIU
	L9tQ==
X-Gm-Message-State: ALoCoQlzLXgGjzg5IeLMlzlrql/3MPgmO1uXsvASi6RSgZ2fRMT34fIQlf0AhBaHkRRsb+xLJ/vs
X-Received: by 10.68.132.33 with SMTP id or1mr10608707pbb.143.1380655864774;
	Tue, 01 Oct 2013 12:31:04 -0700 (PDT)
Received: from avartita.hsd1.or.comcast.net.
	(c-24-21-207-18.hsd1.or.comcast.net. [24.21.207.18])
	by mx.google.com with ESMTPSA id dk3sm8409089pbc.32.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Oct 2013 12:31:03 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: poky@yoctoproject.org
Date: Tue,  1 Oct 2013 12:30:39 -0700
Message-Id: <40c9a0ffb3c14ab9c73edb00fe78f17ed3999b90.1380655684.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <6ec510fbc3fd23ab9f117a2e44d112f130eb7dfc.1380655684.git.elizabeth.flanagan@intel.com>
References: <6ec510fbc3fd23ab9f117a2e44d112f130eb7dfc.1380655684.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1380655684.git.elizabeth.flanagan@intel.com>
References: <cover.1380655684.git.elizabeth.flanagan@intel.com>
Subject: [PATCH 2/2] distro_alias.inc: update distro_alias
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
X-List-Received-Date: Tue, 01 Oct 2013 19:31:05 -0000

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |   44 ++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index fd1e47d..99fa48c 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -13,18 +13,21 @@ DISTRO_PN_ALIAS_pn-aaina = "Intel"
 DISTRO_PN_ALIAS_pn-abiword-embedded = "Fedora=abiword Ubuntu=abiword"
 DISTRO_PN_ALIAS_pn-adt-installer = "Intel"
 DISTRO_PN_ALIAS_pn-alsa-state = "OE-Core"
+DISTRO_PN_ALIAS_pn-alsa-utils-alsaconf = "OE-Core"
 DISTRO_PN_ALIAS_pn-augeas = "Ubuntu=libaugeas0 Debian=libaugeas0"
 DISTRO_PN_ALIAS_pn-avahi-ui = "Ubuntu=avahi-discover Debian=avahi-discover"
 DISTRO_PN_ALIAS_pn-babeltrace = "OSPDT"
 DISTRO_PN_ALIAS_pn-bdwgc = "OSPDT"
 DISTRO_PN_ALIAS_pn-bigreqsproto = "Meego=xorg-x11-proto-bigreqsproto"
 DISTRO_PN_ALIAS_pn-blktool = "Debian=blktool Mandriva=blktool"
-DISTRO_PN_ALIAS_pn-bluez4= "Fedora=bluez Ubuntu=bluez Debian=bluez-utils Opensuse=bluez"
 DISTRO_PN_ALIAS_pn-bluez4="Meego=bluz Fedora=bluz Ubuntu=bluz OpenSuSE=bluz Mandriva=bluz"
+DISTRO_PN_ALIAS_pn-bluez4= "Ubuntu=bluez Debian=bluez-utils"
+DISTRO_PN_ALIAS_pn-bluez5="Fedora=bluez  Opensuse=bluez"
 DISTRO_PN_ALIAS_pn-bluez-dtl1-workaround = "OE-Core"
 DISTRO_PN_ALIAS_pn-btrfs-tools = "Debian=btrfs-tools Fedora=btrfs-progs"
 DISTRO_PN_ALIAS_pn-build-appliance-image = "OSPDT"
 DISTRO_PN_ALIAS_pn-builder = "OE-Core"
+DISTRO_PN_ALIAS_pn-buildtools-tarball = "OE-Core"
 DISTRO_PN_ALIAS_pn-calibrateproto = "OSPDT upstream=http://cgit.freedesktop.org/xorg/lib/libXCalibrate/"
 DISTRO_PN_ALIAS_pn-calibrateproto = "OSPDT upstream=http://cgit.freedesktop.org/xorg/proto/calibrateproto"
 DISTRO_PN_ALIAS_pn-cdrtools = "OpenSUSE=cdrtools OSPDT"
@@ -36,10 +39,14 @@ DISTRO_PN_ALIAS_pn-claws-plugin-rssyl = "Fedora=claws-mail-plugins OpenSuSE=claw
 DISTRO_PN_ALIAS_pn-clipboard-manager = "OpenedHand"
 DISTRO_PN_ALIAS_pn-clutter-1.8 = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
 DISTRO_PN_ALIAS_pn-clutter = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
+DISTRO_PN_ALIAS_pn-clutter-gst-1.0 = "Debian=clutter-gst Ubuntu=clutter-gst Fedora=clutter-gst"
 DISTRO_PN_ALIAS_pn-clutter-gst-1.8 = "Fedora=clutter-gst Debian=libclutter-gst"
+DISTRO_PN_ALIAS_pn-clutter-gtk-1.0 = "Debian=clutter-gtk Ubuntu=clutter-gtk Fedora=clutter-gtk"
 DISTRO_PN_ALIAS_pn-clutter-gtk-1.8 = "Fedora=clutter-gtk OpenSuSE=clutter-gtk Ubuntu=clutter-gtk-0.10 Mandriva=clutter-gtk Debian=clutter-gtk"
+DISTRO_PN_ALIAS_pn-cogl-1.0 = "Debian=cogl Ubuntu=cogl Fedora=cogl"
 DISTRO_PN_ALIAS_pn-cogl = "Fedora=cogl OpenSuse=cogl Ubuntu=cogl Mandriva=cogl Debian=cogl"
 DISTRO_PN_ALIAS_pn-compositeproto = "Meego=xorg-x11-proto-compositeproto"
+DISTRO_PN_ALIAS_pn-connman-conf = "OE-Core"
 DISTRO_PN_ALIAS_pn-connman-gnome = "Intel"
 DISTRO_PN_ALIAS_pn-connman = "Meego=connman"
 DISTRO_PN_ALIAS_pn-console-tools = "Debian=console-tools Ubuntu=console-tools"
@@ -68,12 +75,15 @@ DISTRO_PN_ALIAS_pn-core-image-sato-sdk-directdisk = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato-sdk-live = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sdk = "OE-Core"
+DISTRO_PN_ALIAS_pn-core-image-weston="OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-x11 = "OE-Core"
 DISTRO_PN_ALIAS_pn-cross-localedef = "OSPDT"
 DISTRO_PN_ALIAS_pn-cwautomacros= "OSPDT upstream=http://cwautomacros.berlios.de/"
 DISTRO_PN_ALIAS_pn-damageproto = "Meego=xorg-x11-proto-damageproto"
 DISTRO_PN_ALIAS_pn-db = "Debian=db5.1 Ubuntu=db5.1"
+DISTRO_PN_ALIAS_pn-dbus-ptest = "Fedora=dbus Ubuntu=dbus"
 DISTRO_PN_ALIAS_pn-dbus-wait = "OpenedHand"
+DISTRO_PN_ALIAS_pn-depmodwrapper-cross = "OE-Core"
 DISTRO_PN_ALIAS_pn-directfb-examples = "Debian=directfb Fedora=directfb"
 DISTRO_PN_ALIAS_pn-distcc-config = "OpenedHand"
 DISTRO_PN_ALIAS_pn-distcc = "Debian=distcc Fedora=distcc"
@@ -90,7 +100,11 @@ DISTRO_PN_ALIAS_pn-eds-tools = "OpenedHand"
 DISTRO_PN_ALIAS_pn-eee-acpi-scripts = "Debian=eeepc-acpi-scripts Ubuntu=eeepc-acpi-scripts"
 DISTRO_PN_ALIAS_pn-eglibc-initial = "OE-Core"
 DISTRO_PN_ALIAS_pn-eglibc-locale = "OE-Core"
+DISTRO_PN_ALIAS_pn-eglibc-mtrace = "OE-Core"
+DISTRO_PN_ALIAS_pn-eglibc-scripts = "OE-Core"
 DISTRO_PN_ALIAS_pn-eglibc = "OE-Core"
+DISTRO_PN_ALIAS_pn-eglinfo-fb = "OE-Core"
+DISTRO_PN_ALIAS_pn-eglinfo-x11 = "OE-Core"
 DISTRO_PN_ALIAS_pn-emgd-driver-bin = "Intel"
 DISTRO_PN_ALIAS_pn-encodings = "Ubuntu=xfonts-encodings Mandriva=x11-font-encodings Debian=xfonts-encodings"
 DISTRO_PN_ALIAS_pn-evieext = "Meego=xorg-x11-proto-evieext Debian=x11proto-evie"
@@ -128,8 +142,14 @@ DISTRO_PN_ALIAS_pn-gst-openmax="OSPDT upstream=http://cgit.freedesktop.org/gstre
 DISTRO_PN_ALIAS_pn-gst-plugin-bluetooth = "Ubuntu=libgstreamer-plugins-base Fedora=gstreamer-plugins-base"
 DISTRO_PN_ALIAS_pn-gst-plugins-bad = "Fedora=gstreamer-plugins-bad-free OpenSuSE=gstreamer-plugins-bad Debian=gst-plugins-bad0.10"
 DISTRO_PN_ALIAS_pn-gst-plugins-base = "Meego=gst-plugins-base Fedora=gstreamer-plugins-base OpenSuSE=gstreamer-plugins-base Ubuntu=gst-plugins-base0.10 Mandriva=gstreamer0.10-plugins-base Debian=gst-plugins-base0.10"
+DISTRO_PN_ALIAS_pn-gst-plugins-gl = "Debian=gstreamer0.10-plugins-gl" 
 DISTRO_PN_ALIAS_pn-gst-plugins-good = "Meego=gst-plugins-good Fedora=gstreamer-plugins-good OpenSuSE=gstreamer-plugins-good Ubuntu=gst-plugins-good0.10 Mandriva=gstreamer0.10-plugins-good Debian=gst-plugins-good0.10"
 DISTRO_PN_ALIAS_pn-gst-plugins-ugly = "OpenSuSE=gstreamer-plugins-ugly Mandriva=gstreamer0.10-plugins-ugly Debian=gst-plugins-ugly0.10"
+DISTRO_PN_ALIAS_pn-gstreamer1.0 = "Debian=gstreamer1.0 Ubuntu=gstreamer1.0"
+DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-bad = "Debian=gstreamer1.0-plugins-bad Ubuntu=gstreamer1.0-plugins-bad"
+DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-base "Debian=gstreamer1.0-plugins-base Ubuntu=gstreamer1.0-plugins-base"
+DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-good = "Debian=gstreamer1.0-plugins-good Ubuntu=gstreamer1.0-plugins-bad"
+DISTRO_PN_ALIAS_pn-gtk+3 = "Ubuntu=gtk+3.0 Debian=gtk+3.0 Fedora=gtk3"
 DISTRO_PN_ALIAS_pn-gtk-doc-stub = "Fedora=gtk-doc Ubuntu=gtk-doc"
 DISTRO_PN_ALIAS_pn-gtk-engines = "Fedora=gtk2-engines OpenSuSE=gtk2-engines Ubuntu=gtk2-engines Mandriva=gtk-engines2 Debian=gtk2-engines"
 DISTRO_PN_ALIAS_pn-gtk+ = "Meego=gtk2 Fedora=gtk2 OpenSuSE=gtk2 Ubuntu=gtk+2.0 Mandriva=gtk+2.0 Debian=gtk+2.0"
@@ -141,6 +161,7 @@ DISTRO_PN_ALIAS_pn-hostap-conf = "OE-Core"
 DISTRO_PN_ALIAS_pn-hwlatdetect = "OSPDT"
 DISTRO_PN_ALIAS_pn-icecc-create-env = "OE-Core"
 DISTRO_PN_ALIAS_pn-imake = "Mandriva=xutils Ubuntu=xutils"
+DISTRO_PN_ALIAS_pn-init-ifupdown = "Debian=ifupdown Ubuntu=ifupdown"
 DISTRO_PN_ALIAS_pn-initramfs-boot = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-framework = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-live-boot = "OE-Core"
@@ -162,6 +183,7 @@ DISTRO_PN_ALIAS_pn-ldconfig-native = "Ubuntu=libc-bin Fedora=glibc"
 DISTRO_PN_ALIAS_pn-liba52 = "Mandriva=a52dec Debian=a52dec"
 DISTRO_PN_ALIAS_pn-libacpi="Ubuntu=libacpi Mandriva=libacpi"
 DISTRO_PN_ALIAS_pn-libatomics-ops = "Meego=libatomic-ops Debian=libatomic-ops Ubuntu=libatomic-ops OpenSuSE=libatomic-ops Mandriva=libatomic-ops"
+DISTRO_PN_ALIAS_pn-libcgroup = "Ubuntu=libcgroup1 Debian=libcgroup1"
 DISTRO_PN_ALIAS_pn-libcheck = "Ubuntu=check Fedora=check OpenSuSE=check"
 DISTRO_PN_ALIAS_pn-libclass-isa-perl = "OSPDT"
 DISTRO_PN_ALIAS_pn-libdrm-poulsbo = "Debian=libdrm-intel1 Ubuntu=libdrm-intel1"
@@ -173,6 +195,7 @@ DISTRO_PN_ALIAS_pn-libfribidi = "OpenSuSE=fribidi Ubuntu=fribidi Mandriva=fribid
 DISTRO_PN_ALIAS_pn-libgcc = "Debian=libgcc4 Ubuntu=libgcc1 OpenSuSE=libgcc46"
 DISTRO_PN_ALIAS_pn-libgdbus = "Intel"
 DISTRO_PN_ALIAS_pn-libglade = "Meego=libglade2 Fedora=libglade2 OpenSuSE=libglade2 Ubuntu=libglade2 Mandriva=libglade2.0 Debian=libglade2"
+DISTRO_PN_ALIAS_pn-libglu = "Debian=libglu Ubuntu=libglu Opensuse=mesa-libglu"
 DISTRO_PN_ALIAS_pn-libgsmd = "Fedora=gsm Ubuntu=libgsm Debian=libgsm Opensuse=libgsm"
 DISTRO_PN_ALIAS_pn-libgtkstylus = "Debian=libgtkstylus Ubuntu=libgtkstylus"
 DISTRO_PN_ALIAS_pn-libgu = "OpenSuSE=glu OSPDT"
@@ -183,6 +206,7 @@ DISTRO_PN_ALIAS_pn-libksba = "Fedora=libksba Debian=libksba8"
 DISTRO_PN_ALIAS_pn-liblbxutil = "Mandriva=liblbxutil OpenSuse=xorg-x11-devel"
 DISTRO_PN_ALIAS_pn-libmpc = "Fedora=libmpc OpenSuse=libmpc2"
 DISTRO_PN_ALIAS_pn-libnewt = "Debian=libnewt0.52 Fedora=newt"
+DISTRO_PN_ALIAS_pn-libnewt-python = "Ubuntu=python-newt Fedora=newt-python"
 DISTRO_PN_ALIAS_pn-libnss-mdns = "Meego=nss-mdns OpenSuSE=nss-mdns Ubuntu=nss-mdns Mandriva=nss_mdns Debian=nss-mdns"
 DISTRO_PN_ALIAS_pn-libomxil = "OSPDT upstream=http://omxil.sourceforge.net/"
 DISTRO_PN_ALIAS_pn-libowl-av = "OpenedHand"
@@ -191,6 +215,7 @@ DISTRO_PN_ALIAS_pn-libpam = "Meego=pam Fedora=pam OpenSuSE=pam Ubuntu=pam Mandri
 DISTRO_PN_ALIAS_pn-libpcre = "Mandriva=libpcre0 Fedora=pcre"
 DISTRO_PN_ALIAS_pn-libpod-plainer-perl = "OSPDT"
 DISTRO_PN_ALIAS_pn-libsamplerate0 = "Meego=libsamplerate Fedora=libsamplerate OpenSuSE=libsamplerate Ubuntu=libsamplerate Mandriva=libsamplerate Debian=libsamplerate"
+DISTRO_PN_ALIAS_pn-libsdl2 = "Fedora=sdl2 Opensuse=libsdl2 Ubuntu=libsdl2 Debian=libsdl2"
 DISTRO_PN_ALIAS_pn-libsdl = "Fedora=SDL Opensuse=SDL"
 DISTRO_PN_ALIAS_pn-libsndfile1 = "Meego=libsndfile Fedora=libsndfile OpenSuSE=libsndfile Ubuntu=libsndfile Mandriva=libsndfile Debian=libsndfile"
 DISTRO_PN_ALIAS_pn-libsoup-2.4 = "Meego=libsoup Fedora=libsoup OpenSuSE=libsoup Ubuntu=libsoup2.4 Mandriva=libsoup Debian=libsoup2.4"
@@ -240,12 +265,15 @@ DISTRO_PN_ALIAS_pn-matchbox-wm-2 = "Mandriva=matchbox-window-manager Debian=matc
 DISTRO_PN_ALIAS_pn-matchbox-wm = "OpenedHand"
 DISTRO_PN_ALIAS_pn-menu-cache = "OSPDT"
 DISTRO_PN_ALIAS_pn-mesa = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
+DISTRO_PN_ALIAS_pn-mesa-gl = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 DISTRO_PN_ALIAS_pn-mesa-glsl-native = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 DISTRO_PN_ALIAS_pn-meta-environment-i586 = "OE-Core"
+DISTRO_PN_ALIAS_pn-meta-environment-qemux86-64 = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-ide-support = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-gmae = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-qte = "OE-Core"
+DISTRO_PN_ALIAS_pn-meta-toolchain-qt = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-mini-x-session = "OSPDT"
 DISTRO_PN_ALIAS_pn-mkfontdir = "Mandriva=mkfontdir Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
@@ -255,6 +283,8 @@ DISTRO_PN_ALIAS_pn-moblin-proto = "OE-Core"
 DISTRO_PN_ALIAS_pn-modutils-collateral = "OE-Core"
 DISTRO_PN_ALIAS_pn-modutils-initscripts = "OE-Core"
 DISTRO_PN_ALIAS_pn-msynctool = "OpenSuse=msynctool Mandriva=msynctool"
+DISTRO_PN_ALIAS_pn-mtd-utils = "Debian=mtd-utils Ubuntu=mtd-utils"
+DISTRO_PN_ALIAS_pn-mx-1.0 = "Ubuntu=mx Debian=mx Fedora=mx"
 DISTRO_PN_ALIAS_pn-n450-audio = "Intel"
 DISTRO_PN_ALIAS_pn-neard = "Intel"
 DISTRO_PN_ALIAS_pn-network-suspend-scripts = "OE-Core"
@@ -275,10 +305,12 @@ DISTRO_PN_ALIAS_pn-owl-video = "OpenedHand"
 DISTRO_PN_ALIAS_pn-packagegroup-base = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-basic = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-boot = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-buildessential = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-clutter = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-console = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-device-devel = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-directfb = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-eclipse-debug = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-lsb = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-nfs = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core = "OE-Core"
@@ -300,14 +332,17 @@ DISTRO_PN_ALIAS_pn-packagegroup-core-x11 = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-x11-sato = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-x11-xserver = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-cross-canadian-i586 = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-cross-canadian-qemux86-64 = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-qt4e = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-host = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-target = "Intel"
+DISTRO_PN_ALIAS_pn-packagegroup-qt-toolchain-target = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-sdk-host = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-self-hosted = "OE-Core"
 DISTRO_PN_ALIAS_pn-package-index = "OE-Core"
 DISTRO_PN_ALIAS_pn-perf = "OSPDT"
 DISTRO_PN_ALIAS_pn-pointercal = "OE-Core"
+DISTRO_PN_ALIAS_pn-pointercal-xinput = "OE-Core"
 DISTRO_PN_ALIAS_pn-poky-feed-config-opkg = "OE-Core"
 DISTRO_PN_ALIAS_pn-pong-clock = "OpenedHand"
 DISTRO_PN_ALIAS_pn-portmap = "OpenSuSE=portmap"
@@ -335,6 +370,7 @@ DISTRO_PN_ALIAS_pn-qemugl = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemu-helper-native = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemu-helper-nativesdk = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemu-helper = "OpenedHand"
+DISTRO_PN_ALIAS_pn-qemuwrapper-cross = "OE-Core"
 DISTRO_PN_ALIAS_pn-qmmp = "Fedora=qmmp"
 DISTRO_PN_ALIAS_pn-qt4e-demo-image = "OE-Core"
 DISTRO_PN_ALIAS_pn-qt4-embedded = "OSPDT"
@@ -369,6 +405,7 @@ DISTRO_PN_ALIAS_pn-shutdown-desktop = "OpenedHand"
 DISTRO_PN_ALIAS_pn-signgp-native = "OE-Core"
 DISTRO_PN_ALIAS_pn-stat = "Debian=coreutils Fedora=coreutils"
 DISTRO_PN_ALIAS_pn-swabber-native = "OE-Core"
+DISTRO_PN_ALIAS_pn-sysklogd = "Debian=sysklogd Mandriva=sysklogd"
 DISTRO_PN_ALIAS_pn-systemd-compat-units = "Fedora=systemd Ubuntu=systemd"
 DISTRO_PN_ALIAS_pn-systemd-systemdctl-native = "Fedora=systemd Ubuntu=systemd"
 DISTRO_PN_ALIAS_pn-systemtap-uprobes = "Ubuntu=systemtap Debian=systemtap"
@@ -399,6 +436,7 @@ DISTRO_PN_ALIAS_pn-videoproto = "Meego=xorg-x11-proto-videoproto"
 DISTRO_PN_ALIAS_pn-watchdog = "Debian=watchdog Ubuntu=watchdog Mandriva=watchdog"
 DISTRO_PN_ALIAS_pn-webkit-gtk = "Fedora=webkitgtk Ubuntu=libwebkit"
 DISTRO_PN_ALIAS_pn-web-webkit = "OpenedHand"
+DISTRO_PN_ALIAS_pn-weston-init = "OE-Core"
 DISTRO_PN_ALIAS_pn-which = "Mandriva=which Fedora=which"
 DISTRO_PN_ALIAS_pn-wpa-supplicant = "Meego=wpa_supplicant Fedora=wpa_supplicant OpenSuSE=wpa_supplicant Ubuntu=wpasupplicant Mandriva=wpa_supplicant Debian=wpasupplicant"
 DISTRO_PN_ALIAS_pn-x11-common = "OE-Core"
@@ -426,11 +464,13 @@ DISTRO_PN_ALIAS_pn-xf86rushproto = "Meego=xorg-x11-proto-xf86rushproto"
 DISTRO_PN_ALIAS_pn-xf86-video-fbdev = "Ubuntu=xserver-xorg-video-fbdev Debian=xserver-xorg-video-fbdev"
 DISTRO_PN_ALIAS_pn-xf86-video-intel = "Debian=xserver-xorg-video-intel Fedora=xorg-x11-drv-intel Mandriva=x11-driver-video-intel Meego=xorg-x11-drv-intel Ubuntu=xserver-xorg-video-intel"
 DISTRO_PN_ALIAS_pn-xf86-video-omapfb = "OSPDT"
+DISTRO_PN_ALIAS_pn-xf86-video-omap = "Ubuntu=xf86-video-omap Debian=xf86-video-omap"
 DISTRO_PN_ALIAS_pn-xf86-video-vesa = "Debian=xserver-xorg-video-vesa Fedora=xorg-x11-drv-vesa Mandriva=x11-driver-video-vesa Ubuntu=xserver-xorg-video-vesa"
 DISTRO_PN_ALIAS_pn-xf86-video-vmware = "Debian=xserver-xorg-video-vmware Fedora=xorg-x11-drv-vmware Mandriva=x11-driver-video-vmware Ubuntu=xserver-xorg-video-vmware"
 DISTRO_PN_ALIAS_pn-xf86vidmodeproto = "Meego=xorg-x11-proto-xf86vidmodeproto Ubuntu=x11proto-xf86vidmode Debian=x11proto-xf86vidmode"
 DISTRO_PN_ALIAS_pn-xhost = "Ubuntu=x11-xserver-utils Fedora=xorg-x11-server-utils"
 DISTRO_PN_ALIAS_pn-xineramaproto = "Meego=xorg-x11-proto-xineramaproto Ubuntu=x11proto-xinerama Debian=x11proto-xinerama"
+DISTRO_PN_ALIAS_pn-xinput-calibrator = "Fedora=xinput-calibrator Mandravia=xinput-calibrator Ubuntu=xinput-calibrator"
 DISTRO_PN_ALIAS_pn-xkbcomp = "Ubuntu=x11-xkb-utils Fedora=xorg-x11-xkb-utils"
 DISTRO_PN_ALIAS_pn-xmodmap = "Meego=xorg-x11-utils-xmodmap Fedora=xorg-x11-server-utils Ubuntu=x11-xserver-utils"
 DISTRO_PN_ALIAS_pn-xorg-cf-files = "OE-Core"
@@ -447,9 +487,11 @@ DISTRO_PN_ALIAS_pn-xserver-xf86-lite = "Fedora=xorg-x11-server Ubuntu=xserver-xo
 DISTRO_PN_ALIAS_pn-xserver-xorg = "Fedora=xorg-x11-server Ubuntu=xserver-xorg"
 DISTRO_PN_ALIAS_pn-xset = "Fedora=xorg-x11-server-utils Ubuntu=x11-xserver-utils Debian=x11-xserver-utils Opensuse=xorg-x11"
 DISTRO_PN_ALIAS_pn-xtscal = "OSPDT upstream=http://gpe.linuxtogo.org/download/source/"
+DISTRO_PN_ALIAS_pn-xuser-account = "OE-Core"
 DISTRO_PN_ALIAS_pn-xvideo-tests = "OpenedHand"
 DISTRO_PN_ALIAS_pn-xvinfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
 DISTRO_PN_ALIAS_pn-xwininfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
 DISTRO_PN_ALIAS_pn-yaffs2-utils = "OSPDT upstream=http://www.yaffs.net"
 DISTRO_PN_ALIAS_pn-zaurusd = "OpenedHand"
 DISTRO_PN_ALIAS_pn-zeroconf = "OSPDT upstream=http://www.progsoc.org/~wildfire/zeroconf/"
+DISTRO_PN_ALIAS_pn-libical = "Ubuntu=libical Fedora=libical"
-- 
1.7.9.5


