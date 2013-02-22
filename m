Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B045DE00720
	for <poky@yoctoproject.org>; Fri, 22 Feb 2013 00:03:03 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Feb 2013 00:03:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,714,1355126400"; d="scan'208";a="260159260"
Received: from ema-vostro-460 (HELO localhost.localdomain) ([10.237.105.41])
	by azsmga001.ch.intel.com with ESMTP; 22 Feb 2013 00:03:00 -0800
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Fri, 22 Feb 2013 10:07:35 +0200
Message-Id: <1361520455-16719-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] package_regex.inc: updated regexes
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
X-List-Received-Date: Fri, 22 Feb 2013 08:03:03 -0000

Added/updated regexes for:
	* libpfm4
	* gtk+3
	* bdwgc
	* iputils
	* foomatic-filters
	* icu
	* libpng

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |   13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 510f3f9..fb1473d 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -1,4 +1,4 @@
-# package_regex.inc - This file contains data that tracks the
+# package_regex.inc - This file contains data that tracks
 # upstream project associated with a given recipe. This list is needed
 # for recipes that version information can not be automagically discovered.
 # As we automate this checking, this file will slowed be reduced.
@@ -22,6 +22,7 @@ REGEX_URI_pn-beecrypt = "http://sourceforge.net/projects/beecrypt/files/beecrypt
 REGEX_pn-beecrypt = "[hH][rR][eE][fF]=\"/projects/beecrypt/files/beecrypt/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-beecrypt-native = "http://sourceforge.net/projects/beecrypt/files/beecrypt/"
 REGEX_pn-beecrypt-native = "[hH][rR][eE][fF]=\"/projects/beecrypt/files/beecrypt/(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_pn-bdwgc = "[hH][rR][eE][fF]=\"gc\-(?P<pver>((\d+[a-z]?[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-blktool = "ftp://ftp.debian.org/debian/pool/main/b/blktool/"
 REGEX_pn-blktool = "[hH][rR][eE][fF]=\"ftp://ftp.debian.org:21/debian/pool/main/b/blktool/blktool_(?P<pver>((\d+[\.\-_]*)+))\.(diff|orig\.tar)\.gz\""
 REGEX_URI_pn-boost = "http://sourceforge.net/projects/boost/files/boost/"
@@ -56,6 +57,7 @@ REGEX_URI_pn-flac = "http://sourceforge.net/projects/flac/files/flac-linux-i386/
 REGEX_pn-flac = "[hH][rR][eE][fF]=\"/projects/flac/files/flac-linux-i386/flac\-(?P<pver>((\d+[\.\-_]*)+))\-linux\-i386/\""
 REGEX_URI_pn-flex = "http://sourceforge.net/projects/flex/files/"
 REGEX_pn-flex = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/flex/files/flex-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download\""
+REGEX_pn-foomatic-filters = "[hH][rR][eE][fF]=\"foomatic-filters-(?P<pver>((\d|\d\d)\.*)+)\.tar\.gz\""
 REGEX_URI_pn-freetype = "http://sourceforge.net/projects/freetype/files/freetype2"
 REGEX_pn-freetype = "[hH][rR][eE][fF]=\"/projects/freetype/files/freetype\d/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-freetype-native = "http://sourceforge.net/projects/freetype/files/freetype2"
@@ -65,7 +67,7 @@ REGEX_pn-glew  = " [hH][rR][eE][fF]=\"/projects/glew/files/glew/(?P<pver>((\d+[\
 REGEX_URI_pn-hdparm = "http://sourceforge.net/projects/hdparm/files/hdparm/"
 REGEX_pn-hdparm = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/hdparm/files/hdparm/hdparm-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download\""
 REGEX_URI_pn-icu = "http://site.icu-project.org/download"
-REGEX_pn-icu = "[hH][rR][eE][fF]=\"http://site.icu-project.org/download/((\d+[\.\-_]*)+)#(TOC\-)?ICU4C\-Download\" rel=\"nofollow\">(<b>)?(?P<pver>((\d+[\.\-_]*)+))(</b>)?"
+REGEX_pn-icu = "[hH][rR][eE][fF]=\"http://site.icu-project.org/download/((\d+[\.\-_]*)+)#(TOC\-)?ICU4J\-Download\" rel=\"nofollow\">(<b>)?(?P<pver>((\d+[\.\-_]*)+))(</b>)?"
 REGEX_URI_pn-irda-utils = "http://sourceforge.net/projects/irda/files/irda-utils/"
 REGEX_pn-irda-utils = "[hH][rR][eE][fF]=\"/projects/irda/files/irda-utils/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-jpeg = "http://www.ijg.org/files/"
