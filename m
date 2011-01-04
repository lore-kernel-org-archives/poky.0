Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B20334C80B70
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 08:39:09 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Jan 2011 06:39:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,272,1291622400"; d="scan'208";a="369858602"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.108])
	by azsmga001.ch.intel.com with ESMTP; 04 Jan 2011 06:39:08 -0800
Message-Id: <c78cf435a4c351c2372d0d83b73a65a11d4db677.1294150731.git.lei.mei@intel.com>
In-Reply-To: <cover.1294150731.git.lei.mei@intel.com>
References: <cover.1294150731.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Old-Date: Tue, 4 Jan 2011 22:11:42 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] distrodata.bbclass: Make some change for package report system
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
Date: Tue, 04 Jan 2011 14:39:09 -0000
X-Original-Date: 二, 04  1月 2011 22:38:30 +0800
X-List-Received-Date: Tue, 04 Jan 2011 14:39:09 -0000

Generate some necessary data for package report system and make some change to get more recipes upstream version

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/distrodata.bbclass |   38 ++++++++++++++++++++++++++++++++------
 1 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index 1866f98..e506dc4 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -1,4 +1,3 @@
-
 require conf/distro/include/distro_tracking_fields.inc
 
 addhandler distro_eventhandler
@@ -229,6 +228,14 @@ python checkpkg_eventhandler() {
 	f.write("Package\tOwner\tURI Type\tVersion\tTracking\tUpstream\tTMatch\tRMatch\n")
         f.close()
         bb.utils.unlockfile(lf)
+	"""initialize log files for package report system"""
+	logfile2 = os.path.join(logpath, "get_pkg_info.%s.log" % bb.data.getVar('DATETIME', e.data, 1))
+	if not os.path.exists(logfile2):
+		slogfile2 = os.path.join(logpath, "get_pkg_info.log")
+		if os.path.exists(slogfile2):
+			os.remove(slogfile2)
+		os.system("touch %s" % logfile2)
+		os.symlink(logfile2, slogfile2)
 
     return
 }
@@ -239,7 +246,6 @@ python do_checkpkg() {
 	import sys
 	import re
 	import tempfile
-
 	"""
 	sanity check to ensure same name and type. Match as many patterns as possible
 	such as:
@@ -257,8 +263,8 @@ python do_checkpkg() {
 	prefix1 = "[a-zA-Z][a-zA-Z0-9]*([\-_][a-zA-Z]\w+)*[\-_]"	# match most patterns which uses "-" as separator to version digits
 	prefix2 = "[a-zA-Z]+"			# a loose pattern such as for unzip552.tar.gz
 	prefix = "(%s|%s)" % (prefix1, prefix2)
-	suffix = "(tar\.gz|tgz|tar\.bz2|zip)"
-	suffixtuple = ("tar.gz", "tgz", "zip", "tar.bz2")
+	suffix = "(tar\.gz|tgz|tar\.bz2|zip|tar\.xz)"
+	suffixtuple = ("tar.gz", "tgz", "zip", "tar.bz2", "tar.xz")
 
 	sinterstr = "(?P<name>%s?)(?P<ver>.*)" % prefix
 	sdirstr = "(?P<name>%s)(?P<ver>.*)\.(?P<type>%s$)" % (prefix, suffix)
@@ -322,7 +328,7 @@ python do_checkpkg() {
 			which is designed for check purpose but we override check command for our own purpose
 			"""
 			ld = bb.data.createCopy(d)
-			bb.data.setVar('CHECKCOMMAND_wget', "/usr/bin/env wget -t 1 --passive-ftp -O %s '${URI}'" \
+			bb.data.setVar('CHECKCOMMAND_wget', "/usr/bin/env wget -t 1 --passive-ftp -O %s --user-agent=\"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.12) Gecko/20101027 Ubuntu/9.10 (karmic) Firefox/3.6.12\" '${URI}'" \
 					% tmpf.name, d)
 			bb.data.update_data(ld)
 
@@ -420,7 +426,7 @@ python do_checkpkg() {
 			"""match "{PN}-5.21.1.tar.gz">{PN}-5.21.1.tar.gz """
 			pn1 = re.search("^%s" % prefix, curname).group()
 			s = "[^\"]*%s[^\d\"]*?(\d+[\.\-_])+[^\"]*" % pn1
-			searchstr = "[hH][rR][eE][fF]=\"%s\">" % s
+			searchstr = "[hH][rR][eE][fF]=\"%s\".*>" % s
 			reg = re.compile(searchstr)
 	
 			valid = 0
@@ -460,10 +466,22 @@ python do_checkpkg() {
 	bb.utils.mkdirhier(logpath)
 	logfile = os.path.join(logpath, "checkpkg.csv")
 
+	"""initialize log files for package report system"""
+	logfile2 = os.path.join(logpath, "get_pkg_info.log")
+
 	"""generate package information from .bb file"""
 	pname = bb.data.getVar('PN', d, 1)
 	pdesc = bb.data.getVar('DESCRIPTION', d, 1)
 	pgrp = bb.data.getVar('SECTION', d, 1)
+	pversion = bb.data.getVar('PV', d, 1)
+	plicense = bb.data.getVar('LICENSE',d,1)
+	psection = bb.data.getVar('SECTION',d,1)
+	phome = bb.data.getVar('HOMEPAGE', d, 1)
+	prelease = bb.data.getVar('PR',d,1)
+	ppriority = bb.data.getVar('PRIORITY',d,1)
+	pdepends = bb.data.getVar('DEPENDS',d,1)
+	pbugtracker = bb.data.getVar('BUGTRACKER',d,1)
+	ppe = bb.data.getVar('PE',d,1)
 
 	found = 0
 	for uri in src_uri.split():
@@ -609,6 +627,14 @@ python do_checkpkg() {
 		  (pname, maintainer, pproto, pcurver, pmver, pupver, pmstatus, pstatus))
 	f.close()
 	bb.utils.unlockfile(lf)
+
+  	"""write into get_pkg_info log file to supply data for package report system"""
+	lf2 = bb.utils.lockfile(logfile2 + ".lock")
+	f2 = open(logfile2, "a")
+	f2.write("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n" % \
+		  (pname,pversion,pupver,plicense,psection, phome,prelease, ppriority,pdepends,pbugtracker,ppe,pdesc,pstatus,pmver))
+	f2.close()
+	bb.utils.unlockfile(lf2)
 }
 
 addtask checkpkgall after do_checkpkg
-- 
1.6.3.3


