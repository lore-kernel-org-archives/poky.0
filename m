Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F076AE0081E; Mon, 26 Sep 2016 12:09:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4F06E00803
	for <poky@yoctoproject.org>; Mon, 26 Sep 2016 12:09:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 26 Sep 2016 12:09:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,401,1470726000"; d="scan'208";a="1056878352"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.48])
	by orsmga002.jf.intel.com with ESMTP; 26 Sep 2016 12:09:12 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 26 Sep 2016 14:12:43 -0500
Message-Id: <5cddc2e2f0f5f72fe354e009c68decbe578a3876.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
In-Reply-To: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
MIME-Version: 1.0
Subject: [PATCH 2/3] maintainers: new maintainers in multiple recipes
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
X-List-Received-Date: Mon, 26 Sep 2016 19:09:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

In order to load balance Alejandro H. there are new maintainers for the following
packages: aspell, bc, cronie, libusb(-compact), nfs-utils, pcmanfm, ruby, swig,
texinfo, tex-info-dummy-native, ttf-bitstream-vera, unzip and which.

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 28 +++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index bbcfacb..68829b0 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -43,7 +43,7 @@ RECIPE_MAINTAINER_pn-apt = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-apt-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-argp-standalone = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-asciidoc = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-aspell = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-aspell = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-at = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-at-spi2-atk = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-at-spi2-core = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -59,7 +59,7 @@ RECIPE_MAINTAINER_pn-base-files = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-base-passwd = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-bash = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-bash-completion = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-bc = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-bc = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-bdwgc = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-beecrypt = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-bigreqsproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -132,7 +132,7 @@ RECIPE_MAINTAINER_pn-coreutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-cpio = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-cracklib = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-createrepo = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-cronie = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-cronie = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
 RECIPE_MAINTAINER_pn-cross-localedef-native = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-cryptodev-linux = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-cryptodev-module = "Robert Yang <liezhi.yang@windriver.com>"
@@ -409,8 +409,8 @@ RECIPE_MAINTAINER_pn-libunistring = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libunwind = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-liburcu = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-liburi-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libusb-compat = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libusb1 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libusb-compat = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libusb1 = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libuser = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libvorbis = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libwebp = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -541,7 +541,7 @@ RECIPE_MAINTAINER_pn-net-tools = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-netbase = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-nettle = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-nfs-export-root = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-nfs-utils = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-nfs-utils = "Mariano Lopez <mariano.lopez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-npth = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-nspr = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-nss = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -593,7 +593,7 @@ RECIPE_MAINTAINER_pn-pax = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pax-utils = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pbzip2 = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pciutils = "Chen Qi <Qi.Chen@windriver.com>"
-RECIPE_MAINTAINER_pn-pcmanfm = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-pcmanfm = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pcmciautils = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-perf = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
@@ -682,7 +682,7 @@ RECIPE_MAINTAINER_pn-rpm = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-rpmresolve = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-rsync = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-rt-tests = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-ruby = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-ruby = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-run-postinsts = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-rxvt-unicode = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-sato-icon-theme = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
@@ -717,7 +717,7 @@ RECIPE_MAINTAINER_pn-stress = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-subversion = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-sudo = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-swabber-native = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-swig = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-swig = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sysfsutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-sysklogd = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-syslinux = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -740,15 +740,15 @@ RECIPE_MAINTAINER_pn-tcl = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tcp-wrappers = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-testexport-tarball = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-texi2html = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-texinfo = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-texinfo-dummy-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-texinfo = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-texinfo-dummy-native = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tiff = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-time = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tiny-init = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-trace-cmd = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-tremor = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-tslib = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Mariano Lopez <mariano.lopez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tzcode-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tzdata = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-u-boot = "Denys Dmytriyenko <denis@denix.org>"
@@ -761,7 +761,7 @@ RECIPE_MAINTAINER_pn-udev-extraconf = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-unfs3 = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-unifdef = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-uninative-tarball = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-unzip = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-unzip = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
 RECIPE_MAINTAINER_pn-update-rc.d = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-usbinit = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-usbutils = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -781,7 +781,7 @@ RECIPE_MAINTAINER_pn-webkitgtk = "Alexander Kanavin <alexander.kanavin@intel.com
 RECIPE_MAINTAINER_pn-weston = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-weston-init = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-wget = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-which = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-which = "Mariano Lopez <mariano.lopez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-wireless-tools = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-wpa-supplicant = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-x11-common = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-- 
2.1.4


