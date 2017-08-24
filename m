Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 402EAE00BA2; Thu, 24 Aug 2017 06:54:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA2D9E0090A
	for <poky@yoctoproject.org>; Thu, 24 Aug 2017 06:54:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Aug 2017 06:54:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,421,1498546800"; d="scan'208";a="1187724234"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2017 06:54:03 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 24 Aug 2017 16:50:56 +0300
Message-Id: <20170824135056.4462-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.14.1
MIME-Version: 1.0
Subject: [PATCH] maintainers.inc: assign newly added recipes
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
X-List-Received-Date: Thu, 24 Aug 2017 13:54:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Speak up if you disagree with these.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index ff24e95429a..52f55bfd901 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -46,12 +46,14 @@ RECIPE_MAINTAINER_pn-apt-native = "Aníbal Limón <anibal.limon@linux.intel.com>
 RECIPE_MAINTAINER_pn-argp-standalone = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-asciidoc = "Dengke Du <dengke.du@windriver.com>"
 RECIPE_MAINTAINER_pn-aspell = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-assimp = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-at = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-at-spi2-atk = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-at-spi2-core = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-atk = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-attr = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-autoconf = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-autoconf-archive = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-autogen-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-automake = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-avahi = "Dengke Du <dengke.du@windriver.com>"
@@ -242,6 +244,7 @@ RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-bad = "Maxin B. John <maxin.john@intel
 RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-base = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-good = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-ugly = "Maxin B. John <maxin.john@intel.com>"
+RECIPE_MAINTAINER_pn-gstreamer1.0-python = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-gstreamer1.0-rtsp-server = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-gstreamer1.0-vaapi = "Wei Tee Ng <wei.tee.ng@intel.com>"
 RECIPE_MAINTAINER_pn-gtk+ = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -402,6 +405,7 @@ RECIPE_MAINTAINER_pn-libusb-compat = "Leonardo Sandoval <leonardo.sandoval.gonza
 RECIPE_MAINTAINER_pn-libusb1 = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libuser = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libva = "Wei Tee Ng <wei.tee.ng@intel.com>"
+RECIPE_MAINTAINER_pn-libva-utils = "Wei Tee Ng <wei.tee.ng@intel.com>"
 RECIPE_MAINTAINER_pn-libvorbis = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libwebp = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libx11 = "Armin Kuster <akuster@mvista.com>"
@@ -454,6 +458,7 @@ RECIPE_MAINTAINER_pn-linux-yocto = "Bruce Ashfield <bruce.ashfield@windriver.com
 RECIPE_MAINTAINER_pn-linux-yocto-dev = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-rt = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-tiny = "Bruce Ashfield <bruce.ashfield@windriver.com>"
+RECIPE_MAINTAINER_pn-llvm = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-logrotate = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-lrzsz = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-lsb = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -532,6 +537,7 @@ RECIPE_MAINTAINER_pn-netbase = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-nettle = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-nfs-export-root = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-nfs-utils = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-ninja = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-npth = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-nspr = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-nss = "Armin Kuster <akuster@mvista.com>"
@@ -626,6 +632,7 @@ RECIPE_MAINTAINER_pn-python3-native = "Alejandro Hernandez <alejandro.hernandez@
 RECIPE_MAINTAINER_pn-python3-nose = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-numpy = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-pip = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-pycairo = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-pygobject = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-setuptools = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-six = "Jose Lamego <jose.a.lamego@linux.intel.com>"
@@ -637,6 +644,7 @@ RECIPE_MAINTAINER_pn-quilt = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-quilt-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-quota = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-randrproto = "Armin Kuster <akuster@mvista.com>"
+RECIPE_MAINTAINER_pn-re2c = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-readline = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-recordproto = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-remake = "Robert Yang <liezhi.yang@windriver.com>"
@@ -737,6 +745,7 @@ RECIPE_MAINTAINER_pn-videoproto = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-volatile-binds = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-vte = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-vulkan = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-vulkan-demos = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-waffle = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-watchdog = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-watchdog-config = "Alexander Kanavin <alexander.kanavin@intel.com>"
-- 
2.14.1


