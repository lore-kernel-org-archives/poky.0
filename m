Return-Path: <tanu.kaskinen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C97B7E00AE6; Mon,  6 Jul 2015 09:31:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4182FE00AC0
	for <poky@yoctoproject.org>; Mon,  6 Jul 2015 09:30:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 06 Jul 2015 09:30:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,415,1432623600"; d="scan'208";a="756959082"
Received: from tkkaskin-mobl3.ger.corp.intel.com (HELO
	tkkaskin-mobl3.ger.corp.intel.com.ger.corp.intel.com)
	([10.252.2.187])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jul 2015 09:30:50 -0700
From: Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  6 Jul 2015 19:30:47 +0300
Message-Id: <1436200247-9112-1-git-send-email-tanu.kaskinen@linux.intel.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [PATCH] maintainers.inc: reassign audio recipe maintainership
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
X-List-Received-Date: Mon, 06 Jul 2015 16:31:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

I hereby offer to take the responsibility for audio recipe maintenance
in OE-core.

Two new recipes were added to maintainers.inc: alsa-plugins and
speexdsp. The speexdsp recipe isn't yet included in OE-core, but
hopefully will be very soon (patches have been sent). Also,
alsa-utils-alsaconf was renamed to alsa-utils-scripts some time ago,
but that wasn't previously reflected in this file.

Signed-off-by: Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 36 ++++++++++++++------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index b80f0c9..579e9b8 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -30,11 +30,12 @@
 RECIPE_MAINTAINER_pn-acl = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-acpid = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-adt-installer = "Jessica Zhang <jessica.zhang@intel.com>"
-RECIPE_MAINTAINER_pn-alsa-lib = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-alsa-state = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-alsa-tools = "Kai Kang <kai.kang@windriver.com>"
-RECIPE_MAINTAINER_pn-alsa-utils = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-alsa-utils-alsaconf = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-alsa-lib = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-alsa-plugins = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-alsa-state = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-alsa-tools = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-alsa-utils = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-alsa-utils-scripts = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-apmd = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-apr = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-apr-util = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -159,7 +160,7 @@ RECIPE_MAINTAINER_pn-expat = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-file = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-findutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-fixesproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-flac = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-flac = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-flex = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-font-alias = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-fontconfig = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -259,12 +260,12 @@ RECIPE_MAINTAINER_pn-kern-tools-native = "Bruce Ashfield <bruce.ashfield@windriv
 RECIPE_MAINTAINER_pn-kexec-tools = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-keymaps = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-kmod = "Chen Qi <Qi.Chen@windriver.com>"
-RECIPE_MAINTAINER_pn-lame = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-lame = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-latencytop = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-ldconfig-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-leafpad = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-less = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-liba52 = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-liba52 = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libacpi = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libaio = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libarchive = "Paul Barker <paul@paulbarker.me.uk>"
@@ -303,12 +304,12 @@ RECIPE_MAINTAINER_pn-libi18n-collate-perl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libical = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libice = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libiconv = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libid3tag = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-libid3tag = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libidn = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libinput = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libjson = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libksba = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libmad = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libmad = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libmatchbox = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libmpc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libnewt = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -333,10 +334,10 @@ RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libproxy = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libpthread-stubs = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-librsvg = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libsamplerate0 = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-libsamplerate0 = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libsdl = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libsm = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libsndfile1 = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-libsndfile1 = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libsoup-2.4 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libtasn1 = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libtelepathy = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -351,7 +352,7 @@ RECIPE_MAINTAINER_pn-liburi-perl = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libusb1 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libusb-compat = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libuser = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-libvorbis = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-libvorbis = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libx11-diet = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libx11 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libxau = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -545,7 +546,7 @@ RECIPE_MAINTAINER_pn-pseudo = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-psmisc = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-psplash = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pth = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-pulseaudio = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-pulseaudio = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-python = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-async = "Randy Witt <randy.e.witt@linux.intel.com>"
@@ -598,7 +599,7 @@ RECIPE_MAINTAINER_pn-run-postinsts = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-rxvt-unicode = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sato-icon-theme = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sato-screenshot = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-sbc = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-sbc = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-screen = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-scrnsaverproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-sed = "Chen Qi <Qi.Chen@windriver.com>"
@@ -613,7 +614,8 @@ RECIPE_MAINTAINER_pn-shared-mime-info = "Jussi Kukkonen <jussi.kukkonen@intel.co
 RECIPE_MAINTAINER_pn-shutdown-desktop = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-slang = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-socat = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-speex = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-speex = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-speexdsp = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sqlite3 = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-squashfs-tools = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-startup-notification = "Saul Wold <sgw@linux.intel.com>"
@@ -649,7 +651,7 @@ RECIPE_MAINTAINER_pn-tiff = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-time = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tiny-init = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-trace-cmd = "Darren Hart <dvhart@linux.intel.com>"
-RECIPE_MAINTAINER_pn-tremor = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-tremor = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tslib = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tzcode-native = "Robert Yang <liezhi.yang@windriver.com>"
-- 
1.9.3


