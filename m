Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2783E00D1E; Mon,  8 Aug 2016 07:09:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC00FE009FD
	for <poky@yoctoproject.org>; Mon,  8 Aug 2016 07:09:43 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 08 Aug 2016 07:09:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,490,1464678000"; d="scan'208";a="152391735"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.49])
	by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2016 07:09:43 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  8 Aug 2016 17:08:25 +0300
Message-Id: <1470665305-19889-1-git-send-email-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [PATCH] maintainers.inc: add recently added recipes
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
X-List-Received-Date: Mon, 08 Aug 2016 14:09:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Also fix up a few typos, and reassign piglit.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index f264440..f3bc9fd 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -228,7 +228,7 @@ RECIPE_MAINTAINER_pn-glib-networking = "Jussi Kukkonen <jussi.kukkonen@intel.com
 RECIPE_MAINTAINER_pn-glibc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-glibc-initial = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-glibc-locale = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-glibc-mrace = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-glibc-mtrace = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-glibc-scripts = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-glproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gmp = "Robert Yang <liezhi.yang@windriver.com>"
@@ -236,6 +236,7 @@ RECIPE_MAINTAINER_pn-gnome-common = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-desktop-testing = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-desktop3 = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-doc-utils = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
+RECIPE_MAINTAINER_pn-gnome-themes-standard = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gnu-config = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnu-efi = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnupg = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -276,7 +277,7 @@ RECIPE_MAINTAINER_pn-hicolor-icon-theme = "Jussi Kukkonen <jussi.kukkonen@intel.
 RECIPE_MAINTAINER_pn-hostap-conf = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-hostap-utils = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-hwlatdetect = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-i2ctools = "Maxin B. John <maxin.john@intel.com>"
+RECIPE_MAINTAINER_pn-i2c-tools = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-icecc-create-env-native = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-icon-naming-utils = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-icu = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -287,8 +288,8 @@ RECIPE_MAINTAINER_pn-initramfs-framework = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-initramfs-live-boot = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-initramfs-live-install = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-initramfs-live-install-efi = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-initramfs-live-install-efi-tests = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-initramfs-live-install-tests = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-initramfs-live-install-efi-testfs = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-initramfs-live-install-testfs = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-initscripts = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-inputproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-intltool = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -311,10 +312,10 @@ RECIPE_MAINTAINER_pn-kexec-tools = "Alexander Kanavin <alexander.kanavin@intel.c
 RECIPE_MAINTAINER_pn-keymaps = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-kmod = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-kmod-native = "Chen Qi <Qi.Chen@windriver.com>"
+RECIPE_MAINTAINER_pn-l3afpad = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-lame = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-latencytop = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-ldconfig-native = "Khem Raj <raj.khem@gmail.com>"
-RECIPE_MAINTAINER_pn-leafpad = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-less = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-liba52 = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-libacpi = "Maxin B. John <maxin.john@intel.com>"
@@ -595,7 +596,7 @@ RECIPE_MAINTAINER_pn-pcmciautils = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-perf = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-perl-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-piglit = "Alexander Kanavin <alexander.kanavin@intel.com>"
+RECIPE_MAINTAINER_pn-piglit = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-pigz = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-pinentry = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-pixman = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -623,9 +624,7 @@ RECIPE_MAINTAINER_pn-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-python = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-async = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-dbus = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-distribute = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-docutils = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-git = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-gitdb = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-imaging = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
@@ -634,9 +633,9 @@ RECIPE_MAINTAINER_pn-python-native = "Alejandro Hernandez <alejandro.hernandez@l
 RECIPE_MAINTAINER_pn-python-nose = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-numpy = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pexpect = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-ptyprocess = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pycairo = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pycurl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-pygobject = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pygtk = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pyrex = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-scons = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
@@ -646,13 +645,17 @@ RECIPE_MAINTAINER_pn-python-smartpm = "Alejandro Hernandez <alejandro.hernandez@
 RECIPE_MAINTAINER_pn-python-smmap = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-async = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-dbus = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-distribute = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-docutils = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-git = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-gitdb = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-mako = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-nose = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-numpy = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-pip = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-pygobject = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-setuptools = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-smmap = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu = "Aníbal Limón <anibal.limon@linux.intel.com>"
@@ -717,6 +720,8 @@ RECIPE_MAINTAINER_pn-syslinux = "Alexander Kanavin <alexander.kanavin@intel.com>
 RECIPE_MAINTAINER_pn-sysprof = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-sysstat = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-systemd = "Chen Qi <Qi.Chen@windriver.com>"
+RECIPE_MAINTAINER_pn-systemd-boot = "Chen Qi <Qi.Chen@windriver.com>"
+RECIPE_MAINTAINER_pn-systemd-bootchart = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-systemd-compat-units = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-systemd-serialgetty = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-systemd-systemctl-native = "Chen Qi <Qi.Chen@windriver.com>"
@@ -729,6 +734,7 @@ RECIPE_MAINTAINER_pn-tar = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-tcf-agent = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tcl = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tcp-wrappers = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-testexport-tarball = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-texi2html = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-texinfo = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-texinfo-dummy-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-- 
2.8.1


