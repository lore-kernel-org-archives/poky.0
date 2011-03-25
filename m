Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39F6A4C800AC
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 03:26:39 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Mar 2011 01:26:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,242,1299484800"; d="scan'208";a="901685570"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga001.fm.intel.com with ESMTP; 25 Mar 2011 01:26:38 -0700
Message-Id: <5645c98fd60d9fe4fdf6b142d7e603bfd4ed7c16.1301041428.git.lei.mei@intel.com>
In-Reply-To: <cover.1301041428.git.lei.mei@intel.com>
References: <cover.1301041428.git.lei.mei@intel.com>
Old-Date: Fri, 25 Mar 2011 16:18:21 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 1/1] distrodata.bbclass: Merge the get_pkg_info.log into checkpkg.csv
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
Date: Fri, 25 Mar 2011 08:26:39 -0000
X-Original-Date: 五, 25  3月 2011 16:27:59 +0800
X-List-Received-Date: Fri, 25 Mar 2011 08:26:39 -0000

From: Mei Lei <lei.mei@intel.com>

For easy view the check package result, merge the two files into checkpkg.csv, after that, the package report system will use checkpkg.csv instead of get_pkg_info.log.

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/distrodata.bbclass |   29 +++++++----------------------
 1 files changed, 7 insertions(+), 22 deletions(-)

diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index e2cc8fa..905dad7 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -225,17 +225,9 @@ python checkpkg_eventhandler() {
 
 	lf = bb.utils.lockfile(logfile + ".lock")
 	f = open(logfile, "a")
-	f.write("Package\tOwner\tURI Type\tVersion\tTracking\tUpstream\tTMatch\tRMatch\n")
+	f.write("Package\tVersion\tUpver\tLicense\tSection\tHome\tRelease\tPriority\tDepends\tBugTracker\tPE\tDescription\tStatus\tTracking\tURI\tMAINTAINER\n")
         f.close()
         bb.utils.unlockfile(lf)
-	"""initialize log files for package report system"""
-	logfile2 = os.path.join(logpath, "get_pkg_info.%s.log" % bb.data.getVar('DATETIME', e.data, 1))
-	if not os.path.exists(logfile2):
-		slogfile2 = os.path.join(logpath, "get_pkg_info.log")
-		if os.path.exists(slogfile2):
-			os.remove(slogfile2)
-		os.system("touch %s" % logfile2)
-		os.symlink(logfile2, slogfile2)
     return
 }
 
@@ -459,8 +451,6 @@ python do_checkpkg() {
 	logpath = bb.data.getVar('LOG_DIR', d, 1)
 	bb.utils.mkdirhier(logpath)
 	logfile = os.path.join(logpath, "checkpkg.csv")
-	"""initialize log files for package report system"""
-	logfile2 = os.path.join(logpath, "get_pkg_info.log")
 
 	"""generate package information from .bb file"""
 	pname = bb.data.getVar('PN', d, 1)
@@ -582,7 +572,7 @@ python do_checkpkg() {
 				result = bb.utils.vercmp(("0", puptag, ""), ("0", plocaltag, ""))
 				if result > 0:
 					verflag = 1
-					pstatus = "UPADTE"
+					pstatus = "UPDATE"
 					pupver = puptag
 				elif verflag == 0 :
 					pupver = plocaltag
@@ -646,20 +636,15 @@ python do_checkpkg() {
 			pmstatus = "UPDATE"
 	
 	maintainer = bb.data.getVar('RECIPE_MAINTAINER', d, True)
+	psrcuri = psrcuri.split()[0]
+	pdepends = "".join(pdepends.split("\t"))
+	pdesc = "".join(pdesc.split("\t"))
 	lf = bb.utils.lockfile(logfile + ".lock")
 	f = open(logfile, "a")
-	f.write("%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n" % \
-		  (pname, maintainer, pproto, pcurver, pmver, pupver, pmstatus, pstatus))
+	f.write("%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n" % \
+		  (pname,pversion,pupver,plicense,psection, phome,prelease, ppriority,pdepends,pbugtracker,ppe,pdesc,pstatus,pmver,psrcuri,maintainer))
 	f.close()
 	bb.utils.unlockfile(lf)
-
-	"""write into get_pkg_info log file to supply data for package report system"""
-	lf2 = bb.utils.lockfile(logfile2 + ".lock")
-	f2 = open(logfile2, "a")
-	f2.write("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n" % \
-		  (pname,pversion,pupver,plicense,psection, phome,prelease, ppriority,pdepends,pbugtracker,ppe,pdesc,pstatus,pmver,psrcuri))
-	f2.close()
-	bb.utils.unlockfile(lf2)
 }
 
 addtask checkpkgall after do_checkpkg
-- 
1.6.3.3


