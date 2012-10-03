Return-Path: <sgw@bigsur.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0BD1E00524
	for <poky@yoctoproject.org>; Wed,  3 Oct 2012 15:33:10 -0700 (PDT)
Received: by dadz8 with SMTP id z8so3371498dad.35
	for <poky@yoctoproject.org>; Wed, 03 Oct 2012 15:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bigsur.com; s=bigsur.com;
	h=sender:from:to:subject:date:message-id:x-mailer;
	bh=7fDru73Rg6RvnnQlBg9q1Kje15Z3v+DsLmeY/6g6/g8=;
	b=Lr9lK5Z34k+SzMjOamz1x4nmL8+sQH90P4Bj30NzTJ3w4lP7z+OWTUda6yjRgvSt9Q
	6vsA9fbzThsYA87Vkp4TWAQOZC7goi1yv17zZMEofw15GzvNqBpcVeqcqlAblYu7aFIa
	xCX1tklssT2T606/m3fDOu0rzEI2bfk0x9YCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=7fDru73Rg6RvnnQlBg9q1Kje15Z3v+DsLmeY/6g6/g8=;
	b=I3n4XmMsXCVpZgzu0rBKepC4i5Ga/0r+K8XxOJy6qTzFKXvFQ8RDcsqGWsF86jg7WT
	5gAljF8aNja7H1ysjOrX7hhAg54zdvk7yCaGr3ZiAPmup0z1p4PVL+dbTGZrRi/1ndt9
	6F2IWuWHJ66P6aJ4CGtOk2u3G8JZ4qHvRwFaOV8n3nAePV3zsH61KQZnBU62Q/wvWmSZ
	VxFLiBixyX/59BgdadmeCllOx1KVhrX/dArXO8/xokq0xEqYqTUZy/bDLeG5JGqRKi5V
	bJd7IVZ94MxGq1uXNl7BuiN09mnf+HlNbDg+v/beHrYjReVoLX4jg6VL8ahMhHgOlUOu
	BtbQ==
Received: by 10.68.197.70 with SMTP id is6mr4505049pbc.64.1349303586233;
	Wed, 03 Oct 2012 15:33:06 -0700 (PDT)
