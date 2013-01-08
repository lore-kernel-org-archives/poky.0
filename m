Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8661E0145C
	for <poky@yoctoproject.org>; Tue,  8 Jan 2013 00:56:14 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 Jan 2013 00:56:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,430,1355126400"; d="scan'208";a="188774998"
Received: from ema-vostro-460 (HELO localhost.localdomain) ([10.237.105.41])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Jan 2013 00:56:12 -0800
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  8 Jan 2013 10:59:55 +0200
Message-Id: <1357635595-13905-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] 	Updated version of checkpkg task
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
X-List-Received-Date: Tue, 08 Jan 2013 08:56:15 -0000

	Modified regexes to ignore unstable versions for all packages.
	Updated the checkpkg task to include regexes, if defined in the
    package_regex.inc file.

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |   22 ++--
 meta/classes/distrodata.bbclass                  |  120 ++++++++++++----------
 2 files changed, 79 insertions(+), 63 deletions(-)

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
diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index ffc1b82..1b61203 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -1,4 +1,4 @@
-include conf/distro/include/upstream_tracking.inc
+include conf/distro/include/package_regex.inc
 addhandler distro_eventhandler
 python distro_eventhandler() {
 
@@ -214,7 +214,6 @@ addtask checkpkg
 do_checkpkg[nostamp] = "1"
 python do_checkpkg() {
         localdata = bb.data.createCopy(d)
-        import sys
         import re
         import tempfile
         import subprocess
@@ -233,16 +232,18 @@ python do_checkpkg() {
                 genext2fs_1.3.orig.tar.gz
                 gst-fluendo-mp3
         """
-        prefix1 = "[a-zA-Z][a-zA-Z0-9]*([\-_][a-zA-Z]\w+)*[\-_]"        # match most patterns which uses "-" as separator to version digits
+        prefix1 = "[a-zA-Z][a-zA-Z0-9]*([\-_][a-zA-Z]\w+)*\+?[\-_]"        # match most patterns which uses "-" as separator to version digits
         prefix2 = "[a-zA-Z]+"                        # a loose pattern such as for unzip552.tar.gz
-        prefix3 = "[0-9a-zA-Z]+"                        # a loose pattern such as for 80325-quicky-0.4.tar.gz
+        prefix3 = "[0-9]+[\-]?[a-zA-Z]+"                        # a loose pattern such as for 80325-quicky-0.4.tar.gz
         prefix = "(%s|%s|%s)" % (prefix1, prefix2, prefix3)
-        #ver_regex = "((\d+[\.\-_]*[a-z]*)+)"#"((\d+[\.\-_[a-z]])+)"
-        suffix = "(tar\.gz|tgz|tar\.bz2|zip|xz|rpm|bz2|orig\.tar\.gz|tar\.xz)"
+        ver_regex = "(([A-Z]*\d+[a-zA-Z]*[\.\-_]*)+)"#"((\d+[\.\-_[a-z]])+)"
+        # src.rpm extension was added only for rpm package. Can be removed if the rpm
+        # packaged will always be considered as having to be manually upgraded
+        suffix = "(tar\.gz|tgz|tar\.bz2|zip|xz|rpm|bz2|orig\.tar\.gz|tar\.xz|src\.tar\.gz|src\.tgz|svnr\d+\.tar\.bz2|stable\.tar\.gz|src\.rpm)"
 
-        suffixtuple = ("tar.gz", "tgz", "zip", "tar.bz2", "tar.xz", "src.rpm", "bz2", "orig.tar.gz")
-        sinterstr = "(?P<name>%s?)(?P<ver>.*)" % prefix
-        sdirstr = "(?P<name>%s)\.?(?P<ver>.*)\.(?P<type>%s$)" % (prefix, suffix)
+        suffixtuple = ("tar.gz", "tgz", "zip", "tar.bz2", "tar.xz", "bz2", "orig.tar.gz", "src.tar.gz", "src.rpm", "src.tgz", "svnr\d+.tar.bz2", "stable.tar.gz", "src.rpm")
+        sinterstr = "(?P<name>%s?)v?(?P<ver>%s)(source)?" % (prefix, ver_regex)
+        sdirstr = "(?P<name>%s)\.?v?(?P<ver>%s)(source)?[\.\-](?P<type>%s$)" % (prefix, ver_regex, suffix)
 
         def parse_inter(s):
                 m = re.search(sinterstr, s)
@@ -258,6 +259,22 @@ python do_checkpkg() {
                 else:
                         return (m.group('name'), m.group('ver'), m.group('type'))
 
+        def modelate_version(version):
+                if version[0] in ['.', '-']:
+                        if version[1].isdigit():
+                                version = version[1] + version[0] + version[2:len(version)]
+                        else:
+                                version = version[1:len(version)]
+
+                version = re.sub('\-', '.', version)
+                version = re.sub('_', '.', version)
+                version = re.sub('(rc)+', '.-1.', version)
+                version = re.sub('(alpha)+', '.-3.', version)
+                version = re.sub('(beta)+', '.-2.', version)
+                if version[0] == 'v':
+                        version = version[1:len(version)]
+                return version
+
         """
         Check whether 'new' is newer than 'old' version. We use existing vercmp() for the
         purpose. PE is cleared in comparison as it's not for build, and PV is cleared too
@@ -267,18 +284,16 @@ python do_checkpkg() {
                 (on, ov, ot) = old
                 (en, ev, et) = new
                 if on != en or (et and et not in suffixtuple):
-                        return 0
-                ov = re.search("[\d|\.]+[^a-zA-Z]+", ov).group()
-                ev = re.search("[\d|\.]+[^a-zA-Z]+", ev).group()
-                return bb.utils.vercmp(("0", ov, ""), ("0", ev, ""))
-
-        def __vercmp2(old,new):
-                (on,ov,ot) = old
-                (en,ev,et) = new
-                #bb.plain("old n = %s" %(str(ov)))
-                if on != en or (et and et not in suffixtuple):
                         return False
-                return ov < ev
+                ov = modelate_version(ov)
+                ev = modelate_version(ev)
+
+                result = bb.utils.vercmp(("0", ov, ""), ("0", ev, ""))
+                if result < 0:
+                    return True
+                else:
+                    return False
+
         """
         wrapper for fetch upstream directory info
                 'url'        - upstream link customized by regular expression
@@ -335,15 +350,18 @@ python do_checkpkg() {
                         match "*4.1/">*4.1/ where '*' matches chars
                         N.B. add package name, only match for digits
                         """
-                        m = re.search("^%s" % prefix, curver)
+                        regex = d.getVar('REGEX', True)
+                        if regex == '':
+                                regex = "^%s" %prefix
+                        m = re.search("^%s" % regex, curver)
                         if m:
                                 s = "%s[^\d\"]*?(\d+[\.\-_])+\d+/?" % m.group()
                         else:
                                 s = "(\d+[\.\-_])+\d+/?"
                                 
                         searchstr = "[hH][rR][eE][fF]=\"%s\">" % s
-                        reg = re.compile(searchstr)
 
+                        reg = re.compile(searchstr)
                         valid = 0
                         for line in fhtml.split("\n"):
                                 if line.find(curver) >= 0:
@@ -353,7 +371,7 @@ python do_checkpkg() {
                                         ver = m.group().split("\"")[1]
                                         ver = ver.strip("/")
                                         ver = parse_inter(ver)
-                                        if ver and __vercmp(newver, ver) < 0:
+                                        if ver and __vercmp(newver, ver) == True:
                                                 newver = ver
 
                         """Expect a match for curver in directory list, or else it indicates unknown format"""
@@ -384,7 +402,7 @@ python do_checkpkg() {
                 if not re.search("\d+", curname):
                         return pcurver
                 pn = d.getVar('PN', True)
-                newver_regex = d.getVar('RECIPE_NEWVER_REGEX',True)
+                newver_regex = d.getVar('REGEX', True)
                 f = tempfile.NamedTemporaryFile(delete=False, prefix="%s-2-" % pn)
                 status = internal_fetch_wget(url, d, f)
                 fhtml = f.read()
@@ -401,10 +419,20 @@ python do_checkpkg() {
                                 searchstr = "[hH][rR][eE][fF]=\"%s\".*[>\"]" % s
                                 reg = searchstr
                         else:
-                                reg = newver_regex
+                               reg = newver_regex
                         valid = 0
                         count = 0
                         for line in fhtml.split("\n"):
+                                if pn == 'kconfig-frontends':
+                                        m = re.findall(reg, line)
+                                        if m:
+                                            valid = 1
+                                            for match in m:
+                                                    (on, ov, oe) = newver
+                                                    ver = (on, match[0], oe)
+                                                    if ver and __vercmp(newver, ver) == True:
+                                                            newver = ver
+                                        continue
                                 count += 1
                                 m = re.search(reg, line)
                                 if m:
@@ -419,28 +447,15 @@ python do_checkpkg() {
                                                 regular expression in the recipe will extract exacly
                                                 the version """
                                                 (on, ov, oe) = newver
-                                                #HARDCODED MESS
-                                                if pn == 'remake':
-                                                        ver = (on, m.group(1)+m.group(3), oe)
-                                                else:
-                                                        ver = (on, m.group(1), oe)
-                                        pkg_problem = ['jpeg','dhcp','remake','blktool','apmd','nativesdk-openssl','valgrind','net-tools']
-                                        if pn in pkg_problem:
-                                                if ver and __vercmp2(newver,ver) == True:
-                                                        newver = ver
-                                        else:
-                                                if ver and __vercmp(newver, ver) < 0:
-                                                        newver = ver
+                                                ver = (on, m.group('pver'), oe)
+                                        if ver and __vercmp(newver, ver) == True:
+                                                newver = ver
                         """Expect a match for curver in directory list, or else it indicates unknown format"""
                         if not valid:
                                 status = "ErrParseDir"
                         else:
                                 """newver still contains a full package name string"""
-                                status = re.search("(\d+[\.\-_])*(\d+[0-9a-zA-Z]*)", newver[1]).group()
-                                if "_" in status:
-                                        status = re.sub("_",".",status)
-                                elif "-" in status:
-                                        status = re.sub("-",".",status)
+                                status = newver[1]
                 elif not len(fhtml):
                         status = "ErrHostNoDir"
 
@@ -483,7 +498,7 @@ python do_checkpkg() {
             localdata.setVar('OVERRIDES', "pn-" + pnstripped[0] + ":" + d.getVar('OVERRIDES', True))
             bb.data.update_data(localdata)
 
-        chk_uri = d.getVar('RECIPE_NEWVER_URI',True)
+        chk_uri = d.getVar('REGEX_URI', True)
         if not chk_uri:
                chk_uri = src_uri
         pdesc = localdata.getVar('DESCRIPTION', True)
@@ -537,14 +552,14 @@ python do_checkpkg() {
         
                         """use new path and remove param. for wget only param is md5sum"""
                         alturi = bb.encodeurl([type, host, altpath, user, pswd, {}])
-                        my_uri = d.getVar('RECIPE_NEWVER_URI',True)
+                        my_uri = d.getVar('REGEX_URI', True)
                         if my_uri:
                             newver = d.getVar('PV', True)
                         else:
                             newver = check_new_dir(alturi, dirver, d)
                         altpath = path
                         if not re.match("Err", newver) and dirver != newver:
-                                altpath = altpath.replace(dirver, newver, True)                 
+                                altpath = altpath.replace(dirver, newver, True)
                 # For folder in folder cases - try to enter the folder again and then try parsing
                 """Now try to acquire all remote files in current directory"""
                 if not re.match("Err", newver):
@@ -556,7 +571,8 @@ python do_checkpkg() {
                                 altpath = "/"
                         else:
                                 altpath = m.group()
-                        chk_uri = d.getVar('RECIPE_NEWVER_URI',True)
+
+                        chk_uri = d.getVar('REGEX_URI', True)
                         if not chk_uri:
                                 alturi = bb.encodeurl([type, host, altpath, user, pswd, {}])
                         else:
@@ -568,12 +584,12 @@ python do_checkpkg() {
                                 else:
                                         alturi = "/".join(alturi.split("/")[0:-2]) + "/download"
                                         newver = check_new_version(alturi, curname, d)
-                        if not re.match("Err", newver):
-                                pupver = newver
-                                if pupver != pcurver:
-                                        pstatus = "UPDATE"
-                                else:
-                                        pstatus = "MATCH"
+                if not re.match("Err", newver):
+                        pupver = newver
+                        if pupver != pcurver:
+                                pstatus = "UPDATE"
+                        else:
+                                pstatus = "MATCH"
         
                 if re.match("Err", newver):
                         pstatus = newver + ":" + altpath + ":" + dirver + ":" + curname
-- 
1.7.9.5


