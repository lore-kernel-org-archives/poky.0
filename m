Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A3BE01466
	for <poky@yoctoproject.org>; Wed, 10 Jul 2013 04:03:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jul 2013 04:05:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1035,1363158000"; d="scan'208";a="367965690"
Received: from ema-vostro-460.rb.intel.com ([10.237.105.147])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2013 04:03:47 -0700
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 10 Jul 2013 14:11:17 +0300
Message-Id: <4cc1e5f7704fb51463cac244430411c603c4d7cb.1373454481.git.emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1373454481.git.emilia.maria.silvia.ciobanu@intel.com>
References: <cover.1373454481.git.emilia.maria.silvia.ciobanu@intel.com>
Subject: [PATCH 1/1] package_regex.inc: Changes in regexes
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
X-List-Received-Date: Wed, 10 Jul 2013 11:03:51 -0000

Updated/Modified regexes for the following packages:
	* bjam-native
	* chkconfig-alternatives-native
	* chrpath
	* cups
	* kern-tools-native
	* linux-libc-headers-yocto
	* minicom
	* prelink

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |   15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 8ce1049..42d17e5 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -23,19 +23,21 @@ REGEX_pn-beecrypt = "[hH][rR][eE][fF]=\"/projects/beecrypt/files/beecrypt/(?P<pv
 REGEX_URI_pn-beecrypt-native = "http://sourceforge.net/projects/beecrypt/files/beecrypt/"
 REGEX_pn-beecrypt-native = "[hH][rR][eE][fF]=\"/projects/beecrypt/files/beecrypt/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_pn-bdwgc = "[hH][rR][eE][fF]=\"gc\-(?P<pver>((\d+[a-z]?[\.\-_]*)+))\.tar\.gz\""
+REGEX_URI_pn-bjam-native = "http://sourceforge.net/projects/boost/files/boost/"
 REGEX_URI_pn-blktool = "ftp://ftp.debian.org/debian/pool/main/b/blktool/"
 REGEX_pn-blktool = "[hH][rR][eE][fF]=\"ftp://ftp.debian.org:21/debian/pool/main/b/blktool/blktool_(?P<pver>((\d+[\.\-_]*)+))\.(diff|orig\.tar)\.gz\""
 REGEX_URI_pn-boost = "http://sourceforge.net/projects/boost/files/boost/"
 REGEX_pn-boost = "[hH][rR][eE][fF]=\"/projects/boost/files/boost/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_pn-btrfs-tools = "(\d+(\.\d+)*(\-rc\d+)*)"
+REGEX_pn-chkconfig-alternatives-native = "chkconfig\-(?P<pver>((\d+[\.\-_]*)+))"
 REGEX_URI_pn-chrpath = "http://alioth.debian.org/frs/?group_id=31052"
-REGEX_pn-chrpath = "[hH][rR][eE][fF]=\"/frs/download.php/3661/chrpath-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
+REGEX_pn-chrpath = "[hH][rR][eE][fF]=\"/frs/download.php/file/\d+/chrpath-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-console-tools = "http://sourceforge.net/projects/lct/files/console-tools/"
 REGEX_pn-console-tools = "[hH][rR][eE][fF]=\"/projects/lct/files/console-tools/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-cracklib = "http://sourceforge.net/projects/cracklib/files/cracklib/"
 REGEX_pn-cracklib = "[hH][rR][eE][fF]=\"/projects/cracklib/files/cracklib/(?P<pver>((\d+[\.\-_]*)+))/\""
-REGEX_URI_pn-cups = "ftp://ftp.easysw.com/pub/cups/"
-REGEX_pn-cups = "[hH][rR][eE][fF]=\"ftp://ftp.easysw.com:21/pub/cups/(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_URI_pn-cups = "http://www.cups.org/software.php"
+REGEX_pn-cups = "<tt>cups\-(?P<pver>((\d+[\.\-_]*)+))\-source\.tar\.gz<\/tt>"
 REGEX_URI_pn-cwautomacros = "http://sourceforge.net/projects/cwautomacros.berlios/files/"
 REGEX_pn-cwautomacros = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/cwautomacros.berlios/files/cwautomacros\-(?P<pver>(\d+))\.tar\.bz2\/download""
 REGEX_URI_pn-cwautomacros-native = "http://sourceforge.net/projects/cwautomacros.berlios/files/"
