Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71EBAE01275; Thu, 11 Aug 2016 23:33:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9121E0126B
	for <poky@yoctoproject.org>; Thu, 11 Aug 2016 23:33:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u7C6Xc9l025203
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 11 Aug 2016 23:33:38 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 11 Aug 2016 23:33:37 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 11 Aug 2016 23:33:36 -0700
Message-ID: <6d7b5811de3bebb2b165ebe6f86fd34ebce35a8b.1470983575.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.9.0
MIME-Version: 1.0
In-Reply-To: <cover.1470983575.git.liezhi.yang@windriver.com>
References: <cover.1470983575.git.liezhi.yang@windriver.com>
Subject: [PATCH 1/1] maintainers.inc: update maintainers for Dengke
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
X-List-Received-Date: Fri, 12 Aug 2016 06:33:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

* Take recipes from Jussi Kukkonen
* Take recipes from Kai, Wenzong and Yi.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 94 +++++++++++++--------------
 1 file changed, 47 insertions(+), 47 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index f3bc9fd..1a71671 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -51,8 +51,8 @@ RECIPE_MAINTAINER_pn-attr = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-autoconf = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-autogen-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-automake = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-avahi = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-avahi-ui = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-avahi =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-avahi-ui =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-babeltrace = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-base-files = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-base-passwd = "Ross Burton <ross.burton@intel.com>"
@@ -62,14 +62,14 @@ RECIPE_MAINTAINER_pn-bc = "Alejandro Hernandez <alejandro.hernandez@linux.intel.
 RECIPE_MAINTAINER_pn-bdwgc = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-beecrypt = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-bigreqsproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-bind = "Kai Kang <kai.kang@windriver.com>"
+RECIPE_MAINTAINER_pn-bind = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-binutils = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-binutils-cross = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-binutils-cross-canadian = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-binutils-crosssdk = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-bison = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-bjam-native = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-blktool = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-blktool =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-blktrace = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-bluez5 = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-bmap-tools = "Ed Bartosh <ed.bartosh@linux.intel.com>"
@@ -88,11 +88,11 @@ RECIPE_MAINTAINER_pn-ca-certificates = "Alexander Kanavin <alexander.kanavin@int
 RECIPE_MAINTAINER_pn-cairo = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-calibrateproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-cantarell-fonts = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-ccache = "Wenzong Fan <wenzong.fan@windriver.com>"
-RECIPE_MAINTAINER_pn-cdrtools-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-chkconfig = "Wenzong Fan <wenzong.fan@windriver.com>"
-RECIPE_MAINTAINER_pn-chkconfig-alternatives-native = "Wenzong Fan <wenzong.fan@windriver.com>"
-RECIPE_MAINTAINER_pn-chrpath = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-ccache = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-cdrtools-native =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-chkconfig = "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-chkconfig-alternatives-native = "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-chrpath =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-clutter-1.0 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-clutter-gst-3.0 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-clutter-gtk-1.0 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -154,21 +154,21 @@ RECIPE_MAINTAINER_pn-diffutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-directfb = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-directfb-examples = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-distcc = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-distcc-config = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-distcc-config =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-dmidecode = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-dmxproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-docbook-dsssl-stylesheets-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-docbook-sgml-dtd-3.1-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-docbook-sgml-dtd-4.1-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-docbook-sgml-dtd-4.5-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-docbook-utils-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-docbook-xml-dtd4 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-docbook-xsl-stylesheets = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-dosfstools = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-docbook-dsssl-stylesheets-native =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-docbook-sgml-dtd-3.1-native =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-docbook-sgml-dtd-4.1-native =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-docbook-sgml-dtd-4.5-native =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-docbook-utils-native =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-docbook-xml-dtd4 =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-docbook-xsl-stylesheets =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-dosfstools =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-dpkg = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dri2proto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-dri3proto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-dropbear = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-dropbear =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-dtc = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-e2fsprogs = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-ed = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -179,11 +179,11 @@ RECIPE_MAINTAINER_pn-eglinfo-x11 = "Alexander Kanavin <alexander.kanavin@intel.c
 RECIPE_MAINTAINER_pn-efilinux = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-elfutils = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-enchant = "Maxin B. John <maxin.john@intel.com>"
-RECIPE_MAINTAINER_pn-encodings = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-encodings =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-epiphany = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-ethtool = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-eudev = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-expat = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-expat =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-expect = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-ffmpeg = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-file = "Robert Yang <liezhi.yang@windriver.com>"
@@ -197,7 +197,7 @@ RECIPE_MAINTAINER_pn-fontconfig = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-fontsproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-foomatic-filters = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-formfactor = "Maxin B. John <maxin.john@intel.com>"
-RECIPE_MAINTAINER_pn-freetype = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-freetype =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-fstests = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-fts = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-gawk = "Chen Qi <Qi.Chen@windriver.com>"
@@ -218,7 +218,7 @@ RECIPE_MAINTAINER_pn-gdb-cross = "Richard Purdie <richard.purdie@linuxfoundation
 RECIPE_MAINTAINER_pn-gdb-cross-canadian = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-gdbm = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gdk-pixbuf = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-gettext = "Wenzong Fan <wenzong.fan@windriver.com>"
