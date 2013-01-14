Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B6ACE002AB
	for <poky@yoctoproject.org>; Mon, 14 Jan 2013 00:32:20 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jan 2013 00:32:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,466,1355126400"; d="scan'208";a="273420755"
Received: from ema-vostro-460 (HELO localhost.localdomain) ([10.237.105.41])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2013 00:32:08 -0800
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Mon, 14 Jan 2013 10:35:38 +0200
Message-Id: <1358152538-3630-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Modified meta-yocto/conf/distro/include/package_regex.inc
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
X-List-Received-Date: Mon, 14 Jan 2013 08:32:21 -0000

Removed all *alpha*, *beta*, *rc* from regexes.

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |   22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 4704df2..43b5518 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -69,9 +69,9 @@ REGEX_pn-icu = "[hH][rR][eE][fF]=\"http://site.icu-project.org/download/((\d+[\.
 REGEX_URI_pn-irda-utils = "http://sourceforge.net/projects/irda/files/irda-utils/"
 REGEX_pn-irda-utils = "[hH][rR][eE][fF]=\"/projects/irda/files/irda-utils/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-jpeg = "http://www.ijg.org/files/"
-REGEX_pn-jpeg = "[hH][rR][eE][fF]=\"jpegsrc.(?P<pver>(v(\d+[\.\-_]*[a-z]*)+))\.tar\.gz""
+REGEX_pn-jpeg = "[hH][rR][eE][fF]=\"jpegsrc.v(?P<pver>((\d+[a-z]*\d*)+))\.tar\.gz""
 REGEX_URI_pn-js = "http://ftp.mozilla.org/pub/mozilla.org/js/"
-REGEX_pn-js = "[hH][rR][eE][fF]=\"js-?(?P<pver>(((rc)*\d+[\.\-_]*)+))\.tar\.gz\""
+REGEX_pn-js = "[hH][rR][eE][fF]=\"js-?(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-kconfig-frontends = "http://ymorin.is-a-geek.org/download/kconfig-frontends/"
 REGEX_pn-kconfig-frontends = "[hH][rR][eE][fF]=\'kconfig\-frontends\-(?P<pver>((\d+[\.\-]*)+))\.tar\.xz\'"
 REGEX_URI_pn-lame = "http://sourceforge.net/projects/lame/files/lame/"
@@ -89,8 +89,8 @@ REGEX_URI_pn-libcheck = "http://sourceforge.net/projects/check/files/check/"
 REGEX_pn-libcheck = "[hH][rR][eE][fF]=\"/projects/check/files/check/(?P<pver>((\d+[\.\-_]*)+))/\""
 #REGEX_URI_pn-libevent = "http://sourceforge.net/projects/levent/files/libevent/libevent-2.0/"
 REGEX_URI_pn-libevent = "http://libevent.org/"
-#REGEX_pn-libevent = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/levent/files/libevent/libevent-2.0/libevent-(?P<pver>((\d+[\.\-_]*)+))\-(stable|rc)\.tar\.gz/download\""
-REGEX_pn-libevent = "[hH][rR][eE][fF]=\"https://github.com/downloads/libevent/libevent/libevent-(?P<pver>((\d+[\.\-_]*)+))\-(stable|rc|alpha)\.tar\.gz\""
+#REGEX_pn-libevent = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/levent/files/libevent/libevent-2.0/libevent-(?P<pver>((\d+[\.\-_]*)+))\-stable\.tar\.gz/download\""
+REGEX_pn-libevent = "[hH][rR][eE][fF]=\"https://github.com/downloads/libevent/libevent/libevent-(?P<pver>((\d+[\.\-_]*)+))\-stable\.tar\.gz\""
 REGEX_URI_pn-libexif = "http://sourceforge.net/projects/libexif/files/libexif/"
 REGEX_pn-libexif = "[hH][rR][eE][fF]=\"/projects/libexif/files/libexif/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-libfm = "http://sourceforge.net/projects/pcmanfm/files/PCManFM%20%2B%20Libfm%20%28tarball%20release%29/PCManFM/"
@@ -180,7 +180,7 @@ REGEX_pn-shared-mime-info-native = "[hH][rR][eE][fF]=\"shared\-mime\-info\-(?P<p
 REGEX_URI_pn-socat = "http://www.dest-unreach.org/socat/download/"
 REGEX_pn-socat = "[hH][rR][eE][fF]=\"socat\-(?P<pver>(([a-zA-Z]?\d+[\.\-]*)+))\.tar\.bz2\""
 REGEX_URI_pn-speex = "http://downloads.us.xiph.org/releases/speex/"
-REGEX_pn-speex = "[hH][rR][eE][fF]=\"speex\-(?P<pver>((\d+[\.(rc)*]*)+))\.tar\.\gz\""
+REGEX_pn-speex = "[hH][rR][eE][fF]=\"speex\-(?P<pver>((\d+\.*)+))\.tar\.gz\""
 REGEX_URI_pn-sqlite3 = "http://www.sqlite.org/download.html"
 REGEX_pn-sqlite3 = "[hH][rR][eE][fF]=\"/sqlite-autoconf-(?P<pver>(\d+)).tar.gz\""
 REGEX_URI_pn-sqlite3-native = "http://www.sqlite.org/download.html"
@@ -215,14 +215,13 @@ REGEX_URI_pn-unzip-native = "http://sourceforge.net/projects/infozip/files/UnZip
 REGEX_pn-unzip-native = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/infozip/files/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip(?P<pver>(\d+))\.tar\.gz/download\""
 REGEX_URI_pn-v86d = "http://dev.gentoo.org/~spock/projects/uvesafb/archive/"
 REGEX_pn-v86d = "[hH][rR][eE][fF]=\"v86d\-(?P<pver>((\d+[\.]*)+))\.tar\.bz2\""
