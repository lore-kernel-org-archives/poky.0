Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 43F614C800C0
	for <poky@yoctoproject.org>; Fri, 13 May 2011 01:59:45 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 May 2011 23:59:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,362,1301900400"; 
   d="scan'208";a="1159547"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2011 23:59:44 -0700
Message-Id: <767202df6b1d0044bd0b56bf4f50b8a69ceb18b5.1305269419.git.lei.mei@intel.com>
In-Reply-To: <cover.1305269419.git.lei.mei@intel.com>
References: <cover.1305269419.git.lei.mei@intel.com>
Old-Date: Fri, 13 May 2011 13:59:58 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 1/2] distro_check.py: Add a new function to reduce the repeat code
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
Date: Fri, 13 May 2011 06:59:45 -0000
X-Original-Date: 五, 13  5月 2011 15:04:49 +0800
X-List-Received-Date: Fri, 13 May 2011 06:59:45 -0000

From: Mei Lei <lei.mei@intel.com>

A lot of repeat code in distrodata.bbclass when creating log file, we can define a function called create_log_file to do it.

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/lib/oe/distro_check.py |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/meta/lib/oe/distro_check.py b/meta/lib/oe/distro_check.py
index c85d4fb..134e92a 100644
--- a/meta/lib/oe/distro_check.py
+++ b/meta/lib/oe/distro_check.py
@@ -341,6 +341,21 @@ def compare_in_distro_packages_list(distro_check_dir, d):
     bb.note("Matching: %s" % matching_distros)
     return matching_distros
 
+def create_log_file(d, logname):
+    #logpath = bb.data.getVar('LOG_DIR', e.data, 1)
+    logpath = bb.data.getVar('LOG_DIR', d, 1)
+    bb.utils.mkdirhier(logpath)
+    logfile = logpath +"/" + logname.split(".")[0] + ".%s.csv" % bb.data.getVar('DATETIME', d, 1)
+    if not os.path.exists(logfile):
+            slogfile = os.path.join(logpath, logname)
+            if os.path.exists(slogfile):
+                    os.remove(slogfile)
+            os.system("touch %s" % logfile)
+            os.symlink(logfile, slogfile)
+            bb.data.setVar('LOG_FILE', logfile, d)
+    return logfile
+
+
 def save_distro_check_result(result, datetime, d):
     pn = bb.data.getVar('PN', d, True)
     logdir = bb.data.getVar('LOG_DIR', d, True)
-- 
1.6.3.3


