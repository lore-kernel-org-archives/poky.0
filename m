Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A06E54C811DC
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 12:16:17 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 10:16:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,356,1288594800"; d="scan'208";a="868980594"
Received: from unknown (HELO helios) ([10.255.16.41])
	by fmsmga001.fm.intel.com with SMTP; 16 Dec 2010 10:16:16 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 16 Dec 2010 18:16:13 +0000
Message-Id: <e6ddab5faef1cbb1d47d2eb873c7123bee09e6d5.1292523172.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1292523172.git.paul.eggleton@linux.intel.com>
References: <cover.1292523172.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 16 Dec 2010 17:35:31 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] sanity.bbclass: add check for creation of long filenames
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
X-List-Received-Date: Thu, 16 Dec 2010 18:16:17 -0000

Detect and fail if filesystem in use for TMPDIR or SSTATE_DIR has an
unreasonably short file name length limit (eg. eCryptFS). This can cause
"file name too long" errors during poky builds (e.g. when writing sstate
files for packages with a git revision as the version).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/sanity.bbclass |   28 ++++++++++++++++++++++++++--
 1 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 969cc2e..fce0cbd 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -23,16 +23,40 @@ def check_conf_exists(fn, data):
 
 def check_sanity_sstate_dir_change():
     # Sanity checks to be done when the value of SSTATE_DIR changes
-    return ""
+    # Check that SSTATE_DIR isn't on a filesystem with limited filename length (eg. eCryptFS)
+    #
+    testmsg = ""
+    sstatedir = data.getVar('SSTATE_DIR', e.data, True) or ''
+    if sstatedir != "":
+        testmsg = check_create_long_filename(sstatedir, "SSTATE_DIR")
+    return testmsg
 
 def check_sanity_tmpdir_change():
     # Sanity checks to be done when the value of TMPDIR changes
-    return ""
+
+    # Check that TMPDIR isn't on a filesystem with limited filename length (eg. eCryptFS)
+    testmsg = check_create_long_filename(tmpdir, "TMPDIR")
+    return testmsg
         
 def check_sanity_version_change():
     # Sanity checks to be done when SANITY_VERSION changes
     return ""
     
+def check_create_long_filename(filepath, pathname):
+    testfile = os.path.join(filepath, ''.join([`num`[-1] for num in xrange(1,200)]))
+    try:
+        if not os.path.exists(filepath):
+            bb.utils.mkdirhier(filepath)
+        f = file(testfile, "w")
+        f.close()
+        os.remove(testfile)
+    except IOError as (errno, strerror):
+        if errno == 36: # ENAMETOOLONG
+            return "Failed to create a file with a long name in %s. Please use a filesystem that does not unreasonably limit filename length.\n" % pathname
+        else:
+            return "Failed to create a file in %s: %s" % (pathname, strerror)
+    return ""
+
 def check_sanity(e):
     from bb import note, error, data, __version__
 
-- 
1.7.1