@@ -76,6 +78,7 @@ REGEX_URI_pn-gcc-crosssdk = "ftp://ftp.gnu.org/gnu/gcc/"
 REGEX_pn-gcc-crosssdk = "[hH][rR][eE][fF]=\"ftp://ftp.gnu.org:21/gnu/gcc/gcc\-(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-glew = "http://sourceforge.net/projects/glew/files/glew"
 REGEX_pn-glew  = " [hH][rR][eE][fF]=\"/projects/glew/files/glew/(?P<pver>((\d+[\.\-_]*)+))/\""
+#REGEX_pn-gnutls = "ftp://ftp.gnutls.org/gcrypt/gnutls/"
 REGEX_URI_pn-hdparm = "http://sourceforge.net/projects/hdparm/files/hdparm/"
 REGEX_pn-hdparm = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/hdparm/files/hdparm/hdparm-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download\""
 REGEX_URI_pn-icu = "http://site.icu-project.org/download"
@@ -88,6 +91,7 @@ REGEX_URI_pn-js = "http://ftp.mozilla.org/pub/mozilla.org/js/"
 REGEX_pn-js = "[hH][rR][eE][fF]=\"js-?(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-kconfig-frontends = "http://ymorin.is-a-geek.org/download/kconfig-frontends/"
 REGEX_pn-kconfig-frontends = "[hH][rR][eE][fF]=\'kconfig\-frontends\-(?P<pver>((\d+[\.\-]*)+))\.tar\.xz\'"
+GIT_REGEX_pn-kern-tools-native = "HEEEAD"
 REGEX_URI_pn-lame = "http://sourceforge.net/projects/lame/files/lame/"
 REGEX_pn-lame = "[hH][rR][eE][fF]=\"/projects/lame/files/lame/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-less  = "http://www.greenwoodsoftware.com/less/download.html"
@@ -144,6 +148,7 @@ REGEX_URI_pn-libusb1 = "http://sourceforge.net/projects/libusb/files/libusb-1.0/
 REGEX_pn-libusb1 = "[hH][rR][eE][fF]=\"/projects/libusb/files/libusb-1.0/libusb-(?P<pver>((\d+[\.\-_]*)+))/""
 REGEX_URI_pn-libvorbis = "http://downloads.xiph.org/releases/vorbis/"
 REGEX_pn-libvorbis = "[hH][rR][eE][fF]=\"libvorbis-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
+REGEX_pn-linux-libc-headers-yocto = "v((?P<pver>((\d+[\.\-_]*)+)))"
 REGEX_URI_pn-lrzsz = "http://ohse.de/uwe/software/lrzsz.html"
 REGEX_URI_pn-lsb = "http://sourceforge.net/projects/lsb/files/lsb_release/"
 REGEX_pn-lsb = "[hH][rR][eE][fF]=\"/projects/lsb/files/lsb_release/(?P<pver>((\d+[\.\-_]*)+))/\""
@@ -156,7 +161,7 @@ REGEX_pn-menu-cache = "[hH][rR][eE][fF]=\"/projects/lxde/files/menu\-cache/menu-
 REGEX_URI_pn-mesa-demos = "ftp://ftp.freedesktop.org/pub/mesa/demos/"
 REGEX_pn-mesa-demos = "[hH][rR][eE][fF]=\"ftp://ftp.freedesktop.org:21/pub/mesa/demos/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-minicom = "https://alioth.debian.org/frs/?group_id=30018"
-REGEX_pn-minicom = "[hH][rR][eE][fF]=\"/frs/download.php/\d+/minicom\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
+REGEX_pn-minicom = "[hH][rR][eE][fF]=\"/frs/download.php/file/\d+/minicom\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-mingetty = "http://sourceforge.net/projects/mingetty/files/mingetty"
 REGEX_pn-mingetty = "[hH][rR][eE][fF]=\"/projects/mingetty/files/mingetty/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-mpeg2dec = "http://libmpeg2.sourceforge.net/downloads.html"
@@ -184,6 +189,8 @@ REGEX_pn-pcmanfm = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/pcmanfm/f
 REGEX_URI_pn-procps = "http://procps.sourceforge.net/download.html"
 REGEX_pn-procps = "[hH][rR][eE][fF]=\"procps\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-powertop = "https://01.org/powertop/downloads"
+GIT_REGEX_pn-prelink = "cross_prelink"
+REGEX_pn-prelink = "(?P<pver>cross_prelink)"
 REGEX_URI_pn-psmisc = "http://sourceforge.net/projects/psmisc/files/psmisc/"
 REGEX_pn-psmisc = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/psmisc/files/psmisc/psmisc\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz/download\""
 REGEX_URI_pn-python-argparse = "https://code.google.com/p/argparse/downloads/list"
-- 
1.7.9.5


