Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 773004C80FA8
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 04:31:36 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Dec 2010 02:31:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,360,1288594800"; d="scan'208";a="688124513"
Received: from unknown (HELO helios.localnet) ([10.255.16.84])
	by orsmga001.jf.intel.com with ESMTP; 17 Dec 2010 02:31:29 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Fri, 17 Dec 2010 10:31:27 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1292523172.git.paul.eggleton@linux.intel.com>
	<e6ddab5faef1cbb1d47d2eb873c7123bee09e6d5.1292523172.git.paul.eggleton@linux.intel.com>
In-Reply-To: <e6ddab5faef1cbb1d47d2eb873c7123bee09e6d5.1292523172.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201012171031.27613.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 3/3] sanity.bbclass: add check for creation of long filenames
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
X-List-Received-Date: Fri, 17 Dec 2010 10:31:36 -0000
X-Groupsio-MsgNum: 1415
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_/vzCNWrUNjGR/2u"

--Boundary-00=_/vzCNWrUNjGR/2u
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

It seems that in my haste yesterday I neglected to commit some changes before posting the 3rd patch. Correct patch is attached (and contrib branch paule/sanity-checks has been updated).

Cheers,
Paul

--Boundary-00=_/vzCNWrUNjGR/2u
Content-Type: text/x-patch;
  charset="UTF-8";
  name="sanity-filename-length.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="sanity-filename-length.patch"

commit c028532cdf98f310cb043fa3770a2f5b9b4a10bb
Author: Paul Eggleton <paul.eggleton@linux.intel.com>
Date:   Thu Dec 16 17:35:31 2010 +0000

    sanity.bbclass: add check for creation of long filenames
    
    Detect and fail if filesystem in use for TMPDIR or SSTATE_DIR has an
    unreasonably short file name length limit (eg. eCryptFS). This can cause
    "file name too long" errors during poky builds (e.g. when writing sstate
    files for packages with a git revision as the version).
    
    Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 969cc2e..9d183e3 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -21,18 +21,41 @@ def check_conf_exists(fn, data):
             return True
     return False
 
-def check_sanity_sstate_dir_change():
+def check_sanity_sstate_dir_change(sstate_dir):
     # Sanity checks to be done when the value of SSTATE_DIR changes
-    return ""
 
-def check_sanity_tmpdir_change():
+    # Check that SSTATE_DIR isn't on a filesystem with limited filename length (eg. eCryptFS)
+    testmsg = ""
+    if sstate_dir != "":
+        testmsg = check_create_long_filename(sstate_dir, "SSTATE_DIR")
+    return testmsg
+
+def check_sanity_tmpdir_change(tmpdir):
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
 
@@ -206,13 +229,13 @@ def check_sanity(e):
     sanity_version = int(data.getVar('SANITY_VERSION', e.data, True) or 1)
     if last_sanity_version < sanity_version: 
         messages = messages + check_sanity_version_change()
-        messages = messages + check_sanity_tmpdir_change()
-        messages = messages + check_sanity_sstate_dir_change()
+        messages = messages + check_sanity_tmpdir_change(tmpdir)
+        messages = messages + check_sanity_sstate_dir_change(sstate_dir)
     else: 
         if last_tmpdir != tmpdir:
-            messages = messages + check_sanity_tmpdir_change()
+            messages = messages + check_sanity_tmpdir_change(tmpdir)
         if last_sstate_dir != sstate_dir:
-            messages = messages + check_sanity_sstate_dir_change()
+            messages = messages + check_sanity_sstate_dir_change(sstate_dir)
 
     if os.path.exists("conf"):
         f = file(sanityverfile, 'w')

--Boundary-00=_/vzCNWrUNjGR/2u--
