Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2275EE00AD0; Mon,  7 Aug 2017 04:58:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27B2DE00A38
	for <poky@yoctoproject.org>; Mon,  7 Aug 2017 04:58:20 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Aug 2017 04:58:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,337,1498546800"; d="scan'208";a="116519331"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 07 Aug 2017 04:58:18 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  7 Aug 2017 14:54:55 +0300
Message-Id: <20170807115455.28815-2-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.13.2
In-Reply-To: <20170807115455.28815-1-alexander.kanavin@linux.intel.com>
References: <20170807115455.28815-1-alexander.kanavin@linux.intel.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] maintainers.inc: assign newly added recipes
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
X-List-Received-Date: Mon, 07 Aug 2017 11:58:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

If you disagree with the assignments, please speak up.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index 474c41ce5b0..ca1e151ddde 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -28,7 +28,9 @@
 # Please keep this list in alphabetical order.
 #
 RECIPE_MAINTAINER_pn-acl = "Chen Qi <Qi.Chen@windriver.com>"
+RECIPE_MAINTAINER_pn-acpica = "Fathi Boudra <fathi.boudra@linaro.org>"
 RECIPE_MAINTAINER_pn-acpid = "Maxin B. John <maxin.john@intel.com>"
+RECIPE_MAINTAINER_pn-acpitests = "Fathi Boudra <fathi.boudra@linaro.org>"
 RECIPE_MAINTAINER_pn-adwaita-icon-theme = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-alsa-lib = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-alsa-plugins = "Tanu Kaskinen <tanuk@iki.fi>"
@@ -80,6 +82,7 @@ RECIPE_MAINTAINER_pn-bsd-headers = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-btrfs-tools = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-build-appliance-image = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-build-compare = "Randy Witt <randy.e.witt@linux.intel.com>"
+RECIPE_MAINTAINER_pn-build-sysroots = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-builder = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-buildtools-tarball = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-busybox = "Armin Kuster <akuster808@gmail.com>"
@@ -109,7 +112,7 @@ RECIPE_MAINTAINER_pn-consolekit = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-coreutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-cpio = "Denys Dmytriyenko <denys@ti.com>"
 RECIPE_MAINTAINER_pn-cracklib = "Armin Kuster <akuster@mvista.com>"
-RECIPE_MAINTAINER_pn-createrepo = "Hongxu Jia <hongxu.jia@windriver.com>"
+RECIPE_MAINTAINER_pn-createrepo-c = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-cronie = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-cross-localedef-native = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-cryptodev-linux = "Robert Yang <liezhi.yang@windriver.com>"
@@ -137,6 +140,7 @@ RECIPE_MAINTAINER_pn-distcc = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-distcc-config = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-dmidecode = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-dmxproto = "Armin Kuster <akuster@mvista.com>"
+RECIPE_MAINTAINER_pn-dnf = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-docbook-xml-dtd4 = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-docbook-xsl-stylesheets = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-dosfstools = "Dengke Du <dengke.du@windriver.com>"
@@ -216,8 +220,11 @@ RECIPE_MAINTAINER_pn-gnu-config = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnu-efi = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnupg = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-gnutls = "Armin Kuster <akuster@mvista.com>"
+RECIPE_MAINTAINER_pn_go = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-go-cross = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-go-helloworld = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-go-native = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-gobject-introspection = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-go-native = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-gperf = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gpgme = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-gptfdisk = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -289,6 +296,7 @@ RECIPE_MAINTAINER_pn-kexec-tools = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-keymaps = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-kmod = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-kmod-native = "Chen Qi <Qi.Chen@windriver.com>"
+RECIPE_MAINTAINER_pn-kmscube = "Carlos Rafael Giani <dv@pseudoterminal.org>"
 RECIPE_MAINTAINER_pn-l3afpad = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-lame = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-latencytop = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -308,10 +316,12 @@ RECIPE_MAINTAINER_pn-libcap-ng = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libcgroup = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libcheck = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libclass-isa-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libcomps = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libcroco = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libdaemon = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libdmx = "Armin Kuster <akuster@mvista.com>"
+RECIPE_MAINTAINER_pn-libdnf = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libdrm = "Otavio Salvador <otavio.salvador@ossystems.com.br>"
 RECIPE_MAINTAINER_pn-libdumpvalue-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libenv-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
@@ -351,6 +361,7 @@ RECIPE_MAINTAINER_pn-libnewt-python = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libnfsidmap = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libnl = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libnotify = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-libnsl2 = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-libnss-mdns = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libogg = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libomxil = "Maxin B. John <maxin.john@intel.com>"
@@ -366,6 +377,7 @@ RECIPE_MAINTAINER_pn-libpng12 = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libproxy = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpthread-stubs = "Alexander Kanavin <alexander.kanavin@intel.com>"
+RECIPE_MAINTAINER_pn-librepo = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-librsvg = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libsamplerate0 = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libsdl = "Robert Yang <liezhi.yang@windriver.com>"
@@ -536,6 +548,8 @@ RECIPE_MAINTAINER_pn-oprofile = "Alexander Kanavin <alexander.kanavin@intel.com>
 RECIPE_MAINTAINER_pn-orc = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-os-release = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-ossp-uuid = "Alexander Kanavin <alexander.kanavin@intel.com>"
+RECIPE_MAINTAINER_pn-ovmf = "Ricardo Neri <ricardo.neri-calderon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-ovmf-shell-image = "Ricardo Neri <ricardo.neri-calderon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-p11-kit = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-package-index = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-pango = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -606,6 +620,7 @@ RECIPE_MAINTAINER_pn-python3-distribute = "Jose Lamego <jose.a.lamego@linux.inte
 RECIPE_MAINTAINER_pn-python3-docutils = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-git = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-gitdb = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-iniparse = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-mako = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-nose = "Jose Lamego <jose.a.lamego@linux.intel.com>"
@@ -732,6 +747,7 @@ RECIPE_MAINTAINER_pn-weston = "Denys Dmytriyenko <denys@ti.com>"
 RECIPE_MAINTAINER_pn-weston-init = "Denys Dmytriyenko <denys@ti.com>"
 RECIPE_MAINTAINER_pn-wget = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-which = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-wic-tools = "Ed Bartosh <ed.bartosh@linux.intel.com>"
 RECIPE_MAINTAINER_pn-wireless-tools = "Changhyeok Bae <changhyeok.bae@lge.com>"
 RECIPE_MAINTAINER_pn-wpa-supplicant = "Changhyeok Bae <changhyeok.bae@lge.com>"
 RECIPE_MAINTAINER_pn-x11-common = "Armin Kuster <akuster@mvista.com>"
-- 
2.13.2


