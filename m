Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C84FBE0087E; Tue, 28 Oct 2014 10:01:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02DAFE008B8
	for <poky@yoctoproject.org>; Tue, 28 Oct 2014 10:01:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Oct 2014 10:01:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,803,1406617200"; d="scan'208";a="627058194"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.4.154])
	by orsmga002.jf.intel.com with ESMTP; 28 Oct 2014 10:01:08 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 28 Oct 2014 11:01:31 -0600
Message-Id: <1414515691-21938-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: =?UTF-8?B?W1BBVENIXSBtYWludGFpbmVycy5pbmM6IFVwZGF0ZWQgd2l0aCBzb21lIG93bmVyc2hpcCBmb3IgQW7DrWJhbCBMaW3Ds24gYW5kIEFsZWphbmRybyBIZXJuYW5kZXou?=
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
X-List-Received-Date: Tue, 28 Oct 2014 17:01:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 70 +++++++++++++-------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index a96f88b..b2554fb 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -28,7 +28,7 @@
 # Please keep this list in alphabetical order.
 #
 RECIPE_MAINTAINER_pn-acl = "Chong Lu <Chong.Lu@windriver.com>"
-RECIPE_MAINTAINER_pn-acpid = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-acpid = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-adt-installer = "Jessica Zhang <jessica.zhang@intel.com>"
 RECIPE_MAINTAINER_pn-alsa-lib = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-alsa-state = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -38,8 +38,8 @@ RECIPE_MAINTAINER_pn-alsa-utils-alsaconf = "Cristian Iorga <cristian.iorga@intel
 RECIPE_MAINTAINER_pn-apmd = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-apr = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-apr-util = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-apt = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-aspell = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-apt = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-aspell = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-atk = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-at = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-at-spi2-atk = "Ross Burton <ross.burton@intel.com>"
@@ -55,7 +55,7 @@ RECIPE_MAINTAINER_pn-babeltrace = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-base-files = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-base-passwd = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-bash = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-bc = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-bc = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-bdwgc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-beecrypt = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-bigreqsproto = "Saul Wold <sgw@linux.intel.com>"
@@ -115,7 +115,7 @@ RECIPE_MAINTAINER_pn-coreutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-cpio = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-cracklib ="Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-createrepo = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-RECIPE_MAINTAINER_pn-cronie = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-cronie = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-cross-localedef-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-cups = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-curl = "Saul Wold <sgw@linux.intel.com>"
@@ -143,7 +143,7 @@ RECIPE_MAINTAINER_pn-docbook-sgml-dtd-4.5-native = "Paul Eggleton <paul.eggleton
 RECIPE_MAINTAINER_pn-docbook-sgml-dtd = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-docbook-utils = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dosfstools = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-RECIPE_MAINTAINER_pn-dpkg = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-dpkg = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dri2proto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-dropbear = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dtc = "Saul Wold <sgw@linux.intel.com>"
@@ -194,11 +194,11 @@ RECIPE_MAINTAINER_pn-glibc = "Richard Purdie <richard.purdie@linuxfoundation.org
 RECIPE_MAINTAINER_pn-glib-networking = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-glproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-gmp = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-gnome-common = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-gnome-desktop = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-gnome-doc-utils = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-gnome-icon-theme = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-gnome-mime-data = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-gnome-common = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-gnome-desktop = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-gnome-doc-utils = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-gnome-icon-theme = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-gnome-mime-data = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gnu-config = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnupg = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gnutls = "Ross Burton <ross.burton@intel.com>"
@@ -207,7 +207,7 @@ RECIPE_MAINTAINER_pn-gpgme = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-grep = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-groff = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-grub = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-RECIPE_MAINTAINER_pn-gsettings-desktop-schemas = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-gsettings-desktop-schemas = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gst-ffmpeg = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gst-fluendo-mp3 = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gst-fluendo-mpegdemux = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -261,7 +261,7 @@ RECIPE_MAINTAINER_pn-iproute2 = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-iptables = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-iputils = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-irda-utils = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-jpeg = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-jpeg = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-json-glib = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-kbd = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-kbproto = "Ross Burton <ross.burton@intel.com>"
@@ -277,7 +277,7 @@ RECIPE_MAINTAINER_pn-ldconfig-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-leafpad = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-less = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-liba52 = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-libacpi = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libacpi = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libaio = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libarchive = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libart-lgpl = "Ross Burton <ross.burton@intel.com>"
@@ -356,8 +356,8 @@ RECIPE_MAINTAINER_pn-libunique = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libunistring = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-liburcu = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-liburi-perl = "Kai Kang <kai.kang@windriver.com>"
-RECIPE_MAINTAINER_pn-libusb1 = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libusb-compat = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libusb1 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libusb-compat = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libuser = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-libvorbis = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libx11-diet = "Kai Kang <kai.kang@windriver.com>"
@@ -413,7 +413,7 @@ RECIPE_MAINTAINER_pn-lrzsz = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-lsbinitscripts = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-lsbtest = "Yi Zhao <yi.zhao@windriver.com>"
 RECIPE_MAINTAINER_pn-lsb = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-lsof = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-lsof = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ltp = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-lttng-modules = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-lttng-tools = "Richard Purdie <richard.purdie@linuxfoundation.org>"
