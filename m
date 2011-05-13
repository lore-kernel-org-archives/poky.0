Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 558504C8026D
	for <poky@yoctoproject.org>; Fri, 13 May 2011 01:59:46 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 23:59:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,362,1301900400"; 
   d="scan'208";a="1693660"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2011 23:59:45 -0700
Message-Id: <748c06bb7ff87fb396298084a35cb0eb45a088c1.1305269419.git.lei.mei@intel.com>
In-Reply-To: <cover.1305269419.git.lei.mei@intel.com>
References: <cover.1305269419.git.lei.mei@intel.com>
Old-Date: Fri, 13 May 2011 14:46:30 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 2/2] distrodata.bbclass: Add checklicense task
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
Date: Fri, 13 May 2011 06:59:46 -0000
X-Original-Date: 五, 13  5月 2011 15:04:50 +0800
X-List-Received-Date: Fri, 13 May 2011 06:59:46 -0000

From: Mei Lei <lei.mei@intel.com>

This task will check which license text is missing

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/distrodata.bbclass |   88 ++++++++++++++++++++++++---------------
 1 files changed, 54 insertions(+), 34 deletions(-)

diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index 905dad7..58a2cf7 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -4,18 +4,8 @@ addhandler distro_eventhandler
 python distro_eventhandler() {
 
     if bb.event.getName(e) == "BuildStarted":
-	"""initialize log files."""
-	logpath = bb.data.getVar('LOG_DIR', e.data, 1)
-	bb.utils.mkdirhier(logpath)
-	logfile = os.path.join(logpath, "distrodata.%s.csv" % bb.data.getVar('DATETIME', e.data, 1))
-	if not os.path.exists(logfile):
-		slogfile = os.path.join(logpath, "distrodata.csv")
-		if os.path.exists(slogfile):
-			os.remove(slogfile)
-		os.system("touch %s" % logfile)
-		os.symlink(logfile, slogfile)
-		bb.data.setVar('LOG_FILE', logfile, e.data)
-
+	import oe.distro_check as dc
+	logfile = dc.create_log_file(e.data,"distrodata.csv")
 	lf = bb.utils.lockfile(logfile + ".lock")
 	f = open(logfile, "a")
 	f.write("Package,Description,Owner,License,ChkSum,Status,VerMatch,Version,Upsteam,Non-Update,Reason,Recipe Status\n")
@@ -211,17 +201,8 @@ do_distrodataall() {
 addhandler checkpkg_eventhandler
 python checkpkg_eventhandler() {
     if bb.event.getName(e) == "BuildStarted":
-	"""initialize log files."""
-	logpath = bb.data.getVar('LOG_DIR', e.data, 1)
-	bb.utils.mkdirhier(logpath)
-	logfile = os.path.join(logpath, "checkpkg.%s.csv" % bb.data.getVar('DATETIME', e.data, 1))
-	if not os.path.exists(logfile):
-		slogfile = os.path.join(logpath, "checkpkg.csv")
-		if os.path.exists(slogfile):
-			os.remove(slogfile)
-		os.system("touch %s" % logfile)
-		os.symlink(logfile, slogfile)
-		bb.data.setVar('LOG_FILE', logfile, e.data)
+	import oe.distro_check as dc
+	logfile = dc.create_log_file(e.data,"checkpkg.csv")
 
 	lf = bb.utils.lockfile(logfile + ".lock")
 	f = open(logfile, "a")
@@ -662,17 +643,8 @@ python check_eventhandler() {
         distro_check_dir = os.path.join(tmpdir, "distro_check")
         datetime = bb.data.getVar('DATETIME', e.data, 1)
         """initialize log files."""
-        logpath = bb.data.getVar('LOG_DIR', e.data, 1)
-        bb.utils.mkdirhier(logpath)
-        logfile = os.path.join(logpath, "distrocheck.%s.csv" % bb.data.getVar('DATETIME', e.data, 1))
-        if not os.path.exists(logfile):
-                slogfile = os.path.join(logpath, "distrocheck.csv")
-                if os.path.exists(slogfile):
-                        os.remove(slogfile)
-                os.system("touch %s" % logfile)
-                os.symlink(logfile, slogfile)
-                bb.data.setVar('LOG_FILE', logfile, e.data)
-
+        import oe.distro_check as dc
+        logfile = dc.create_log_file(e.data,"distrocheck.csv")
     return
 }
 
@@ -701,3 +673,51 @@ do_distro_checkall[nostamp] = "1"
 do_distro_checkall() {
 	:
 }
+##Check Missing License Text
+addhandler checklicense_eventhandler
+python checklicense_eventhandler() {
+    if bb.event.getName(e) == "BuildStarted":
+        """initialize log files."""
+        import oe.distro_check as dc
+        logfile = dc.create_log_file(e.data,"missinglicense.csv")
+        lf = bb.utils.lockfile(logfile + ".lock")
+        f = open(logfile, "a")
+        f.write("Package\tLicense\tMissingLicense\n")
+        f.close()
+        bb.utils.unlockfile(lf)
+    return
+}
+
+addtask checklicense
+do_checklicense[nostamp] = "1"
+python do_checklicense() {
+    import os
+    import bb
+    import shutil
+    logpath = bb.data.getVar('LOG_DIR', d, 1)
+    bb.utils.mkdirhier(logpath)
+    pn = bb.data.getVar('PN',d,1)
+    logfile = os.path.join(logpath, "missinglicense.csv")
+    generic_directory = bb.data.getVar('COMMON_LICENSE_DIR', d, True)
+    license_types = bb.data.getVar('LICENSE', d, True)
+    for license_type in ((license_types.replace('+', '').replace('|', '&')
+                          .replace('(', '').replace(')', '').replace(';', '')
+                          .replace(',', '').replace(" ", "").split("&"))):
+        if not os.path.isfile(os.path.join(generic_directory, license_type)):
+            lf = bb.utils.lockfile(logfile + ".lock")
+            f = open(logfile,"a") 
+            f.write("%s\t%s\t%s\n" % \
+        		(pn,license_types,license_type))
+            f.close()
+            bb.utils.unlockfile(lf)
+    return
+}
+
+addtask checklicenseall after do_checklicense
+do_checklicenseall[recrdeptask] = "do_checklicense"
+do_checklicenseall[nostamp] = "1"
+do_checklicenseall() {
+	:
+}
+
+
-- 
1.6.3.3