@@ -109,8 +111,9 @@ REGEX_URI_pn-libpcre = "http://sourceforge.net/projects/pcre/files/pcre/"
 REGEX_pn-libpcre = "[hH][rR][eE][fF]=\"/projects/pcre/files/pcre/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-libpcre-native = "http://sourceforge.net/projects/pcre/files/pcre/"
 REGEX_pn-libpcre-native = "[hH][rR][eE][fF]=\"/projects/pcre/files/pcre/(?P<pver>((\d+[\.\-_]*)+))/\""
-REGEX_URI_pn-libpng = "ftp://ftp.simplesystems.org/pub/libpng/png/src/"
-REGEX_pn-libpng = "[hH][rR][eE][fF]=\"ftp://ftp.simplesystems.org:21/pub/libpng/png/src/libpng-(?P<pver>((\d+[\.\-_]*)+)).tar.gz""
+REGEX_URI_pn-libpfm4 = "http://sourceforge.net/projects/perfmon2/files/libpfm4/"
+REGEX_URI_pn-libpng = "http://sourceforge.net/projects/libpng/files/"
+REGEX_pn-libpng = "[hH][rR][eE][fF]=\"/projects/libpng/files/latest/download\?source=files\" title=\"/libpng\d+(/(\d+\.?)+/)?libpng-(?P<pver>((\d+[\.\-_]*)+)).tar.xz"
 REGEX_URI_pn-libpng-native = "ftp://ftp.simplesystems.org/pub/libpng/png/src/"
 REGEX_pn-libpng-native = "[hH][rR][eE][fF]=\"ftp://ftp.simplesystems.org:21/pub/libpng/png/src/libpng-(?P<pver>((\d+[\.\-_]*)+)).tar.gz""
 REGEX_URI_pn-libsamplerate0 = "http://www.mega-nerd.com/SRC/download.html"
@@ -254,6 +257,7 @@ REGEX_pn-libffi = "[hH][rR][eE][fF]=\"ftp://sourceware.org:21/pub/libffi/libffi\
 REGEX_pn-libffi-native = "[hH][rR][eE][fF]=\"ftp://sourceware.org:21/pub/libffi/libffi\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-nativesdk-libffi = "[hH][rR][eE][fF]=\"ftp://sourceware.org:21/pub/libffi/libffi\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-gtk+ = "[hH][rR][eE][fF]=\"gtk\+\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.xz\""
+REGEX_pn-gtk+3 = "[hH][rR][eE][fF]=\"gtk\+\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.xz\""
 REGEX_pn-webkit-gtk = "[hH][rR][eE][fF]=\"webkitgtk\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.xz\""
 REGEX_URI_pn-bind = "ftp://ftp.isc.org/isc/bind9/"
 REGEX_pn-bind = "[hH][rR][eE][fF]=\"ftp://ftp.isc.org:21/isc/bind9/(?P<pver>((P?\d+[\.\-_]*)+))/\""
@@ -289,3 +293,4 @@ REGEX_pn-libxml2 = "[hH][rR][eE][fF]=\"ftp://xmlsoft.org:21/libxml2/libxml2\-(?P
 REGEX_pn-python-setuptools = "[hH][rR][eE][fF]=\"setuptools\-(?P<pver>((\d+([a-z]\d+)?[\.\-_]*)+))\.(tar\.gz|\.zip)\""
 REGEX_pn-libtheora = "[Hh][Rr][Ee][Ff]=\"libtheora\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-libxslt = "[Hh][Rr][Ee][Ff]=\"ftp://xmlsoft.org:21/libxslt/libxslt\-(?P<pver>((\d+\.*)+))\.tar\.gz\""
+REGEX_pn-iputils = "[Hh][Rr][Ee][Ff]=\"iputils\-(?P<pver>(s\d+))\.tar\.bz2\""
-- 
1.7.9.5