@@ -438,7 +438,7 @@ RECIPE_MAINTAINER_pn-matchbox-session = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-terminal = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-theme-sato = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-wm = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-mc = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-mc = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mdadm = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-menu-cache = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mesa-demos = "Saul Wold <sgw@linux.intel.com>"
@@ -446,7 +446,7 @@ RECIPE_MAINTAINER_pn-mesa = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-meta-ide-support = "Jessica Zhang <jessica.zhang@intel.com>"
 RECIPE_MAINTAINER_pn-meta-toolchain-qte = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-meta-toolchain = "Jessica Zhang <jessica.zhang@intel.com>"
-RECIPE_MAINTAINER_pn-midori = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-midori = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mingetty = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-minicom = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-mini-x-session = "Saul Wold <sgw@linux.intel.com>"
@@ -476,7 +476,7 @@ RECIPE_MAINTAINER_pn-netbase = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-nettle = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-net-tools = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-nfs-export-root = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-nfs-utils = "Paul Eggleton <paul.eggleton@linux.intel.com>"
+RECIPE_MAINTAINER_pn-nfs-utils = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-npth = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-nspr = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ocf-linux = "Saul Wold <sgw@linux.intel.com>"
@@ -504,7 +504,7 @@ RECIPE_MAINTAINER_pn-packagegroup-core-device-devel = "Saul Wold <sgw@linux.inte
 RECIPE_MAINTAINER_pn-packagegroup-core-directfb = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-full-cmdline = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-lsb = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-packagegroup-core-nfs = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-packagegroup-core-nfs = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-qt4e = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-qt = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-sdk = "Saul Wold <sgw@linux.intel.com>"
@@ -527,14 +527,14 @@ RECIPE_MAINTAINER_pn-patch = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pax-utils = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pax = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pciutils = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-pcmanfm = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-pcmanfm = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pcmciautils = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-perf = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-perl = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-piglit = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-pigz = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pixman = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-pkgconfig = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-pkgconfig = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pm-utils = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-pointercal = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-poky-feed-config-opkg = "Saul Wold <sgw@linux.intel.com>"
@@ -598,10 +598,10 @@ RECIPE_MAINTAINER_pn-rsync = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-rt-tests = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-run-postinsts = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-rxvt-unicode = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-sato-icon-theme = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-sato-icon-theme = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sato-screenshot = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sbc = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-screen = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-screen = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-scrnsaverproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-sed = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-setserial = "Saul Wold <sgw@linux.intel.com>"
@@ -616,7 +616,7 @@ RECIPE_MAINTAINER_pn-shutdown-desktop = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-slang = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-socat = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-speex = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-sqlite3 = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-sqlite3 = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-squashfs-tools = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-startup-notification = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-stat = "Chen Qi <Qi.Chen@windriver.com>"
@@ -645,23 +645,23 @@ RECIPE_MAINTAINER_pn-telepathy-idle = "Cristian Iorga <cristian.iorga@intel.com>
 RECIPE_MAINTAINER_pn-telepathy-mission-control = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-telepathy-python = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-texi2html = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-texinfo = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-texinfo = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tiff = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-time = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tiny-init = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-trace-cmd = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tremor = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-tslib = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tzcode-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tzdata = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-ubootchart = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-u-boot-fw-utils = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-u-boot-mkimage = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-udev-extraconf = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-udev = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-udev-extraconf = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-udev = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-unifdef = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-unzip = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-unzip = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-update-rc.d = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-usbinit = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-usbutils = "Saul Wold <sgw@linux.intel.com>"
@@ -679,7 +679,7 @@ RECIPE_MAINTAINER_pn-webkit-gtk = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-web-webkit = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-weston = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-wget = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-which = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-which = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-wireless-tools = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-wpa-supplicant = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-x11-common = "Ross Burton <ross.burton@intel.com>"
@@ -717,7 +717,7 @@ RECIPE_MAINTAINER_pn-xf86-video-vmware = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xf86vidmodeproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xhost = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xineramaproto = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-xinetd = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-xinetd = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-xinit = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xinput = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xinput-calibrator = "Ross Burton <ross.burton@intel.com>"
@@ -727,12 +727,12 @@ RECIPE_MAINTAINER_pn-xmodmap = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xorg-minimal-fonts = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xprop = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xproto = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-xrandr = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-xrandr = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-xrestop = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-nodm-init = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-xf86-config = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-xorg = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-xset = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-xset = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-xtrans = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xtscal = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xvideo-tests = "Cristian Iorga <cristian.iorga@intel.com>"
-- 
1.9.1


