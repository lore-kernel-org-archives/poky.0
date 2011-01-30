Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 400354C80B5F
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 03:07:43 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jan 2011 01:07:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="652540041"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 01:07:42 -0800
Message-Id: <21c61a94e98d86f7ff4019b5f623c4199c4a6f73.1296378252.git.lei.mei@intel.com>
In-Reply-To: <cover.1296378252.git.lei.mei@intel.com>
References: <cover.1296378252.git.lei.mei@intel.com>
Old-Date: Sun, 30 Jan 2011 15:28:46 +0800
Date: Sun, 30 Jan 2011 17:07:10 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 1/1] distrodata.bbclass: Imporve the checkpkg task more precisely and generate data for pkg-report-system
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
X-List-Received-Date: Sun, 30 Jan 2011 09:07:43 -0000

From: Mei Lei <lei.mei@intel.com>

Imporve some regular expression when checking recipes' upstream version, reduce the number of invalid recipes' upstream version and imporve the precision
Generate some data for package report system.

Signed-off-by: Mei Lei<lei.mei@intel.com>
---
 meta/classes/distrodata.bbclass |   35 +++++++++++++++++++++++++++++++----
 1 files changed, 31 insertions(+), 4 deletions(-)

diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index e5f84d0..868f656 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -229,7 +229,14 @@ python checkpkg_eventhandler() {
 	f.write("Package\tOwner\tURI Type\tVersion\tTracking\tUpstream\tTMatch\tRMatch\n")
         f.close()
         bb.utils.unlockfile(lf)
-
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
 
@@ -322,7 +329,7 @@ python do_checkpkg() {
 			which is designed for check purpose but we override check command for our own purpose
 			"""
 			ld = bb.data.createCopy(d)
-			bb.data.setVar('CHECKCOMMAND_wget', "/usr/bin/env wget -t 1 --passive-ftp -O %s '${URI}'" \
+			bb.data.setVar('CHECKCOMMAND_wget', "/usr/bin/env wget -t 1 --passive-ftp -O %s --user-agent=\"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.12) Gecko/20101027 Ubuntu/9.10 (karmic) Firefox/3.6.12\" '${URI}'" \
 					% tmpf.name, d)
 			bb.data.update_data(ld)
 
@@ -420,7 +427,7 @@ python do_checkpkg() {
 			"""match "{PN}-5.21.1.tar.gz">{PN}-5.21.1.tar.gz """
 			pn1 = re.search("^%s" % prefix, curname).group()
 			s = "[^\"]*%s[^\d\"]*?(\d+[\.\-_])+[^\"]*" % pn1
-			searchstr = "[hH][rR][eE][fF]=\"%s\">" % s
+			searchstr = "[hH][rR][eE][fF]=\"%s\".*>" % s
 			reg = re.compile(searchstr)
 	
 			valid = 0
@@ -438,7 +445,7 @@ python do_checkpkg() {
 				status = "ErrParseDir"
 			else:
 				"""newver still contains a full package name string"""
-				status = re.search("(\d+[.\-_])*\d+", newver[1]).group()
+				status = re.search("(\d+[.\-_])*[0-9a-zA-Z]+", newver[1]).group()
 		elif not len(fhtml):
 			status = "ErrHostNoDir"
 
@@ -459,11 +466,23 @@ python do_checkpkg() {
 	logpath = bb.data.getVar('LOG_DIR', d, 1)
 	bb.utils.mkdirhier(logpath)
 	logfile = os.path.join(logpath, "checkpkg.csv")
+	"""initialize log files for package report system"""
+	logfile2 = os.path.join(logpath, "get_pkg_info.log")
 
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
+	psrcuri = bb.data.getVar('SRC_URI',d,1)
 
 	found = 0
 	for uri in src_uri.split():
@@ -609,6 +628,14 @@ python do_checkpkg() {
 		  (pname, maintainer, pproto, pcurver, pmver, pupver, pmstatus, pstatus))
 	f.close()
 	bb.utils.unlockfile(lf)
+
+	"""write into get_pkg_info log file to supply data for package report system"""
+	lf2 = bb.utils.lockfile(logfile2 + ".lock")
+	f2 = open(logfile2, "a")
+	f2.write("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n" % \
+		  (pname,pversion,pupver,plicense,psection, phome,prelease, ppriority,pdepends,pbugtracker,ppe,pdesc,pstatus,pmver,psrcuri))
+	f2.close()
+	bb.utils.unlockfile(lf2)
 }
 
 addtask checkpkgall after do_checkpkg
-- 
1.6.3.3


