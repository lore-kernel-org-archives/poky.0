Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13400E0047F
	for <poky@yoctoproject.org>; Thu, 14 Feb 2013 07:28:58 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2013 07:28:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,665,1355126400"; d="scan'208";a="287243457"
Received: from ema-vostro-460 (HELO localhost.localdomain) ([10.237.105.41])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2013 07:28:56 -0800
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Feb 2013 17:33:21 +0200
Message-Id: <1360856001-16944-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Solved package namespace errors in PRS
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
X-List-Received-Date: Thu, 14 Feb 2013 15:28:58 -0000

For some packages PRS reported incorrect upstream version
as it was either the raw string or it mismatched some
alternative groups. Also removed some beta versioning the
system reported for the socat package and the development
version reported by PRS for foomatic-filters.

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |    5 +++--
 meta/classes/distrodata.bbclass                  |    6 +++---
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 43b5518..c63c2e6 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -56,6 +56,7 @@ REGEX_URI_pn-flac = "http://sourceforge.net/projects/flac/files/flac-linux-i386/
 REGEX_pn-flac = "[hH][rR][eE][fF]=\"/projects/flac/files/flac-linux-i386/flac\-(?P<pver>((\d+[\.\-_]*)+))\-linux\-i386/\""
 REGEX_URI_pn-flex = "http://sourceforge.net/projects/flex/files/"
 REGEX_pn-flex = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/flex/files/flex-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download\""
+REGEX_pn-foomatic-filters = "[hH][rR][eE][fF]=\"foomatic-filters-(?P<pver>((\d|\d\d)\.*)+)\.tar\.gz\""
 REGEX_URI_pn-freetype = "http://sourceforge.net/projects/freetype/files/freetype2"
 REGEX_pn-freetype = "[hH][rR][eE][fF]=\"/projects/freetype/files/freetype\d/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-freetype-native = "http://sourceforge.net/projects/freetype/files/freetype2"
@@ -65,7 +66,7 @@ REGEX_pn-glew  = " [hH][rR][eE][fF]=\"/projects/glew/files/glew/(?P<pver>((\d+[\
 REGEX_URI_pn-hdparm = "http://sourceforge.net/projects/hdparm/files/hdparm/"
 REGEX_pn-hdparm = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/hdparm/files/hdparm/hdparm-(?P<pver>((\d+[\.\-_]*)+)).tar.gz/download\""
 REGEX_URI_pn-icu = "http://site.icu-project.org/download"
-REGEX_pn-icu = "[hH][rR][eE][fF]=\"http://site.icu-project.org/download/((\d+[\.\-_]*)+)#(TOC\-)?ICU4J\-Download\" rel=\"nofollow\">(<b>)?(?P<pver>((\d+[\.\-_]*)+))(</b>)?"
+REGEX_pn-icu = "[hH][rR][eE][fF]=\"http://site.icu-project.org/download/((\d+[\.\-_]*)+)#(TOC\-)?ICU4C\-Download\" rel=\"nofollow\">(<b>)?(?P<pver>((\d+[\.\-_]*)+))(</b>)?"
 REGEX_URI_pn-irda-utils = "http://sourceforge.net/projects/irda/files/irda-utils/"
 REGEX_pn-irda-utils = "[hH][rR][eE][fF]=\"/projects/irda/files/irda-utils/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-jpeg = "http://www.ijg.org/files/"
@@ -178,7 +179,7 @@ REGEX_pn-setserial = "[hH][rR][eE][fF]=\"/projects/setserial/files/setserial/(?P
 REGEX_pn-shared-mime-info = "[hH][rR][eE][fF]=\"shared\-mime\-info\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.(bz2|gz|xz)\""
 REGEX_pn-shared-mime-info-native = "[hH][rR][eE][fF]=\"shared\-mime\-info\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.(bz2|gz|xz)\""
 REGEX_URI_pn-socat = "http://www.dest-unreach.org/socat/download/"
-REGEX_pn-socat = "[hH][rR][eE][fF]=\"socat\-(?P<pver>(([a-zA-Z]?\d+[\.\-]*)+))\.tar\.bz2\""
+REGEX_pn-socat = "[hH][rR][eE][fF]=\"socat\-(?P<pver>((\d+[\.\-]*)+))\.tar\.bz2\""
 REGEX_URI_pn-speex = "http://downloads.us.xiph.org/releases/speex/"
 REGEX_pn-speex = "[hH][rR][eE][fF]=\"speex\-(?P<pver>((\d+\.*)+))\.tar\.gz\""
 REGEX_URI_pn-sqlite3 = "http://www.sqlite.org/download.html"
diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index e25eeab..276ca03 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -291,8 +291,8 @@ python do_checkpkg() {
         suffix = "(tar\.gz|tgz|tar\.bz2|zip|xz|rpm|bz2|orig\.tar\.gz|tar\.xz|src\.tar\.gz|src\.tgz|svnr\d+\.tar\.bz2|stable\.tar\.gz|src\.rpm)"
 
         suffixtuple = ("tar.gz", "tgz", "zip", "tar.bz2", "tar.xz", "bz2", "orig.tar.gz", "src.tar.gz", "src.rpm", "src.tgz", "svnr\d+.tar.bz2", "stable.tar.gz", "src.rpm")
-        sinterstr = "(?P<name>%s?)v?(?P<ver>%s)(source)?" % (prefix, ver_regex)
-        sdirstr = "(?P<name>%s)\.?v?(?P<ver>%s)(source)?[\.\-](?P<type>%s$)" % (prefix, ver_regex, suffix)
+        sinterstr = "(?P<name>%s?)v?(?P<ver>%s)(\-source)?" % (prefix, ver_regex)
+        sdirstr = "(?P<name>%s)\.?v?(?P<ver>%s)(\-source)?[\.\-](?P<type>%s$)" % (prefix, ver_regex, suffix)
 
         def parse_inter(s):
                 m = re.search(sinterstr, s)
@@ -504,7 +504,7 @@ python do_checkpkg() {
                                 status = "ErrParseDir"
                         else:
                                 """newver still contains a full package name string"""
-                                status = newver[1]
+                                status = re.sub('_', '.', newver[1])
                 elif not len(fhtml):
                         status = "ErrHostNoDir"
 
-- 
1.7.9.5


