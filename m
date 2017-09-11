Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD673E008D2; Mon, 11 Sep 2017 12:47:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A886E00349
	for <poky@yoctoproject.org>; Mon, 11 Sep 2017 12:47:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Sep 2017 12:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,379,1500966000"; d="scan'208";a="1171201306"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by orsmga001.jf.intel.com with ESMTP; 11 Sep 2017 12:47:49 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 11 Sep 2017 12:47:41 -0700
Message-Id: <20170911194741.126692-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
MIME-Version: 1.0
Cc: limon.anibal@gmail.com
Subject: [PATCH] maintainers.inc: updating ownership for apt, dpkg, perl, qemu and related ones
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
X-List-Received-Date: Mon, 11 Sep 2017 19:47:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 54 +++++++++++++--------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index 52f55bfd90..cc857e0a01 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -41,8 +41,8 @@ RECIPE_MAINTAINER_pn-alsa-utils-scripts = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-apmd = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-apr = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-apr-util = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-apt = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-apt-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-apt = "Aníbal Limón <limon.anibal@gmail.com>"
+RECIPE_MAINTAINER_pn-apt-native = "Aníbal Limón <limon.anibal@gmail.com>"
 RECIPE_MAINTAINER_pn-argp-standalone = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-asciidoc = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-aspell = "Jose Lamego <jose.a.lamego@linux.intel.com>"
@@ -146,7 +146,7 @@ RECIPE_MAINTAINER_pn-dnf = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-docbook-xml-dtd4 = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-docbook-xsl-stylesheets = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-dosfstools = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-dpkg = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-dpkg = "Aníbal Limón <limon.anibal@gmail.com>"
 RECIPE_MAINTAINER_pn-dri2proto = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-dri3proto = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-dropbear = "Dengke Du <dengke.du@windriver.com>"
@@ -318,16 +318,16 @@ RECIPE_MAINTAINER_pn-libcap = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libcap-ng = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libcgroup = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libcheck = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-libclass-isa-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libclass-isa-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libcomps = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libcroco = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libdaemon = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libdmx = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-libdnf = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libdrm = "Otavio Salvador <otavio.salvador@ossystems.com.br>"
-RECIPE_MAINTAINER_pn-libdumpvalue-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libenv-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libdumpvalue-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libenv-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libepoxy = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-liberation-fonts = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-liberror-perl = "Robert Yang <liezhi.yang@windriver.com>"
@@ -336,7 +336,7 @@ RECIPE_MAINTAINER_pn-libevent = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libexif = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libfakekey = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libffi = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-libfile-checktree-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libfile-checktree-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libfm = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libfm-extra = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libfontenc = "Armin Kuster <akuster@mvista.com>"
@@ -348,7 +348,7 @@ RECIPE_MAINTAINER_pn-libglade = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libglu = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libgpg-error = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libgudev = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libi18n-collate-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libi18n-collate-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libical = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libice = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-libiconv = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -377,7 +377,7 @@ RECIPE_MAINTAINER_pn-libpcre2 = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-libpfm4 = "Matthew McClintock <msm@freescale.com>"
 RECIPE_MAINTAINER_pn-libpng = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpng12 = "Maxin B. John <maxin.john@intel.com>"
-RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libproxy = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpthread-stubs = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-librepo = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -392,7 +392,7 @@ RECIPE_MAINTAINER_pn-libsolv = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libsoup-2.4 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libtasn1 = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libtheora = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-libtimedate-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libtimedate-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libtirpc = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libtool = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libtool-cross = "Robert Yang <liezhi.yang@windriver.com>"
@@ -400,7 +400,7 @@ RECIPE_MAINTAINER_pn-libtool-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libunistring = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libunwind = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-liburcu = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-liburi-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-liburi-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libusb-compat = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libusb1 = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libuser = "Robert Yang <liezhi.yang@windriver.com>"
@@ -426,12 +426,12 @@ RECIPE_MAINTAINER_pn-libxi = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-libxinerama = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-libxkbcommon = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-libxkbfile = "Armin Kuster <akuster@mvista.com>"
-RECIPE_MAINTAINER_pn-libxml-namespacesupport-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-parser-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-sax-base-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-sax-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-simple-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-namespacesupport-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-parser-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-sax-base-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-sax-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-simple-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libxml2 = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libxmu = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-libxpm = "Armin Kuster <akuster@mvista.com>"
@@ -524,11 +524,11 @@ RECIPE_MAINTAINER_pn-mtools = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-musl = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-mx-1.0 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-nasm = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-nativesdk-buildtools-perl-dummy = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-nativesdk-buildtools-perl-dummy = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-nativesdk-libtool = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-nativesdk-packagegroup-sdk-host = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-nativesdk-qemu-helper = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-nativesdk-postinst-intercept = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-nativesdk-qemu-helper = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-nativesdk-postinst-intercept = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ncurses = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-neard = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-neon = "Maxin B. John <maxin.john@intel.com>"
@@ -569,8 +569,8 @@ RECIPE_MAINTAINER_pn-pciutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-pcmanfm = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pcmciautils = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-perf = "Bruce Ashfield <bruce.ashfield@windriver.com>"
-RECIPE_MAINTAINER_pn-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-perl-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-perl = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-perl-native = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-piglit = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-pigz = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pinentry = "Armin Kuster <akuster808@gmail.com>"
@@ -592,7 +592,7 @@ RECIPE_MAINTAINER_pn-procps = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pseudo = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-psmisc = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-psplash = "Dengke Du <dengke.du@windriver.com>"
-RECIPE_MAINTAINER_pn-ptest-runner = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-ptest-runner = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pulseaudio = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-pulseaudio-client-conf-sato = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -637,9 +637,9 @@ RECIPE_MAINTAINER_pn-python3-pygobject = "Jose Lamego <jose.a.lamego@linux.intel
 RECIPE_MAINTAINER_pn-python3-setuptools = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-six = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-smmap = "Jose Lamego <jose.a.lamego@linux.intel.com>"
-RECIPE_MAINTAINER_pn-qemu = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-qemu-helper-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-qemuwrapper-cross = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-qemu = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-qemu-helper-native = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-qemuwrapper-cross = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-quilt = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-quilt-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-quota = "Maxin B. John <maxin.john@intel.com>"
-- 
2.12.3


