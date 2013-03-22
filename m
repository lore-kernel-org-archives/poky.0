Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EF89E014C2
	for <poky@yoctoproject.org>; Fri, 22 Mar 2013 07:56:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Mar 2013 07:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,892,1355126400"; d="scan'208";a="306124371"
Received: from ema-vostro-460.rb.intel.com ([10.237.105.141])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2013 07:55:48 -0700
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Fri, 22 Mar 2013 17:00:56 +0200
Message-Id: <1363964456-30720-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v2] package_regex.inc: added new regexes
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
X-List-Received-Date: Fri, 22 Mar 2013 14:56:09 -0000

	Added/Updated regexes for:
		* btrfs-tools
		* xf86-video-omap
		* remake
		* sqlite3

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |    9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index fb1473d..7765580 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -27,6 +27,7 @@ REGEX_URI_pn-blktool = "ftp://ftp.debian.org/debian/pool/main/b/blktool/"
 REGEX_pn-blktool = "[hH][rR][eE][fF]=\"ftp://ftp.debian.org:21/debian/pool/main/b/blktool/blktool_(?P<pver>((\d+[\.\-_]*)+))\.(diff|orig\.tar)\.gz\""
 REGEX_URI_pn-boost = "http://sourceforge.net/projects/boost/files/boost/"
 REGEX_pn-boost = "[hH][rR][eE][fF]=\"/projects/boost/files/boost/(?P<pver>((\d+[\.\-_]*)+))/\""
+REGEX_pn-btrfs-tools = "(\d+(\.\d+)*(\-rc\d+)*)"
 REGEX_URI_pn-chrpath = "http://alioth.debian.org/frs/?group_id=31052"
 REGEX_pn-chrpath = "[hH][rR][eE][fF]=\"/frs/download.php/3661/chrpath-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-console-tools = "http://sourceforge.net/projects/lct/files/console-tools/"
@@ -185,7 +186,7 @@ REGEX_pn-socat = "[hH][rR][eE][fF]=\"socat\-(?P<pver>((\d+[\.\-]*)+))\.tar\.bz2\
 REGEX_URI_pn-speex = "http://downloads.us.xiph.org/releases/speex/"
 REGEX_pn-speex = "[hH][rR][eE][fF]=\"speex\-(?P<pver>((\d+\.*)+))\.tar\.gz\""
 REGEX_URI_pn-sqlite3 = "http://www.sqlite.org/download.html"
-REGEX_pn-sqlite3 = "[hH][rR][eE][fF]=\"/sqlite-autoconf-(?P<pver>(\d+)).tar.gz\""
+REGEX_pn-sqlite3 = "[hH][rR][eE][fF]=\"(\d+)?/sqlite-autoconf-(?P<pver>(\d+)).tar.gz\""
 REGEX_URI_pn-sqlite3-native = "http://www.sqlite.org/download.html"
 REGEX_pn-sqlite3-native = "[hH][rR][eE][fF]=\"/sqlite-autoconf-(?P<pver>(\d+)).tar.gz\""
 REGEX_URI_pn-nativesdk-sqlite3 = "http://www.sqlite.org/download.html"
@@ -225,6 +226,7 @@ REGEX_pn-wireless-tools = "[hH][rR][eE][fF]=\"wireless_tools\.(?P<pver>(\d+))\.t
 REGEX_URI_pn-x11vnc = "http://sourceforge.net/projects/libvncserver/files/x11vnc/"
 REGEX_pn-x11vnc = "[hH][rR][eE][fF]=\"/projects/libvncserver/files/x11vnc/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_pn-xdg-utils = "[hH][rR][eE][fF]=\"xdg\-utils\-(?P<pver>((\d+[\.\-_]*)+))\.(tar\.gz|tgz)\""
+REGEX_pn-xf86-video-omap = "\d+\.(\d\.?)*"
 REGEX_URI_pn-zip = "http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/"
 REGEX_pn-zip = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/zip(?P<pver>(\d+))\.tar\.gz/download\""
 REGEX_URI_pn-zip-native = "http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/"
@@ -233,10 +235,7 @@ REGEX_URI_pn-msmtp = "http://sourceforge.net/projects/msmtp/files/msmtp/"
 REGEX_pn-msmtp = "[hH][rR][eE][fF]=\"/projects/msmtp/files/msmtp/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-docbook-dsssl-stylesheets-native = "http://sourceforge.net/projects/docbook/files/docbook-dsssl/"
 REGEX_pn-docbook-dsssl-stylesheets-native = "[hH][rR][eE][fF]=\"/projects/docbook/files/docbook-dsssl/(?P<pver>((\d+[\.\-_]*)+))/\""
-REGEX_URI_pn-remake = "http://sourceforge.net/projects/bashdb/files/remake/"
-REGEX_pn-remake = "[hH][rR][eE][fF]=\"/projects/bashdb/files/remake/(?P<pver>((\d+[\.\-_]*)+%2Bdbg[\-]*(\d+[\.\-_]*)+))/\""
-REGEX_URI_pn-remake-native = "http://sourceforge.net/projects/bashdb/files/remake/"
-REGEX_pn-remake-native = "[hH][rR][eE][fF]=\"/projects/bashdb/files/remake/(?P<pver>((\d+[\.\-_]*)+%2Bdbg[\-]*(\d+[\.\-_]*)+))/\""
+REGEX_pn-remake = "(\d+\.(\d+\.)*\d*(\+dbg\-\d+(\.\d+)*)*)"
 REGEX_URI_pn-libical = "http://sourceforge.net/projects/libical/files/libical/"
 REGEX_pn-libical = "[hH][rR][eE][fF]=\"/projects/libical/files/libical/libical-(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-telepathy-mission-control = "http://telepathy.freedesktop.org/releases/telepathy-mission-control/"
-- 
1.7.9.5