-REGEX_pn-v86d = "[hH][rR][eE][fF]=\"v86d\-(?P<pver>((\d+[\.]*)+(\-?rc\d*\.*)*))\.tar\.bz2\""
 REGEX_URI_pn-watchdog = "http://sourceforge.net/projects/watchdog/files/watchdog/"
 REGEX_pn-watchdog = "[hH][rR][eE][fF]=\"/projects/watchdog/files/watchdog/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-wireless-tools = "http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html"
 REGEX_pn-wireless-tools = "[hH][rR][eE][fF]=\"wireless_tools\.(?P<pver>(\d+))\.tar\.gz\""
 REGEX_URI_pn-x11vnc = "http://sourceforge.net/projects/libvncserver/files/x11vnc/"
 REGEX_pn-x11vnc = "[hH][rR][eE][fF]=\"/projects/libvncserver/files/x11vnc/(?P<pver>((\d+[\.\-_]*)+))/\""
-REGEX_pn-xdg-utils = "[hH][rR][eE][fF]=\"xdg\-utils\-(?P<pver>(((rc)*\d+[\.\-_]*)+))\.(tar\.gz|tgz)\""
+REGEX_pn-xdg-utils = "[hH][rR][eE][fF]=\"xdg\-utils\-(?P<pver>((\d+[\.\-_]*)+))\.(tar\.gz|tgz)\""
 REGEX_URI_pn-zip = "http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/"
 REGEX_pn-zip = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/zip(?P<pver>(\d+))\.tar\.gz/download\""
 REGEX_URI_pn-zip-native = "http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/"
@@ -257,9 +256,9 @@ REGEX_pn-nativesdk-libffi = "[hH][rR][eE][fF]=\"ftp://sourceware.org:21/pub/libf
 REGEX_pn-gtk+ = "[hH][rR][eE][fF]=\"gtk\+\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.xz\""
 REGEX_pn-webkit-gtk = "[hH][rR][eE][fF]=\"webkitgtk\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.xz\""
 REGEX_URI_pn-bind = "ftp://ftp.isc.org/isc/bind9/"
-REGEX_pn-bind = "[hH][rR][eE][fF]=\"ftp://ftp.isc.org:21/isc/bind9/(?P<pver>((\d+((rc|b)\d)*[\.\-_]*)+))/\""
+REGEX_pn-bind = "[hH][rR][eE][fF]=\"ftp://ftp.isc.org:21/isc/bind9/(?P<pver>((P?\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-dhcp = "ftp://ftp.isc.org/isc/dhcp/"
-REGEX_pn-dhcp = "[hH][rR][eE][fF]=\"ftp://ftp.isc.org:21/isc/dhcp/(?P<pver>((\d+((P)\d)*[\.\-_]*)+))/\""
+REGEX_pn-dhcp = "[hH][rR][eE][fF]=\"ftp://ftp.isc.org:21/isc/dhcp/(dhcp\-)?(?P<pver>((P?\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-mesa-dri = "ftp://ftp.freedesktop.org/pub/mesa/"
 REGEX_pn-mesa-dri = "[hH][rR][eE][fF]=\"ftp://ftp.freedesktop.org:21/pub/mesa/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-mesa-dri-glsl-native = "ftp://ftp.freedesktop.org/pub/mesa/"
@@ -277,9 +276,9 @@ REGEX_pn-intltool = "[hH][rR][eE][fF]=\"/intltool/\+milestone/(?P<pver>((\d+[\.\
 REGEX_URI_pn-intltool-native = "https://launchpad.net/intltool/trunk"
 REGEX_pn-intltool-native = "[hH][rR][eE][fF]=\"/intltool/\+milestone/(?P<pver>((\d+[\.\-_]*)+))\""
 REGEX_URI_pn-distcc = "http://code.google.com/p/distcc/downloads/list"
-REGEX_pn-distcc = "[hH][rR][eE][fF]=\"//distcc.googlecode.com/files/distcc-(?P<pver>((\d+(rc\d+)*[\.\-_]*)+))\.tar\.bz2\""
+REGEX_pn-distcc = "[hH][rR][eE][fF]=\"//distcc.googlecode.com/files/distcc-(?P<pver>((\d+[\.\-_]*)+))\.tar\.bz2\""
 REGEX_URI_pn-git = "http://code.google.com/p/git-core/downloads/list"
-REGEX_pn-git = "[hH][rR][eE][fF]=\"//git-core.googlecode.com/files/git-(?P<pver>(((rc)?\d+[\.\-_]*)+))\.tar\.gz\""
+REGEX_pn-git = "[hH][rR][eE][fF]=\"//git-core.googlecode.com/files/git-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-cmake = "[hH][rR][eE][fF]=\"cmake\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-cmake-native = "[hH][rR][eE][fF]=\"cmake\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-nativeesdk-cmake = "[hH][rR][eE][fF]=\"cmake\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
@@ -289,3 +288,4 @@ REGEX_URI_pn-docbook-sgml-dtd-4.5-native = "http://docbook.org/sgml/4.5/"
 REGEX_pn-libxml2 = "[hH][rR][eE][fF]=\"ftp://xmlsoft.org:21/libxml2/libxml2\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-python-setuptools = "[hH][rR][eE][fF]=\"setuptools\-(?P<pver>((\d+([a-z]\d+)?[\.\-_]*)+))\.(tar\.gz|\.zip)\""
 REGEX_pn-libtheora = "[Hh][Rr][Ee][Ff]=\"libtheora\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
+REGEX_pn-libxslt = "[Hh][Rr][Ee][Ff]=\"ftp://xmlsoft.org:21/libxslt/libxslt\-(?P<pver>((\d+\.*)+))\.tar\.gz\""
-- 
1.7.9.5


