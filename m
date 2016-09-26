Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA89EE0081E; Mon, 26 Sep 2016 12:09:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDF3E007D3
	for <poky@yoctoproject.org>; Mon, 26 Sep 2016 12:09:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 26 Sep 2016 12:09:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,401,1470726000"; d="scan'208";a="1056878348"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.48])
	by orsmga002.jf.intel.com with ESMTP; 26 Sep 2016 12:09:11 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 26 Sep 2016 14:12:42 -0500
Message-Id: <beaf64fa0db6712376c8eff4773a098f558f37dd.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
In-Reply-To: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
MIME-Version: 1.0
Subject: [PATCH 1/3] maintainers.inc: Change perl maintainer
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
X-List-Received-Date: Mon, 26 Sep 2016 19:09:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Anibal agreed to maintain most perl related recipes (include perl and
perl-native).

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 34 +++++++++++++--------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index 7faf264..bbcfacb 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -331,14 +331,14 @@ RECIPE_MAINTAINER_pn-libcap = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libcap-ng = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libcgroup = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libcheck = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-libclass-isa-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libclass-isa-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libcroco = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libdaemon = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libdmx = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libdrm = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libdumpvalue-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libenv-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libdumpvalue-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libenv-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libepoxy = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-liberation-fonts = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-liberror-perl = "Robert Yang <liezhi.yang@windriver.com>"
@@ -347,7 +347,7 @@ RECIPE_MAINTAINER_pn-libevent = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libexif = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libfakekey = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libffi = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-libfile-checktree-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libfile-checktree-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libfm = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libfm-extra = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libfontenc = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -359,7 +359,7 @@ RECIPE_MAINTAINER_pn-libglade = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libglu = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libgpg-error = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libgudev = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libi18n-collate-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libi18n-collate-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libical = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libice = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libiconv = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -386,7 +386,7 @@ RECIPE_MAINTAINER_pn-libpcre = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libpfm4 = "Matthew McClintock <msm@freescale.com>"
 RECIPE_MAINTAINER_pn-libpng = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpng12 = "Maxin B. John <maxin.john@intel.com>"
-RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libproxy = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libpthread-stubs = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-librsvg = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -400,7 +400,7 @@ RECIPE_MAINTAINER_pn-libsolv = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libsoup-2.4 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libtasn1 = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libtheora = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-libtimedate-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libtimedate-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libtirpc = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libtool = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libtool-cross = "Robert Yang <liezhi.yang@windriver.com>"
@@ -408,7 +408,7 @@ RECIPE_MAINTAINER_pn-libtool-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libunistring = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libunwind = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-liburcu = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-liburi-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-liburi-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libusb-compat = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libusb1 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libuser = "Robert Yang <liezhi.yang@windriver.com>"
@@ -432,12 +432,12 @@ RECIPE_MAINTAINER_pn-libxi = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libxinerama = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libxkbcommon = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libxkbfile = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libxml-namespacesupport-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-parser-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-sax-base-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-sax-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libxml-simple-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-namespacesupport-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-parser-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-sax-base-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-sax-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libxml-simple-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libxml2 = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libxmu = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libxpm = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -596,8 +596,8 @@ RECIPE_MAINTAINER_pn-pciutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-pcmanfm = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pcmciautils = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-perf = "Bruce Ashfield <bruce.ashfield@windriver.com>"
-RECIPE_MAINTAINER_pn-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-perl-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-perl = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-perl-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-piglit = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-pigz = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pinentry = "Armin Kuster <akuster808@gmail.com>"
-- 
2.1.4


