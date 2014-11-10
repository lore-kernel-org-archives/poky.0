Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97E49E0087C; Mon, 10 Nov 2014 07:45:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C77E9E0080C
	for <poky@yoctoproject.org>; Mon, 10 Nov 2014 07:44:59 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 10 Nov 2014 07:38:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,353,1413270000"; d="scan'208";a="620009447"
Received: from smoffitt-mobl.ger.corp.intel.com (HELO
	swold-linux.amr.corp.intel.com) ([10.255.13.72])
	by fmsmga001.fm.intel.com with ESMTP; 10 Nov 2014 07:44:57 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 10 Nov 2014 07:44:57 -0800
Message-Id: <1415634297-5665-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Subject: [PATCH v2] maintainers: Update per replies on OE-Core
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
X-List-Received-Date: Mon, 10 Nov 2014 15:45:05 -0000
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
fixed Paul Barker's opkg* entries

 meta-yocto/conf/distro/include/maintainers.inc | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index b2554fb..0121791 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -279,7 +279,7 @@ RECIPE_MAINTAINER_pn-less = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-liba52 = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libacpi = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libaio = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libarchive = "Kai Kang <kai.kang@windriver.com>"
+RECIPE_MAINTAINER_pn-libarchive = "Paul Barker <paul@paulbarker.me.uk>"
 RECIPE_MAINTAINER_pn-libart-lgpl = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libassuan = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libatomics-ops = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -297,6 +297,7 @@ RECIPE_MAINTAINER_pn-libdrm = "Richard Purdie <richard.purdie@linuxfoundation.or
 RECIPE_MAINTAINER_pn-libdumpvalue-perl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libenv-perl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-liberation-fonts = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-libevdev = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libevent = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libexif = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libfakekey = "Ross Burton <ross.burton@intel.com>"
@@ -321,6 +322,7 @@ RECIPE_MAINTAINER_pn-libmad = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libmatchbox = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-libmpc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-libnewt = "Hongxu Jia <hongxu.jia@windriver.com>"
+RECIPE_MAINTAINER_pn-libnewt-python = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libnfsidmap = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libnl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libnotify = "Ross Burton <ross.burton@intel.com>"
@@ -420,7 +422,7 @@ RECIPE_MAINTAINER_pn-lttng-tools = "Richard Purdie <richard.purdie@linuxfoundati
 RECIPE_MAINTAINER_pn-lttng-ust = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-lzop = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-lzo = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-lz4 = "Armin Kuster <akuster@mvista.com>"
+RECIPE_MAINTAINER_pn-lz4 = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-m4 = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-mailx = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-make = "Robert Yang <liezhi.yang@windriver.com>"
@@ -487,10 +489,10 @@ RECIPE_MAINTAINER_pn-openjade = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-opensp = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-openssh = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-openssl = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-opkg-collateral = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-opkg-config-base = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-opkg = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-opkg-utils = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-opkg-collateral = "Paul Barker <paul@paulbarker.me.uk>"
+RECIPE_MAINTAINER_pn-opkg-config-base = "Paul Barker <paul@paulbarker.me.uk>"
+RECIPE_MAINTAINER_pn-opkg = "Paul Barker <paul@paulbarker.me.uk>"
+RECIPE_MAINTAINER_pn-opkg-utils = "Paul Barker <paul@paulbarker.me.uk>"
 RECIPE_MAINTAINER_pn-oprofile = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-oprofileui = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-oprofileui-server = "Saul Wold <sgw@linux.intel.com>"
@@ -533,6 +535,7 @@ RECIPE_MAINTAINER_pn-perf = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-perl = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-piglit = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-pigz = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-pinentry = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-pixman = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-pkgconfig = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pm-utils = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -560,6 +563,9 @@ RECIPE_MAINTAINER_pn-python-distribute = "Richard Purdie <richard.purdie@linuxfo
 RECIPE_MAINTAINER_pn-python-docutils = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-gst = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-imaging = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-python-mako = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-python-nose = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-python-numpy = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-python-pycairo = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-pycurl = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-pygobject = "Richard Purdie <richard.purdie@linuxfoundation.org>"
@@ -569,6 +575,7 @@ RECIPE_MAINTAINER_pn-python-scons = "Richard Purdie <richard.purdie@linuxfoundat
 RECIPE_MAINTAINER_pn-python-setuptools = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-smartpm = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3 = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-python3-distribute = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-native = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-qemu = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-qmmp = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -710,6 +717,7 @@ RECIPE_MAINTAINER_pn-xf86-input-vmmouse = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xf86miscproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xf86-video-fbdev = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xf86-video-intel = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-xf86-video-modesetting = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xf86-video-omapfb = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xf86-video-omap = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xf86-video-vesa = "Ross Burton <ross.burton@intel.com>"
@@ -723,6 +731,7 @@ RECIPE_MAINTAINER_pn-xinput = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xinput-calibrator = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xkbcomp = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xkeyboard-config = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-xmlto = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-xmodmap = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xorg-minimal-fonts = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xprop = "Ross Burton <ross.burton@intel.com>"
-- 
1.8.3.1


