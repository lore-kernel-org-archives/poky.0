Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A6C54C81219
	for <poky@yoctoproject.org>; Sat, 14 May 2011 00:55:34 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 May 2011 22:55:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,367,1301900400"; d="scan'208";a="435994582"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by azsmga001.ch.intel.com with ESMTP; 13 May 2011 22:55:27 -0700
Message-Id: <cc2d2e6af0c96a441c567a4a82865064428b6f6a.1305352141.git.lei.mei@intel.com>
In-Reply-To: <cover.1305352141.git.lei.mei@intel.com>
References: <cover.1305352141.git.lei.mei@intel.com>
Old-Date: Sat, 14 May 2011 13:33:02 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 1/1] distro_check: Fix a bug in distro_check.py
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
Date: Sat, 14 May 2011 05:55:34 -0000
X-Original-Date: 六, 14  5月 2011 14:00:42 +0800
X-List-Received-Date: Sat, 14 May 2011 05:55:34 -0000

From: Mei Lei <lei.mei@intel.com>

distro_check.py: Fix a bug when creating log file, due to we have created the log file in check_eventhandler, we need to remove the log generate process in save_distro_check_result.
distrodata.bbclass: Sync with distro_check.py change.

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/classes/distrodata.bbclass |    9 +++++++--
 meta/lib/oe/distro_check.py     |    9 +--------
 2 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/meta/classes/distrodata.bbclass b/meta/classes/distrodata.bbclass
index 58a2cf7..b6c2c72 100644
--- a/meta/classes/distrodata.bbclass
+++ b/meta/classes/distrodata.bbclass
@@ -644,7 +644,7 @@ python check_eventhandler() {
         datetime = bb.data.getVar('DATETIME', e.data, 1)
         """initialize log files."""
         import oe.distro_check as dc
-        logfile = dc.create_log_file(e.data,"distrocheck.csv")
+        result_file = dc.create_log_file(e.data,"distrocheck.csv")
     return
 }
 
@@ -653,10 +653,15 @@ do_distro_check[nostamp] = "1"
 python do_distro_check() {
     """checks if the package is present in other public Linux distros"""
     import oe.distro_check as dc
+    import bb
+    import shutil
     localdata = bb.data.createCopy(d)
     bb.data.update_data(localdata)
     tmpdir = bb.data.getVar('TMPDIR', d, 1)
     distro_check_dir = os.path.join(tmpdir, "distro_check")
+    logpath = bb.data.getVar('LOG_DIR', d, 1)
+    bb.utils.mkdirhier(logpath)
+    result_file = os.path.join(logpath, "distrocheck.csv")
     datetime = bb.data.getVar('DATETIME', localdata, 1)
     dc.update_distro_data(distro_check_dir, datetime)
 
@@ -664,7 +669,7 @@ python do_distro_check() {
     result = dc.compare_in_distro_packages_list(distro_check_dir, d)
 
     # save the results
-    dc.save_distro_check_result(result, datetime, d)
+    dc.save_distro_check_result(result, datetime, result_file, d)
 }
 
 addtask distro_checkall after do_distro_check
diff --git a/meta/lib/oe/distro_check.py b/meta/lib/oe/distro_check.py
index 134e92a..e00215a 100644
--- a/meta/lib/oe/distro_check.py
+++ b/meta/lib/oe/distro_check.py
@@ -356,7 +356,7 @@ def create_log_file(d, logname):
     return logfile
 
 
-def save_distro_check_result(result, datetime, d):
+def save_distro_check_result(result, datetime, result_file, d):
     pn = bb.data.getVar('PN', d, True)
     logdir = bb.data.getVar('LOG_DIR', d, True)
     if not logdir:
@@ -364,16 +364,9 @@ def save_distro_check_result(result, datetime, d):
         return
     if not os.path.isdir(logdir):
         os.makedirs(logdir)
-    result_file = os.path.join(logdir, "distrocheck.%s.csv" % datetime)
     line = pn
     for i in result:
         line = line + "," + i
-    if not os.path.exists(result_file):
-        sresult_file = os.path.join(logdir, "distrocheck.csv")
-	if os.path.exists(sresult_file):
-	    os.remove(sresult_file)
-	os.system("touch %s" % result_file)
-	os.symlink(result_file, sresult_file)
     f = open(result_file, "a")
     import fcntl
     fcntl.lockf(f, fcntl.LOCK_EX)
-- 
1.6.3.3


