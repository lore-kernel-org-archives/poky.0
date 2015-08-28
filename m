Return-Path: <tanuk@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75657E00B49; Fri, 28 Aug 2015 03:58:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 509 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Aug 2015 03:58:26 PDT
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1600FE0049B
	for <poky@yoctoproject.org>; Fri, 28 Aug 2015 03:58:26 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 523842099E
	for <poky@yoctoproject.org>; Fri, 28 Aug 2015 06:49:56 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
	by compute1.internal (MEProxy); Fri, 28 Aug 2015 06:49:56 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=l933YemUGZpK7joeZTwVf7a4FC0=; b=kQAae
	CkCR0hYj1ARzHM7lZRLM81yH+XmzvYvqIbkhF22Z3l5pgl++3dLFwyeYyyCnVmoR
	VTsMacafebpAgkDmKu2Ju08Lbqw/g1Nq6dnEg96pXaPbdGv58LS4ahbE/QJc1tee
	nkp1dqoMnKrW38TIn1iYzzoMqE44usHFQ6AeVw=
X-Sasl-enc: 4nNnrxC1K5k90YyfEMOIY4Ve6sS6tm/iApS1ZLoxXcr4 1440758995
Received: from localhost.localdomain (mobile-access-5d6a6d-131.dhcp.inet.fi
	[93.106.109.131])
	by mail.messagingengine.com (Postfix) with ESMTPA id C3951680140
	for <poky@yoctoproject.org>; Fri, 28 Aug 2015 06:49:55 -0400 (EDT)
From: Tanu Kaskinen <tanuk@iki.fi>
To: poky@yoctoproject.org
Date: Fri, 28 Aug 2015 13:49:51 +0300
Message-Id: <1440758991-26132-1-git-send-email-tanuk@iki.fi>
X-Mailer: git-send-email 2.5.0
MIME-Version: 1.0
Subject: [PATCH] maintainers.inc: email address update
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
X-List-Received-Date: Fri, 28 Aug 2015 10:58:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

I'm not reachable through tanu.kaskinen@linux.intel.com any more.

This patch also adds me as the maintainer of pulseaudio-client-conf-sato,
which was previously not listed at all.

Signed-off-by: Tanu Kaskinen <tanuk@iki.fi>
---
 meta-yocto/conf/distro/include/maintainers.inc | 39 +++++++++++++-------------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 3e95dbb..4581f0d 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -31,12 +31,12 @@ RECIPE_MAINTAINER_pn-acl = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-acpid = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-adt-installer = "Jessica Zhang <jessica.zhang@intel.com>"
 RECIPE_MAINTAINER_pn-adwaita-icon-theme = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-alsa-lib = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
-RECIPE_MAINTAINER_pn-alsa-plugins = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
-RECIPE_MAINTAINER_pn-alsa-state = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
-RECIPE_MAINTAINER_pn-alsa-tools = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
-RECIPE_MAINTAINER_pn-alsa-utils = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
-RECIPE_MAINTAINER_pn-alsa-utils-scripts = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-alsa-lib = "Tanu Kaskinen <tanuk@iki.fi>"
+RECIPE_MAINTAINER_pn-alsa-plugins = "Tanu Kaskinen <tanuk@iki.fi>"
+RECIPE_MAINTAINER_pn-alsa-state = "Tanu Kaskinen <tanuk@iki.fi>"
+RECIPE_MAINTAINER_pn-alsa-tools = "Tanu Kaskinen <tanuk@iki.fi>"
+RECIPE_MAINTAINER_pn-alsa-utils = "Tanu Kaskinen <tanuk@iki.fi>"
+RECIPE_MAINTAINER_pn-alsa-utils-scripts = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-apmd = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-apr = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-apr-util = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -159,7 +159,7 @@ RECIPE_MAINTAINER_pn-expat = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-file = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-findutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-fixesproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-flac = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-flac = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-flex = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-font-alias = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-fontconfig = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -259,12 +259,12 @@ RECIPE_MAINTAINER_pn-kern-tools-native = "Bruce Ashfield <bruce.ashfield@windriv
 RECIPE_MAINTAINER_pn-kexec-tools = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-keymaps = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-kmod = "Chen Qi <Qi.Chen@windriver.com>"
-RECIPE_MAINTAINER_pn-lame = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-lame = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-latencytop = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-ldconfig-native = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-leafpad = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-less = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-liba52 = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-liba52 = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libacpi = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libaio = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libarchive = "Paul Barker <paul@paulbarker.me.uk>"
@@ -304,12 +304,12 @@ RECIPE_MAINTAINER_pn-libi18n-collate-perl = "Ross Burton <ross.burton@intel.com>
 RECIPE_MAINTAINER_pn-libical = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libice = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libiconv = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-libid3tag = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libid3tag = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libidn = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libinput = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libjson = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libksba = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-libmad = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libmad = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libmatchbox = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libmpc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libnewt = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -334,11 +334,11 @@ RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libproxy = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libpthread-stubs = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-librsvg = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libsamplerate0 = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libsamplerate0 = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libsdl = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libsdl2 = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libsm = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libsndfile1 = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libsndfile1 = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libsoup-2.4 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libtasn1 = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libtelepathy = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -353,7 +353,7 @@ RECIPE_MAINTAINER_pn-liburi-perl = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libusb1 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libusb-compat = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libuser = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-libvorbis = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libvorbis = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libx11-diet = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libx11 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libxau = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -547,7 +547,8 @@ RECIPE_MAINTAINER_pn-pseudo = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-psmisc = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-psplash = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pth = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-pulseaudio = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-pulseaudio = "Tanu Kaskinen <tanuk@iki.fi>"
+RECIPE_MAINTAINER_pn-pulseaudio-client-conf-sato = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-python = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-async = "Randy Witt <randy.e.witt@linux.intel.com>"
@@ -600,7 +601,7 @@ RECIPE_MAINTAINER_pn-run-postinsts = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-rxvt-unicode = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-sato-icon-theme = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sato-screenshot = "Jussi Kukkonen <jussi.jukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-sbc = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-sbc = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-screen = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-scrnsaverproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-sed = "Chen Qi <Qi.Chen@windriver.com>"
@@ -615,8 +616,8 @@ RECIPE_MAINTAINER_pn-shared-mime-info = "Jussi Kukkonen <jussi.kukkonen@intel.co
 RECIPE_MAINTAINER_pn-shutdown-desktop = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-slang = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-socat = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-speex = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
-RECIPE_MAINTAINER_pn-speexdsp = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-speex = "Tanu Kaskinen <tanuk@iki.fi>"
+RECIPE_MAINTAINER_pn-speexdsp = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-sqlite3 = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-squashfs-tools = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-startup-notification = "Ross Burton <ross.burton@intel.com>"
@@ -652,7 +653,7 @@ RECIPE_MAINTAINER_pn-tiff = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-time = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tiny-init = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-trace-cmd = "Darren Hart <dvhart@linux.intel.com>"
-RECIPE_MAINTAINER_pn-tremor = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
+RECIPE_MAINTAINER_pn-tremor = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-tslib = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tzcode-native = "Robert Yang <liezhi.yang@windriver.com>"
-- 
2.5.0


