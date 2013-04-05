Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97BC7E014F4
	for <poky@yoctoproject.org>; Fri,  5 Apr 2013 08:06:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Apr 2013 08:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,415,1363158000"; d="scan'208";a="317433478"
Received: from ema-vostro-460.rb.intel.com ([10.237.105.32])
	by fmsmga002.fm.intel.com with ESMTP; 05 Apr 2013 08:05:42 -0700
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  5 Apr 2013 18:11:07 +0300
Message-Id: <1365174667-8496-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] package_regex.inc: add new regexes
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
X-List-Received-Date: Fri, 05 Apr 2013 15:06:05 -0000

	Added regexes for packages:
		* fotowall
		* gcc*
		* libacpi
		* libarchive
		* libgcc
		* libmpc
		* lrzsz
		* mesa-demos
		* powertop
		* python-argparse

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |   21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index aff4bdd..8ce1049 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -60,10 +60,20 @@ REGEX_pn-flac = "[hH][rR][eE][fF]=\"/projects/flac/files/flac-linux-i386/flac\-(
 REGEX_URI_pn-flex = "http://sourceforge.net/projects/flex/files/"
 REGEX_pn-flex = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/flex/files/flex-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download\""
 REGEX_pn-foomatic-filters = "[hH][rR][eE][fF]=\"foomatic-filters-(?P<pver>((\d|\d\d)\.*)+)\.tar\.gz\""
+REGEX_URI_pn-fotowall = "https://code.google.com/p/fotowall/downloads/list"
+REGEX_pn-fotowall = "[hH][rR][eE][fF]=\"//fotowall.googlecode.com/files/[F|f]otowall\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.bz2\""
 REGEX_URI_pn-freetype = "http://sourceforge.net/projects/freetype/files/freetype2"
 REGEX_pn-freetype = "[hH][rR][eE][fF]=\"/projects/freetype/files/freetype\d/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-freetype-native = "http://sourceforge.net/projects/freetype/files/freetype2"
 REGEX_pn-freetype-native = "[hH][rR][eE][fF]=\"/projects/freetype/files/freetype\d/(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_URI_pn-gcc-cross-canadian-i586 = "ftp://ftp.gnu.org/gnu/gcc/"
+REGEX_pn-gcc-cross-canadian-i586 = "[hH][rR][eE][fF]=\"ftp://ftp.gnu.org:21/gnu/gcc/gcc\-(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_URI_pn-gcc-cross-initial = "ftp://ftp.gnu.org/gnu/gcc/"
+REGEX_pn-gcc-cross-initial = "[hH][rR][eE][fF]=\"ftp://ftp.gnu.org:21/gnu/gcc/gcc\-(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_URI_pn-gcc-runtime = "ftp://ftp.gnu.org/gnu/gcc/"
+REGEX_pn-gcc-runtime = "[hH][rR][eE][fF]=\"ftp://ftp.gnu.org:21/gnu/gcc/gcc\-(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_URI_pn-gcc-crosssdk = "ftp://ftp.gnu.org/gnu/gcc/"
+REGEX_pn-gcc-crosssdk = "[hH][rR][eE][fF]=\"ftp://ftp.gnu.org:21/gnu/gcc/gcc\-(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-glew = "http://sourceforge.net/projects/glew/files/glew"
 REGEX_pn-glew  = " [hH][rR][eE][fF]=\"/projects/glew/files/glew/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-hdparm = "http://sourceforge.net/projects/hdparm/files/hdparm/"
@@ -84,13 +94,18 @@ REGEX_URI_pn-less  = "http://www.greenwoodsoftware.com/less/download.html"
 REGEX_pn-less = "[hH][rR][eE][fF]=\"less\-(?P<pver>(\d+))\.tar\.gz\""
 REGEX_URI_pn-liba52 = "http://liba52.sourceforge.net/downloads.html"
 REGEX_pn-liba52 = "[hH][rR][eE][fF]=\"/files/a52\w*\-(?P<pver>((\d+[a-z]?[\.\-_]*)+))\.tar\.gz\""
+REGEX_URI_pn-libacpi = "http://www.ngolde.de/libacpi.html"
 REGEX_URI_pn-libaio = "http://ftp.debian.org/debian/pool/main/liba/libaio/"
 REGEX_pn-libaio = "[hH][rR][eE][fF]=\"libaio_(?P<pver>((\d+[\.\-_]*)+)).orig.tar.gz\""
+REGEX_URI_pn-libarchive = "http://www.libarchive.org/"
+REGEX_pn-libarchive = "[hH][rR][eE][fF]=\"downloads/libarchive\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-libcgroup = "http://sourceforge.net/projects/libcg/files/libcgroup/"
 #REGEX_pn-libcgroup = "[hH][rR][eE][fF]=\"/projects/libcg/files/libcgroup/v?(?P<pver>((\.?\d+[\.\-_]*)+(rc\d?)*)+)/\""
 REGEX_pn-libcgroup = "[hH][rR][eE][fF]=\"/projects/libcg/files/libcgroup/v?(?P<pver>((\.?\d+[\.\-_]*))+)/\""
 REGEX_URI_pn-libcheck = "http://sourceforge.net/projects/check/files/check/"
 REGEX_pn-libcheck = "[hH][rR][eE][fF]=\"/projects/check/files/check/(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_URI_pn-libgcc = "ftp://ftp.gnu.org/gnu/gcc/"
