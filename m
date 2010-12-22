Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1374C4C80FAC
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:25:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Dec 2010 05:25:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="870876991"
Received: from unknown (HELO localhost) ([10.239.48.108])
	by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2010 05:25:05 -0800
Message-Id: <b8e0678dffa131473118455a3d363a83accd542b.1293023813.git.lei.mei@intel.com>
In-Reply-To: <cover.1293023813.git.lei.mei@intel.com>
References: <cover.1293023813.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Old-Date: Wed, 22 Dec 2010 20:55:25 +0800
Date: Wed, 22 Dec 2010 21:22:23 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/3] distrodata.bbclass: Change for package report system
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
X-List-Received-Date: Wed, 22 Dec 2010 13:25:07 -0000

Add some code to generate data for package report system. Fix some bugs when checking upstrem version.

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/distrodata.bbclass |   44 +++++++++++++++++++++++++++++++-------
 1 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index 0378790..f4eb6fd 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -1,4 +1,3 @@
-
 require conf/distro/include/distro_tracking_fields.inc
 
 addhandler distro_eventhandler
@@ -215,7 +214,6 @@ addhandler checkpkg_eventhandler
 python checkpkg_eventhandler() {
     from bb.event import Handled, NotHandled
     # if bb.event.getName(e) == "TaskStarted":
-
     if bb.event.getName(e) == "BuildStarted":
 	"""initialize log files."""
 	logpath = bb.data.getVar('LOG_DIR', e.data, 1)
@@ -234,6 +232,9 @@ python checkpkg_eventhandler() {
 	f.write("Package\tOwner\tURI Type\tVersion\tTracking\tUpstream\tTMatch\tRMatch\n")
         f.close()
         bb.utils.unlockfile(lf)
+	"""initialize log files for Package Report System"""
+	logpath2 = bb.data.getVar('LOG_DIR', e.data, 1)
+	bb.utils.mkdirhier(logpath2)
 
     return NotHandled
 }
@@ -244,7 +245,6 @@ python do_checkpkg() {
 	import sys
 	import re
 	import tempfile
-
 	"""
 	sanity check to ensure same name and type. Match as many patterns as possible
 	such as:
@@ -262,8 +262,8 @@ python do_checkpkg() {
 	prefix1 = "[a-zA-Z][a-zA-Z0-9]*([\-_][a-zA-Z]\w+)*[\-_]"	# match most patterns which uses "-" as separator to version digits
 	prefix2 = "[a-zA-Z]+"			# a loose pattern such as for unzip552.tar.gz
 	prefix = "(%s|%s)" % (prefix1, prefix2)
-	suffix = "(tar\.gz|tgz|tar\.bz2|zip)"
-	suffixtuple = ("tar.gz", "tgz", "zip", "tar.bz2")
+	suffix = "(tar\.gz|tgz|tar\.bz2|zip|tar\.xz)"
+	suffixtuple = ("tar.gz", "tgz", "zip", "tar.bz2", "tar.xz")
 
 	sinterstr = "(?P<name>%s?)(?P<ver>.*)" % prefix
 	sdirstr = "(?P<name>%s)(?P<ver>.*)\.(?P<type>%s$)" % (prefix, suffix)
@@ -327,7 +327,7 @@ python do_checkpkg() {
 			which is designed for check purpose but we override check command for our own purpose
 			"""
 			ld = bb.data.createCopy(d)
-			bb.data.setVar('CHECKCOMMAND_wget', "/usr/bin/env wget -t 1 --passive-ftp -O %s '${URI}'" \
+			bb.data.setVar('CHECKCOMMAND_wget', "/usr/bin/env wget -t 1 --passive-ftp -O %s --user-agent=\"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.12) Gecko/20101027 Ubuntu/9.10 (karmic) Firefox/3.6.12\" '${URI}'" \
 					% tmpf.name, d)
 			bb.data.update_data(ld)
 
@@ -371,7 +371,7 @@ python do_checkpkg() {
 			else:
 				s = "(\d+[\.\-_])+\d+/?"
 				
-			searchstr = "[hH][rR][eE][fF]=\"%s\">" % s
+			searchstr = "[hH][rR][eE][fF]=\"%s\".*>" % s
 			reg = re.compile(searchstr)
 
 			valid = 0
@@ -425,7 +425,7 @@ python do_checkpkg() {
 			"""match "{PN}-5.21.1.tar.gz">{PN}-5.21.1.tar.gz """
 			pn1 = re.search("^%s" % prefix, curname).group()
 			s = "[^\"]*%s[^\d\"]*?(\d+[\.\-_])+[^\"]*" % pn1
-			searchstr = "[hH][rR][eE][fF]=\"%s\">" % s
+			searchstr = "[hH][rR][eE][fF]=\"%s\".*>" % s
 			reg = re.compile(searchstr)
 	
 			valid = 0
@@ -465,10 +465,30 @@ python do_checkpkg() {
 	bb.utils.mkdirhier(logpath)
 	logfile = os.path.join(logpath, "checkpkg.csv")
 
+	"""initialize log files for package report system"""
+	logpath2 = bb.data.getVar('LOG_DIR', d, 1)
+	bb.utils.mkdirhier(logpath2)
+	logfile2 = os.path.join(logpath2, "get_pkg_info.log.%s" % bb.data.getVar('PN', d, 1))
+	if not os.path.exists(logfile2):
+		slogfile = os.path.join(logpath2, "get_pkg_info.log")
+		if os.path.exists(slogfile):
+			os.remove(slogfile)
+		os.system("touch %s" % logfile2)
+		os.symlink(logfile2, slogfile)
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
@@ -614,6 +634,14 @@ python do_checkpkg() {
 		  (pname, maintainer, pproto, pcurver, pmver, pupver, pmstatus, pstatus))
 	f.close()
 	bb.utils.unlockfile(lf)
+
+  	"""write into get_pkg_info log file to supply data for package report system"""
+	lf2 = bb.utils.lockfile(logfile2 + ".lock")
+	f2 = open(logfile2, "a")
+	f2.write("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n" % \
+		  (pname,pversion,pupver,plicense,psection, phome,prelease, ppriority,pdepends,pbugtracker,ppe,pdesc,pstatus))
+	f2.close()
+	bb.utils.unlockfile(lf2)
 }
 
 addtask checkpkgall after do_checkpkg
-- 
1.6.3.3