Received: from localhost (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id te6sm3232419pbc.29.2012.10.03.15.33.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 03 Oct 2012 15:33:05 -0700 (PDT)
Sender: Saul Wold <sgw@bigsur.com>
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  3 Oct 2012 15:32:55 -0700
Message-Id: <1349303575-9002-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQnJ+rUccQ2VQXi+EmGYUDgshum8kAD4hcg8YNd6mbemyQlKoH01+zN5CHrBXKq7TUotsMjv
Subject: [PATCH] distro_alias: Update for 1.3 BOM Creation
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
X-List-Received-Date: Wed, 03 Oct 2012 22:33:11 -0000

Fixed Ordering of packagegroup
Added entries for qemu-config split
Added entries for new packages, anotated approved packages

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |  115 ++++++++++++++---------
 1 file changed, 72 insertions(+), 43 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index e0cfa35..d6247cf 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -13,8 +13,11 @@ DISTRO_PN_ALIAS_pn-aaina = "Intel"
 DISTRO_PN_ALIAS_pn-abiword-embedded = "Fedora=abiword Ubuntu=abiword"
 DISTRO_PN_ALIAS_pn-adt-installer = "Intel"
 DISTRO_PN_ALIAS_pn-alsa-state = "OE-Core"
+DISTRO_PN_ALIAS_pn-anjuta-remote-run = "OpenedHand"
 DISTRO_PN_ALIAS_pn-augeas = "Ubuntu=libaugeas0 Debian=libaugeas0"
 DISTRO_PN_ALIAS_pn-avahi-ui = "Ubuntu=avahi-discover Debian=avahi-discover"
+DISTRO_PN_ALIAS_pn-babeltrace = "OSPDT"
+DISTRO_PN_ALIAS_pn-bdwgc = "OSPDT"
 DISTRO_PN_ALIAS_pn-bigreqsproto = "Meego=xorg-x11-proto-bigreqsproto"
 DISTRO_PN_ALIAS_pn-blktool = "Debian=blktool Mandriva=blktool"
 DISTRO_PN_ALIAS_pn-bluez4= "Fedora=bluez Ubuntu=bluez Debian=bluez-utils Opensuse=bluez"
@@ -22,6 +25,7 @@ DISTRO_PN_ALIAS_pn-bluez4="Meego=bluz Fedora=bluz Ubuntu=bluz OpenSuSE=bluz Mand
 DISTRO_PN_ALIAS_pn-bluez-dtl1-workaround = "OE-Core"
 DISTRO_PN_ALIAS_pn-btrfs-tools = "Debian=btrfs-tools Fedora=btrfs-progs"
 DISTRO_PN_ALIAS_pn-builder = "OE-Core"
+DISTRO_PN_ALIAS_pn-build-appliance-image = "OSPDT"
 DISTRO_PN_ALIAS_pn-calibrateproto = "OSPDT upstream=http://cgit.freedesktop.org/xorg/lib/libXCalibrate/"
 DISTRO_PN_ALIAS_pn-calibrateproto = "OSPDT upstream=http://cgit.freedesktop.org/xorg/proto/calibrateproto"
 DISTRO_PN_ALIAS_pn-cdrtools = "OpenSUSE=cdrtools OSPDT"
@@ -30,8 +34,9 @@ DISTRO_PN_ALIAS_pn-claws-plugin-maildir = "Fedora=claws-mail-plugins OpenSuSE=cl
 DISTRO_PN_ALIAS_pn-claws-plugin-mailmbox = "Fedora=claws-mail-plugins OpenSuSE=claws-mail-extra-plugins Debian=claws-mail-extra-plugins"
 DISTRO_PN_ALIAS_pn-claws-plugin-rssyl = "Fedora=claws-mail-plugins OpenSuSE=claws-mail-extra-plugins Debian=claws-mail-extra-plugins"
 DISTRO_PN_ALIAS_pn-clipboard-manager = "OpenedHand"
-DISTRO_PN_ALIAS_pn-clutter-1.8 = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
 DISTRO_PN_ALIAS_pn-clutter = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
+DISTRO_PN_ALIAS_pn-clutter-1.8 = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
+DISTRO_PN_ALIAS_pn-clutter-box2d = "Meego=clutter-box2d"
 DISTRO_PN_ALIAS_pn-clutter-gst-1.8 = "Fedora=clutter-gst Debian=libclutter-gst"
 DISTRO_PN_ALIAS_pn-clutter-gtk-1.8 = "Fedora=clutter-gtk OpenSuSE=clutter-gtk Ubuntu=clutter-gtk-0.10 Mandriva=clutter-gtk Debian=clutter-gtk"
 DISTRO_PN_ALIAS_pn-cogl = "Fedora=cogl OpenSuse=cogl Ubuntu=cogl Mandriva=cogl Debian=cogl"
@@ -64,7 +69,7 @@ DISTRO_PN_ALIAS_pn-core-image-sato-sdk-directdisk = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato-sdk-live = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sdk = "OE-Core"
-DISTRO_PN_ALIAS_pn-core-x11 = "OE-Core"
+DISTRO_PN_ALIAS_pn-core-image-x11 = "OE-Core"
 DISTRO_PN_ALIAS_pn-cross-localedef = "OSPDT"
 DISTRO_PN_ALIAS_pn-cwautomacros= "OSPDT upstream=http://cwautomacros.berlios.de/"
 DISTRO_PN_ALIAS_pn-damageproto = "Meego=xorg-x11-proto-damageproto"
@@ -72,9 +77,9 @@ DISTRO_PN_ALIAS_pn-db = "Debian=db5.1 Ubuntu=db5.1"
 DISTRO_PN_ALIAS_pn-dbus-wait = "OpenedHand"
 DISTRO_PN_ALIAS_pn-directfb-examples = "Debian=directfb Fedora=directfb"
 DISTRO_PN_ALIAS_pn-distcc = "Debian=distcc Fedora=distcc"
+DISTRO_PN_ALIAS_pn-distcc-config = "OpenedHand"
 DISTRO_PN_ALIAS_pn-dmxproto = "Meego=xorg-x11-proto-dmxproto Ubuntu=x11proto-dmx Debian=x11proto-dmx"
-DISTRO_PN_ALIAS_pn-docbook-dsssl-stylesheet = "Fedora=docbook-style-dsssl Ubuntu=docbook-dsssl"
-DISTRO_PN_ALIAS_pn-docbook-dsssl-stylesheet-native = "Fedora=docbook-style-dsssl Ubuntu=docbook-dsssl"
+DISTRO_PN_ALIAS_pn-docbook-dsssl-stylesheets = "Fedora=docbook-style-dsssl Ubuntu=docbook-dsssl"
 DISTRO_PN_ALIAS_pn-docbook-sgml-dtd-3.1 = "Fedora=docbook-dtds Mandriva=docbook-dtd31-sgml"
 DISTRO_PN_ALIAS_pn-docbook-sgml-dtd-4.1 = "Fedora=docbook-dtds Mandriva=docbook-dtd41-sgml"
 DISTRO_PN_ALIAS_pn-docbook-sgml-dtd-4.5 = "Fedora=docbook-dtds Mandriva=docbook-dtd42-sgml"
@@ -84,7 +89,8 @@ DISTRO_PN_ALIAS_pn-dtc = "Fedora=dtc Ubuntu=dtc"
 DISTRO_PN_ALIAS_pn-dtc-native = "Fedora=dtc Ubuntu=dtc"
 DISTRO_PN_ALIAS_pn-eds-tools = "OpenedHand"
 DISTRO_PN_ALIAS_pn-eee-acpi-scripts = "Debian=eeepc-acpi-scripts Ubuntu=eeepc-acpi-scripts"
-DISTRO_PN_ALIAS_pn-eglibc-locale-nativesdk = "OE-Core"
+DISTRO_PN_ALIAS_pn-eglibc = "OE-Core"
+DISTRO_PN_ALIAS_pn-eglibc-initial = "OE-Core"
 DISTRO_PN_ALIAS_pn-eglibc-locale = "OE-Core"
 DISTRO_PN_ALIAS_pn-emgd-driver-bin = "Intel"
 DISTRO_PN_ALIAS_pn-encodings = "Ubuntu=xfonts-encodings Mandriva=x11-font-encodings Debian=xfonts-encodings"
@@ -111,9 +117,11 @@ DISTRO_PN_ALIAS_pn-gcc-runtime = "Ubuntu=gcc Fedora=gcc"
 DISTRO_PN_ALIAS_pn-gconf-dbus = "Meego=GConf-dbus"
 DISTRO_PN_ALIAS_pn-gdk-pixbuf-csource-native = "Debian=libgdk-pixbuf2.0-0 Fedora=gdk-pixbuf2"
 DISTRO_PN_ALIAS_pn-gdk-pixbuf = "Debian=libgdk-pixbuf2.0 Fedora=gdk-pixbuf"
+DISTRO_PN_ALIAS_pn-gettext-minimal-native = "Debian=gettext Fedora=gettext"
 DISTRO_PN_ALIAS_pn-glib-2.0 = "Meego=glib2 Fedora=glib2 OpenSuSE=glib2 Ubuntu=glib2.0 Mandriva=glib2.0 Debian=glib2.0"
 DISTRO_PN_ALIAS_pn-glproto = "Meego=xorg-x11-proto-glproto"
 DISTRO_PN_ALIAS_pn-gnu-config = "OpenedHand"
+DISTRO_PN_ALIAS_pn-grub-efi-i586 = "Ubuntu=grub Fedora=grub"
 DISTRO_PN_ALIAS_pn-gst-ffmpeg = "Mandriva=gstreamer0.10-ffmpeg Debian=gstreamer0.10-ffmpeg"
 DISTRO_PN_ALIAS_pn-gst-fluendo-mp3 = "Debian=gstreamer0.10-fluendo-mp3 Ubuntu=gstreamer0.10-fluendo-mp3"
 DISTRO_PN_ALIAS_pn-gst-fluendo-mpegdemux = "Ubuntu=gstreamer0.10-fluendo-mpegdemux Debian=gstreamer0.10-fluendo-mpegdemux"
@@ -124,6 +132,7 @@ DISTRO_PN_ALIAS_pn-gst-plugins-bad = "Fedora=gstreamer-plugins-bad-free OpenSuSE
 DISTRO_PN_ALIAS_pn-gst-plugins-base = "Meego=gst-plugins-base Fedora=gstreamer-plugins-base OpenSuSE=gstreamer-plugins-base Ubuntu=gst-plugins-base0.10 Mandriva=gstreamer0.10-plugins-base Debian=gst-plugins-base0.10"
 DISTRO_PN_ALIAS_pn-gst-plugins-good = "Meego=gst-plugins-good Fedora=gstreamer-plugins-good OpenSuSE=gstreamer-plugins-good Ubuntu=gst-plugins-good0.10 Mandriva=gstreamer0.10-plugins-good Debian=gst-plugins-good0.10"
 DISTRO_PN_ALIAS_pn-gst-plugins-ugly = "OpenSuSE=gstreamer-plugins-ugly Mandriva=gstreamer0.10-plugins-ugly Debian=gst-plugins-ugly0.10"
+DISTRO_PN_ALIAS_pn-gtk-doc-stub = "Fedora=gtk-doc Ubuntu=gtk-doc"
 DISTRO_PN_ALIAS_pn-gtk-engines = "Fedora=gtk2-engines OpenSuSE=gtk2-engines Ubuntu=gtk2-engines Mandriva=gtk-engines2 Debian=gtk2-engines"
 DISTRO_PN_ALIAS_pn-gtkhtml2 = "Debian=libgtkhtml2-0 Fedora=gtkhtml2"
 DISTRO_PN_ALIAS_pn-gtk+ = "Meego=gtk2 Fedora=gtk2 OpenSuSE=gtk2 Ubuntu=gtk+2.0 Mandriva=gtk+2.0 Debian=gtk+2.0"
@@ -136,6 +145,7 @@ DISTRO_PN_ALIAS_pn-imake = "Mandriva=xutils Ubuntu=xutils"
 DISTRO_PN_ALIAS_pn-initramfs-boot = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-live-boot = "OE-Core"
 DISTRO_PN_ALIAS_pn-initramfs-live-install = "OE-Core"
+DISTRO_PN_ALIAS_pn-initramfs-live-install-efi = "OE-Core"
 DISTRO_PN_ALIAS_pn-inputproto = "Meego=xorg-x11-proto-inputproto"
 DISTRO_PN_ALIAS_pn-iproute2 = "OSPDT"
 DISTRO_PN_ALIAS_pn-jpeg="OpenSuSE=libjpeg Ubuntu=libjpeg62"
@@ -197,11 +207,17 @@ DISTRO_PN_ALIAS_pn-linux-libc-headers = "Debian=linux-kernel-headers Ubuntu=linu
 DISTRO_PN_ALIAS_pn-linux-libc-headers-yocto = "Debian=linux-kernel-headers Ubuntu=linux-kernel-headers"
 DISTRO_PN_ALIAS_pn-linux-yocto = "Debian=linux-base Ubuntu=linux"
 DISTRO_PN_ALIAS_pn-linux-yocto-rt = "Debian=linux-base Ubuntu=linux"
+DISTRO_PN_ALIAS_pn-linux-yocto-tiny = "OSPDT"
+DISTRO_PN_ALIAS_pn-lsbinitscripts = "Windriver"
 DISTRO_PN_ALIAS_pn-lsbsetup = "Windriver"
+DISTRO_PN_ALIAS_pn-lsbtest = "Windriver"
 DISTRO_PN_ALIAS_pn-ltp = "Ubuntu=ltp"
 DISTRO_PN_ALIAS_pn-lttng-control = "OSPDT upstream=http://lttng.org/"
+DISTRO_PN_ALIAS_pn-lttng-modules = "OSPDT upstream=http://lttng.org/"
+DISTRO_PN_ALIAS_pn-lttng-tools = "OSPDT upstream=http://lttng.org/"
 DISTRO_PN_ALIAS_pn-lttng-ust = "OSPDT upstream=http://lttng.org/"
 DISTRO_PN_ALIAS_pn-lttng-viewer = "OSPDT upstream=http://lttng.org/"
+DISTRO_PN_ALIAS_pn-lttng2-ust = "OSPDT upstream=http://lttng.org/"
 DISTRO_PN_ALIAS_pn-makedepend = "Mandriva=makedepend Ubuntu=xutils-dev"
 DISTRO_PN_ALIAS_pn-makedevs = "OE-Core"
 DISTRO_PN_ALIAS_pn-matchbox-config-gtk = "OpenedHand"
@@ -224,12 +240,13 @@ DISTRO_PN_ALIAS_pn-mesa-dri = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 DISTRO_PN_ALIAS_pn-mesa-dri-glsl-native = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 DISTRO_PN_ALIAS_pn-mesa-xlib = "Fedora=mesa Ubuntu=libgl1-mesa-swx11"
 DISTRO_PN_ALIAS_pn-meta-environment-i586 = "OE-Core"
-DISTRO_PN_ALIAS_pn-meta-ide-support = 'OE-Core'
+DISTRO_PN_ALIAS_pn-meta-ide-support = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-gmae = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-qte = "OE-Core"
-DISTRO_PN_ALIAS_pn-meta-toolchain-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-mkfontdir = "Mandriva=mkfontdir Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
+DISTRO_PN_ALIAS_pn-meta-toolchain-sdk = "OE-Core"
+DISTRO_PN_ALIAS_pn-mini-x-session = "OSPDT"
 DISTRO_PN_ALIAS_pn-mkfontscale = "Mandriva=mkfontscale Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
 DISTRO_PN_ALIAS_pn-mktemp = "Mandriva=mktemp Fedora=mktemp"
 DISTRO_PN_ALIAS_pn-moblin-proto = "OE-Core"
@@ -238,20 +255,53 @@ DISTRO_PN_ALIAS_pn-modutils-initscripts = "OE-Core"
 DISTRO_PN_ALIAS_pn-msynctool = "OpenSuse=msynctool Mandriva=msynctool"
 DISTRO_PN_ALIAS_pn-n450-audio = "Intel"
 DISTRO_PN_ALIAS_pn-network-suspend-scripts = "OE-Core"
+DISTRO_PN_ALIAS_pn-nfs-export-root = "OpenedHand"
+DISTRO_PN_ALIAS_pn-ocf-linux = "OSPDT"
 DISTRO_PN_ALIAS_pn-ofono = "Debian=ofono Ubuntu=ofono"
 DISTRO_PN_ALIAS_pn-oh-puzzles = "OpenedHand"
 DISTRO_PN_ALIAS_pn-opkg-collateral = "OE-Core"
 DISTRO_PN_ALIAS_pn-opkg-config-base = "OE-Core"
-DISTRO_PN_ALIAS_pn-opkg-nogpg-native = "OE-Core"
-DISTRO_PN_ALIAS_pn-opkg-nogpg-nativesdk = "OE-Core"
-DISTRO_PN_ALIAS_pn-opkg-nogpg = "OE-Core"
-DISTRO_PN_ALIAS_pn-opkg_nogpg = "OSPDT upstream=http://svn.openmoko.org/trunk/src/tar"
+DISTRO_PN_ALIAS_pn-opkg-nogpg = "OSPDT upstream=http://svn.openmoko.org/trunk/src/tar"
 DISTRO_PN_ALIAS_pn-opkg = "OSPDT upstream=http://svn.openmoko.org/trunk/src/tar"
 DISTRO_PN_ALIAS_pn-opkg-utils = "OSPDT upstream=http://svn.openmoko.org/trunk/src/target/opkg/"
 DISTRO_PN_ALIAS_pn-oprofileui = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
+DISTRO_PN_ALIAS_pn-oprofileui-server = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
 DISTRO_PN_ALIAS_pn-orinoco-conf = "OE-Core"
 DISTRO_PN_ALIAS_pn-owl-video = "OpenedHand"
 DISTRO_PN_ALIAS_pn-package-index = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-base = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-basic = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-boot = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-clutter = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-console = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-device-devel = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-gtk-directfb = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-lsb = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-nfs = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-qt = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-qt4e = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-sdk-gmae = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-sdk = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-ssh-dropbear = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-ssh-openssh = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-standalone-gmae-sdk-target = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-standalone-sdk-target = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-tools-debug = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-tools = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-tools-profile = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-tools-testapps = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-x11-mini = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-x11 = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-x11-base = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-x11-sato = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-core-x11-xserver = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-cross-canadian-i586 = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-qt4e = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-host = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-target = "Intel"
+DISTRO_PN_ALIAS_pn-packagegroup-sdk-host = "OE-Core"
+DISTRO_PN_ALIAS_pn-packagegroup-self-hosted = "OE-Core"
 DISTRO_PN_ALIAS_pn-pointercal = "OE-Core"
 DISTRO_PN_ALIAS_pn-poky-feed-config-opkg = "OE-Core"
 DISTRO_PN_ALIAS_pn-pong-clock = "OpenedHand"
@@ -272,6 +322,7 @@ DISTRO_PN_ALIAS_pn-python-pygtk = "Debian=python-gtk2 Fedora=pygtk2 OpenSuSE=pyt
 DISTRO_PN_ALIAS_pn-python-pyrex = "Mandriva=python-pyrex Ubuntu=python-pyrex"
 DISTRO_PN_ALIAS_pn-python-scons = "Fedora=scons OpenSuSE=scons Ubuntu=scons Mandriva=scons Debian=scons"
 DISTRO_PN_ALIAS_pn-python-ZSI = "OE-Core"
+DISTRO_PN_ALIAS_pn-qemu-helper = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemu-config = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemugl = "OpenedHand"
 DISTRO_PN_ALIAS_pn-qemu-helper-native = "OpenedHand"
@@ -282,7 +333,7 @@ DISTRO_PN_ALIAS_pn-qt4-embedded = "OSPDT"
 DISTRO_PN_ALIAS_pn-qt4-graphics-system = "OE-Core"
 DISTRO_PN_ALIAS_pn-qt4-native = "Fedora=qt4 Debian=qt4-dev-tools"
 DISTRO_PN_ALIAS_pn-qt4-native = "Mandriva=libqt4-devel Ubuntu=libqt4-dev"
-DISTRO_PN_ALIAS_pn-qt4-tools-nativesdk = "Mandriva=libqt4-devel Ubuntu=libqt4-dev"
+DISTRO_PN_ALIAS_pn-qt4-tools = "Mandriva=libqt4-devel Ubuntu=libqt4-dev"
 DISTRO_PN_ALIAS_pn-qt4-x11-free = "Ubuntu=qt-x11-free Debian=qt-x11-free"
 DISTRO_PN_ALIAS_pn-qt-demo-init = "OE-Core"
 DISTRO_PN_ALIAS_pn-qt-mobility-embedded = "Ubuntu=qtmobility-dev Debian=qtmobility-dev"
@@ -290,6 +341,7 @@ DISTRO_PN_ALIAS_pn-qt-mobility-x11 = "Ubuntu=qtmobility-dev Debian=qtmobility-de
 DISTRO_PN_ALIAS_pn-quicky = "OSPDT"
 DISTRO_PN_ALIAS_pn-randrproto = "Meego=xorg-x11-proto-randrproto"
 DISTRO_PN_ALIAS_pn-recordproto = "Meego=xorg-x11-proto-recordproto"
+DISTRO_PN_ALIAS_pn-remake = "Mandriva=remake Debian=remake"
 DISTRO_PN_ALIAS_pn-renderproto = "Meego=xorg-x11-proto-renderproto"
 DISTRO_PN_ALIAS_pn-resourceproto = "Meego=xorg-x11-proto-resourceproto"
 DISTRO_PN_ALIAS_pn-rgb = "Fedora=xorg-X11-server-utils Debian=x11-xserver-utils"
@@ -305,6 +357,7 @@ DISTRO_PN_ALIAS_pn-sgmlspl = "Debian=sgmlspl Ubuntu=sgmlspl"
 DISTRO_PN_ALIAS_pn-shadow-securetty = "Ubuntu=shadow Fedora=shadow"
 DISTRO_PN_ALIAS_pn-shadow-sysroot = "Ubuntu=shadow Fedora=shadow"
 DISTRO_PN_ALIAS_pn-shasum-native = "OE-Core"
+DISTRO_PN_ALIAS_pn-shutdown-desktop = "OpenedHand"
 DISTRO_PN_ALIAS_pn-signgp-native = "OE-Core"
 DISTRO_PN_ALIAS_pn-stat = "Debian=coreutils Fedora=coreutils"
 DISTRO_PN_ALIAS_pn-swabber-native = "OE-Core"
@@ -312,41 +365,14 @@ DISTRO_PN_ALIAS_pn-systemtap-uprobes = "Ubuntu=systemtap Debian=systemtap"
 DISTRO_PN_ALIAS_pn-sysvinit-inittab = "OE-Core"
 DISTRO_PN_ALIAS_pn-table = "Intel"
 DISTRO_PN_ALIAS_pn-tar-replacement-native = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-base = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-basic = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-boot = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-clutter = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-console = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-gtk-directfb = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-lsb = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-nfs = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-qt = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-sdk-gmae = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-sdk = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-ssh-dropbear = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-ssh-openssh = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-standalone-gmae-sdk-target = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-standalone-sdk-target = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-tools-debug = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-tools = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-tools-profile = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-tools-testapps = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-x11-mini = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-x11 = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-x11-sato = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-cross-canadian-i586 = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-qt4e = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-host-nativesdk = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-host-natives = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-target = "Intel"
-DISTRO_PN_ALIAS_pn-packagegroup-sdk-host = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-self-hosted = "OE-Core"
 DISTRO_PN_ALIAS_pn-tcf-agent = "Windriver upstream=http://www.eclipse.org/dsdp/tm/"
+DISTRO_PN_ALIAS_pn-telepathy-python = "Debian=telepathy-python Ubuntu=telepathy-python"
+DISTRO_PN_ALIAS_pn-tiny-init = "OSPDT"
 DISTRO_PN_ALIAS_pn-tinylogin = "Debian=busybox Ubuntu=busybox Mandriva=busybox"
 DISTRO_PN_ALIAS_pn-trace-cmd = "Mandriva=trace-cmd Ubuntu=trace-cmd"
 DISTRO_PN_ALIAS_pn-trapproto = "Meego=xorg-x11-proto-trapproto"
 DISTRO_PN_ALIAS_pn-tremor = "OSPDT upstream=http://www.xiph.org/vorbis/"
+DISTRO_PN_ALIAS_pn-tslib = "Debian=tslib Ubuntu=tslib"
 DISTRO_PN_ALIAS_pn-ttf-bitstream-vera = "Debian=ttf-bitstream-vera Ubuntu=ttf-bitstream-vera"
 DISTRO_PN_ALIAS_pn-tzcode = "OSPDT"
 DISTRO_PN_ALIAS_pn-ubootchart = "OSPDT upstream=http://code.google.com/p/ubootchart"
@@ -362,14 +388,17 @@ DISTRO_PN_ALIAS_pn-util-macros = "Meego=xorg-x11-util-macros Fedora=xorg-x11-uti
 DISTRO_PN_ALIAS_pn-v86d = "Debian=v86d Ubuntu=v86d"
 DISTRO_PN_ALIAS_pn-videoproto = "Meego=xorg-x11-proto-videoproto"
 DISTRO_PN_ALIAS_pn-watchdog = "Debian=watchdog Ubuntu=watchdog Mandriva=watchdog"
-DISTRO_PN_ALIAS_pn-webkit-gtk = "Fedora=webkitgtk"
 DISTRO_PN_ALIAS_pn-webkit-gtk = "Fedora=webkitgtk Ubuntu=libwebkit"
 DISTRO_PN_ALIAS_pn-web = "OpenedHand"
 DISTRO_PN_ALIAS_pn-web-webkit = "OpenedHand"
+DISTRO_PN_ALIAS_pn-which = "Mandriva=which Fedora=which"
 DISTRO_PN_ALIAS_pn-wpa-supplicant = "Meego=wpa_supplicant Fedora=wpa_supplicant OpenSuSE=wpa_supplicant Ubuntu=wpasupplicant Mandriva=wpa_supplicant Debian=wpasupplicant"
 DISTRO_PN_ALIAS_pn-x11-common = "OE-Core"
 DISTRO_PN_ALIAS_pn-x11perf = "Fedora=xorg-x11-apps Ubuntu=x11-apps"
 DISTRO_PN_ALIAS_pn-x11vnc = "Fedora=x11vnc Ubuntu=x11vnc"
+DISTRO_PN_ALIAS_pn-xcb-util-wm = "Debian=xcb-util Fedora=xcb-util"
+DISTRO_PN_ALIAS_pn-xcb-util-image = "Debian=xcb-util Fedora=xcb-util"
+DISTRO_PN_ALIAS_pn-xcb-util-keysyms = "Debian=xcb-util Fedora=xcb-util"
 DISTRO_PN_ALIAS_pn-xcmiscproto = "Meego=xorg-x11-proto-xcmiscproto"
 DISTRO_PN_ALIAS_pn-xcursor-transparent-theme = "OpenedHand"
 DISTRO_PN_ALIAS_pn-xdpyinfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
-- 
1.7.9.5