+REGEX_pn-libgcc = "[hH][rR][eE][fF]=\"ftp://ftp.gnu.org:21/gnu/gcc/gcc\-(?P<pver>((\d+[\.\-_]*)+))/\""
 #REGEX_URI_pn-libevent = "http://sourceforge.net/projects/levent/files/libevent/libevent-2.0/"
 REGEX_URI_pn-libevent = "http://libevent.org/"
 #REGEX_pn-libevent = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/levent/files/libevent/libevent-2.0/libevent-(?P<pver>((\d+[\.\-_]*)+))\-stable\.tar\.gz/download\""
@@ -105,6 +120,7 @@ REGEX_URI_pn-libmad = "http://sourceforge.net/projects/mad/files/libmad/"
 REGEX_pn-libmad = "[hH][rR][eE][fF]=\"/projects/mad/files/libmad/(?P<pver>((\d+[\.\-_]*)+([a-z]?)))/\""
 REGEX_URI_pn-libogg = "http://downloads.xiph.org/releases/ogg/"
 REGEX_pn-libogg = "[hH][rR][eE][fF]=\"libogg\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
+REGEX_URI_pn-libmpc = "http://www.multiprecision.org/index.php?prog=mpc&page=download"
 REGEX_URI_pn-libomxil = "http://sourceforge.net/projects/omxil/files/omxil/"
 REGEX_pn-libomxil = "[hH][rR][eE][fF]=\"/projects/omxil/files/omxil/Bellagio.20(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-libpcap = "http://www.tcpdump.org/release/"
@@ -128,6 +144,7 @@ REGEX_URI_pn-libusb1 = "http://sourceforge.net/projects/libusb/files/libusb-1.0/
 REGEX_pn-libusb1 = "[hH][rR][eE][fF]=\"/projects/libusb/files/libusb-1.0/libusb-(?P<pver>((\d+[\.\-_]*)+))/""
 REGEX_URI_pn-libvorbis = "http://downloads.xiph.org/releases/vorbis/"
 REGEX_pn-libvorbis = "[hH][rR][eE][fF]=\"libvorbis-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
+REGEX_URI_pn-lrzsz = "http://ohse.de/uwe/software/lrzsz.html"
 REGEX_URI_pn-lsb = "http://sourceforge.net/projects/lsb/files/lsb_release/"
 REGEX_pn-lsb = "[hH][rR][eE][fF]=\"/projects/lsb/files/lsb_release/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-ltp = "http://sourceforge.net/projects/ltp/files/LTP%20Source"
@@ -136,6 +153,8 @@ REGEX_URI_pn-mailx = "http://sourceforge.net/projects/heirloom/files/heirloom-ma
 REGEX_pn-mailx = "[hH][rR][eE][fF]=\"/projects/heirloom/files/heirloom-mailx/(?P<pver>((\d+[\.]*)+))/\""
 REGEX_URI_pn-menu-cache = "http://sourceforge.net/projects/lxde/files/menu-cache/"
 REGEX_pn-menu-cache = "[hH][rR][eE][fF]=\"/projects/lxde/files/menu\-cache/menu-cache%20(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_URI_pn-mesa-demos = "ftp://ftp.freedesktop.org/pub/mesa/demos/"
+REGEX_pn-mesa-demos = "[hH][rR][eE][fF]=\"ftp://ftp.freedesktop.org:21/pub/mesa/demos/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-minicom = "https://alioth.debian.org/frs/?group_id=30018"
 REGEX_pn-minicom = "[hH][rR][eE][fF]=\"/frs/download.php/\d+/minicom\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-mingetty = "http://sourceforge.net/projects/mingetty/files/mingetty"
@@ -164,8 +183,10 @@ REGEX_URI_pn-pcmanfm = "http://sourceforge.net/projects/pcmanfm/files/PCManFM%20
 REGEX_pn-pcmanfm = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/pcmanfm/files/PCManFM.20.2B.20Libfm.20.28tarball.20release.29/PCManFM/pcmanfm-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download\""
 REGEX_URI_pn-procps = "http://procps.sourceforge.net/download.html"
 REGEX_pn-procps = "[hH][rR][eE][fF]=\"procps\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
+REGEX_URI_pn-powertop = "https://01.org/powertop/downloads"
 REGEX_URI_pn-psmisc = "http://sourceforge.net/projects/psmisc/files/psmisc/"
 REGEX_pn-psmisc = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/psmisc/files/psmisc/psmisc\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz/download\""
+REGEX_URI_pn-python-argparse = "https://code.google.com/p/argparse/downloads/list"
 REGEX_URI_pn-python-pycurl = "http://pycurl.sourceforge.net/download/"
 REGEX_pn-python-pycurl = "[hH][rR][eE][fF]=\"pycurl-(?P<pver>((\d+[\.\-_]*)+)).tar.gz\""
 REGEX_URI_pn-python-scons = "http://sourceforge.net/projects/scons/files/scons/"
-- 
1.7.9.5


