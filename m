Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3283E00845; Thu, 22 Jan 2015 14:47:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 169F4E00782
	for <poky@yoctoproject.org>; Thu, 22 Jan 2015 14:47:08 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 22 Jan 2015 14:43:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,451,1418112000"; d="scan'208";a="674433580"
Received: from localhost.jf.intel.com ([10.7.201.167])
	by orsmga002.jf.intel.com with ESMTP; 22 Jan 2015 14:47:08 -0800
From: Randy Witt <randy.e.witt@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 22 Jan 2015 14:46:52 -0800
Message-Id: <1421966812-39665-1-git-send-email-randy.e.witt@linux.intel.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [PATCH] maintainers.inc: Update some items for Randy Witt.
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
X-List-Received-Date: Thu, 22 Jan 2015 22:47:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Randy Witt <randy.e.witt@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 28 +++++++++++++-------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index e338b82..3a55d1e 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -158,7 +158,7 @@ RECIPE_MAINTAINER_pn-eglibc-scripts = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-elfutils = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-enchant = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-encodings = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-ethtool = "Paul Eggleton <paul.eggleton@linux.intel.com>"
+RECIPE_MAINTAINER_pn-ethtool = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-expat = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-file = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-findutils = "Chen Qi <Qi.Chen@windriver.com>"
@@ -292,7 +292,7 @@ RECIPE_MAINTAINER_pn-libcap = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-libcgroup = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libcheck = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libclass-isa-perl = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libcroco = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libdaemon = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libdmx = "Saul Wold <sgw@linux.intel.com>"
@@ -328,7 +328,7 @@ RECIPE_MAINTAINER_pn-libmatchbox = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libmpc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libnewt = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libnewt-python = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-libnfsidmap = "Paul Eggleton <paul.eggleton@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libnfsidmap = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libnl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libnotify = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libnss-mdns = "Saul Wold <sgw@linux.intel.com>"
@@ -337,13 +337,13 @@ RECIPE_MAINTAINER_pn-liboil = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libomxil = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libowl-av = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libowl = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-libpam = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-libpam = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libpcap = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libpciaccess = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libpcre = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-libpfm4 = "Matthew McClintock <msm@freescale.com>"
-RECIPE_MAINTAINER_pn-libpng = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-libpng12 = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-libpng = "Randy Witt <randy.e.witt@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libpng12 = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libproxy = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libpthread-stubs = "Saul Wold <sgw@linux.intel.com>"
@@ -354,14 +354,14 @@ RECIPE_MAINTAINER_pn-libsm = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libsndfile1 = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libsoup-2.4 = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libsoup = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-libtasn1 = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-libtasn1 = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libtelepathy = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libtheora = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libtimedate-perl = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-libtimedate-perl = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libtirpc = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libtool = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-libunique = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libunistring = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-libunistring = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-liburcu = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-liburi-perl = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-libusb1 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
@@ -449,7 +449,7 @@ RECIPE_MAINTAINER_pn-matchbox-terminal = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-theme-sato = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-wm = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mc = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-mdadm = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-mdadm = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-menu-cache = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mesa = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mesa-demos = "Ross Burton <ross.burton@intel.com>"
@@ -473,7 +473,7 @@ RECIPE_MAINTAINER_pn-mpfr = "Richard Purdie <richard.purdie@linuxfoundation.org>
 RECIPE_MAINTAINER_pn-msmtp = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mtdev = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mtd-utils = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-mtools = "Paul Eggleton <paul.eggleton@linux.intel.com>"
+RECIPE_MAINTAINER_pn-mtools = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mx-1.0 = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-nasm = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-nativesdk-packagegroup-qte-toolchain-host = "Paul Eggleton <paul.eggleton@linux.intel.com>"
@@ -564,7 +564,7 @@ RECIPE_MAINTAINER_pn-pth = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pulseaudio = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-puzzles = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-python = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-python-async = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-async = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-dbus = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-distribute = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-docutils = "Richard Purdie <richard.purdie@linuxfoundation.org>"
@@ -654,7 +654,7 @@ RECIPE_MAINTAINER_pn-sysvinit = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-taglib = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-tar-replacement-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tar = "Chen Qi <Qi.Chen@windriver.com>"
-RECIPE_MAINTAINER_pn-tcf-agent = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-tcf-agent = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tcl = "Chong Lu <Chong.Lu@windriver.com>"
 RECIPE_MAINTAINER_pn-tcp-wrappers = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tcp-wrappers = "Saul Wold <sgw@linux.intel.com>"
@@ -685,7 +685,7 @@ RECIPE_MAINTAINER_pn-unzip = "Alejandro Hernandez <alejandro.hernandez@linux.int
 RECIPE_MAINTAINER_pn-update-rc.d = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-usbinit = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-usbutils = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-unfs3 = "Paul Eggleton <paul.eggleton@linux.intel.com>"
+RECIPE_MAINTAINER_pn-unfs3 = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-util-linux = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-util-macros = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-v86d = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-- 
1.9.3