+RECIPE_MAINTAINER_pn-gettext = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gettext-minimal-native = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-ghostscript = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-git = "Robert Yang <liezhi.yang@windriver.com>"
@@ -243,11 +243,11 @@ RECIPE_MAINTAINER_pn-gnupg = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-gnutls = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gobject-introspection = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gperf = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-gpgme = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-gpgme =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-gptfdisk = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-grep = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-groff = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-grub = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-grub =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-grub-efi = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gsettings-desktop-schemas = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gst-player = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -300,8 +300,8 @@ RECIPE_MAINTAINER_pn-irda-utils = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-iso-codes = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-iw = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libjpeg-turbo = "Maxin B. John <maxin.john@intel.com>"
-RECIPE_MAINTAINER_pn-json-c = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-json-glib = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-json-c =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-json-glib =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-kbd = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-kbproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-kconfig-frontends = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -356,7 +356,7 @@ RECIPE_MAINTAINER_pn-libgcrypt = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libgfortran = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libglade = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libglu = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libgpg-error = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-libgpg-error =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-libgudev = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libi18n-collate-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libical = "Maxin B. John <maxin.john@intel.com>"
@@ -390,8 +390,8 @@ RECIPE_MAINTAINER_pn-libproxy = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpthread-stubs = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-librsvg = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libsamplerate0 = "Tanu Kaskinen <tanuk@iki.fi>"
-RECIPE_MAINTAINER_pn-libsdl = "Kai Kang <kai.kang@windriver.com>"
-RECIPE_MAINTAINER_pn-libsdl2 = "Kai Kang <kai.kang@windriver.com>"
+RECIPE_MAINTAINER_pn-libsdl = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-libsdl2 = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libsecret = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libsm = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libsndfile1 = "Tanu Kaskinen <tanuk@iki.fi>"
@@ -415,7 +415,7 @@ RECIPE_MAINTAINER_pn-libvorbis = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libwebp = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libwnck3 = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libx11 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libx11-diet = "Kai Kang <kai.kang@windriver.com>"
+RECIPE_MAINTAINER_pn-libx11-diet = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libxau = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libxcalibrate = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libxcb = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -463,14 +463,14 @@ RECIPE_MAINTAINER_pn-linux-yocto = "Bruce Ashfield <bruce.ashfield@windriver.com
 RECIPE_MAINTAINER_pn-linux-yocto-dev = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-rt = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-tiny = "Bruce Ashfield <bruce.ashfield@windriver.com>"
-RECIPE_MAINTAINER_pn-linuxdoc-tools-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-linuxdoc-tools-native =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-logrotate = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-lrzsz = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-lsb = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-lsbinitscripts = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-lsbtest = "Yi Zhao <yi.zhao@windriver.com>"
+RECIPE_MAINTAINER_pn-lsbtest = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-lsof = "Maxin B. John <maxin.john@intel.com>"
-RECIPE_MAINTAINER_pn-ltp = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-ltp = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-lttng-modules = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-lttng-tools = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-lttng-ust = "Richard Purdie <richard.purdie@linuxfoundation.org>"
@@ -479,7 +479,7 @@ RECIPE_MAINTAINER_pn-lzo = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-lzop = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-m4 = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-m4-native = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-mailx = "Kai Kang <kai.kang@windriver.com>"
+RECIPE_MAINTAINER_pn-mailx = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-make = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-makedepend = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-makedevs = "Chen Qi <Qi.Chen@windriver.com>"
@@ -506,7 +506,7 @@ RECIPE_MAINTAINER_pn-meta-environment-extsdk = "Richard Purdie <richard.purdie@l
 RECIPE_MAINTAINER_pn-meta-ide-support = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-meta-toolchain = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-meta-world-pkgdata = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-mingetty = "Kai Kang <kai.kang@windriver.com>"
+RECIPE_MAINTAINER_pn-mingetty = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-mini-x-session = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-minicom = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-mkelfimage = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -546,9 +546,9 @@ RECIPE_MAINTAINER_pn-nss = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-nss-myhostname = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-ofono = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-oh-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-openjade-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-opensp = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-openssh = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-openjade-native =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-opensp =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-openssh =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-openssl = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-opkg = "Alejandro del Castillo <alejandro.delcastillo@ni.com>"
 RECIPE_MAINTAINER_pn-opkg-arch-config = "Alejandro del Castillo <alejandro.delcastillo@ni.com>"
@@ -606,7 +606,7 @@ RECIPE_MAINTAINER_pn-pm-utils = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-pointercal = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pointercal-xinput = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pong-clock = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-popt = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-popt =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-portmap = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-powertop = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-ppp = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -616,7 +616,7 @@ RECIPE_MAINTAINER_pn-presentproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-procps = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pseudo = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-psmisc = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-psplash = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-psplash =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-ptest-runner = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pulseaudio = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-pulseaudio-client-conf-sato = "Tanu Kaskinen <tanuk@iki.fi>"
@@ -690,17 +690,17 @@ RECIPE_MAINTAINER_pn-sed = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-serf = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-setserial = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-settings-daemon = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-sgml-common = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-sgml-common-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-sgmlspl = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-sgmlspl-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-sgml-common =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-sgml-common-native =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-sgmlspl =  "Dengke Du <dengke.du@windriver.com>"
+RECIPE_MAINTAINER_pn-sgmlspl-native =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-shadow = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-shadow-securetty = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-shadow-sysroot = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-shared-mime-info = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-shutdown-desktop = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-signing-keys = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-slang = "Kai Kang <kai.kang@windriver.com>"
+RECIPE_MAINTAINER_pn-slang = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-socat = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-speex = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-speexdsp = "Tanu Kaskinen <tanuk@iki.fi>"
@@ -840,7 +840,7 @@ RECIPE_MAINTAINER_pn-xvideo-tests = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-xvinfo = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-xwininfo = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-xz = "Chen Qi <Qi.Chen@windriver.com>"
-RECIPE_MAINTAINER_pn-yasm = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-yasm =  "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-zip = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-zisofs-tools-native = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-zlib = "Chen Qi <Qi.Chen@windriver.com>"
-- 
2.9.0


