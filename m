Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46DD84C80B71
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 12:16:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 10:16:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,356,1288594800"; d="scan'208";a="868980560"
Received: from unknown (HELO helios) ([10.255.16.41])
	by fmsmga001.fm.intel.com with SMTP; 16 Dec 2010 10:16:13 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 16 Dec 2010 18:16:10 +0000
Message-Id: <387ce856c9bbb5670fb4618b13f2752070e65b80.1292523172.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1292523172.git.paul.eggleton@linux.intel.com>
References: <cover.1292523172.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 16 Dec 2010 16:25:13 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/3] sanity.bbclass: allow minimisation of impact of more invasive sanity checks
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
X-List-Received-Date: Thu, 16 Dec 2010 18:16:15 -0000

Add a mechanism to avoid running more invasive checks every time bitbake is
invoked. Adds a file in conf/ (i.e. under user's build directory) that
tracks a new variable SANITY_VERSION (set in sanity.conf) as well as TMPDIR
and SSTATE_DIR, allowing checks to be run when these are changed.

Fixes [BUGID #562]

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/sanity.bbclass |   48 ++++++++++++++++++++++++++++++++++++++++++-
 meta/conf/sanity.conf       |    1 +
 2 files changed, 48 insertions(+), 1 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 6dc4716..969cc2e 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -21,6 +21,18 @@ def check_conf_exists(fn, data):
             return True
     return False
 
+def check_sanity_sstate_dir_change():
+    # Sanity checks to be done when the value of SSTATE_DIR changes
+    return ""
+
+def check_sanity_tmpdir_change():
+    # Sanity checks to be done when the value of TMPDIR changes
+    return ""
+        
+def check_sanity_version_change():
+    # Sanity checks to be done when SANITY_VERSION changes
+    return ""
+    
 def check_sanity(e):
     from bb import note, error, data, __version__
 
@@ -173,10 +185,44 @@ def check_sanity(e):
         if os.path.exists('%s/libc.so.6' % lib32path) and not os.path.exists('/usr/include/gnu/stubs-32.h'):
             messages = messages + "You have a 32-bit libc, but no 32-bit headers.  You must install the 32-bit libc headers.\n"
 
+    tmpdir = data.getVar('TMPDIR', e.data, True)
+    sstate_dir = data.getVar('SSTATE_DIR', e.data, True)
+
+    # Check saved sanity info
+    last_sanity_version = 0
+    last_tmpdir = ""
+    last_sstate_dir = ""
+    sanityverfile = 'conf/sanity_info'
+    if os.path.exists(sanityverfile):
+        f = file(sanityverfile, 'r')
+        for line in f:
+            if line.startswith('SANITY_VERSION'):
+                last_sanity_version = int(line.split()[1])
+            if line.startswith('TMPDIR'):
+                last_tmpdir = line.split()[1]
+            if line.startswith('SSTATE_DIR'):
+                last_sstate_dir = line.split()[1]
+    
+    sanity_version = int(data.getVar('SANITY_VERSION', e.data, True) or 1)
+    if last_sanity_version < sanity_version: 
+        messages = messages + check_sanity_version_change()
+        messages = messages + check_sanity_tmpdir_change()
+        messages = messages + check_sanity_sstate_dir_change()
+    else: 
+        if last_tmpdir != tmpdir:
+            messages = messages + check_sanity_tmpdir_change()
+        if last_sstate_dir != sstate_dir:
+            messages = messages + check_sanity_sstate_dir_change()
+
+    if os.path.exists("conf"):
+        f = file(sanityverfile, 'w')
+        f.write("SANITY_VERSION %s\n" % sanity_version) 
+        f.write("TMPDIR %s\n" % tmpdir) 
+        f.write("SSTATE_DIR %s\n" % sstate_dir) 
+
     #
     # Check that TMPDIR hasn't changed location since the last time we were run
     #
-    tmpdir = data.getVar('TMPDIR', e.data, True)
     checkfile = os.path.join(tmpdir, "saved_tmpdir")
     if os.path.exists(checkfile):
         f = file(checkfile, "r")
diff --git a/meta/conf/sanity.conf b/meta/conf/sanity.conf
index eab7619..1fbeb61 100644
--- a/meta/conf/sanity.conf
+++ b/meta/conf/sanity.conf
@@ -7,6 +7,7 @@ BB_MIN_VERSION = "1.8.10"
 
 SANITY_ABIFILE = "${TMPDIR}/abi_version"
 
+SANITY_VERSION = "1"
 POKY_CONF_VERSION  = "1"
 LAYER_CONF_VERSION = "3"
 SITE_CONF_VERSION  = "1"
-- 
1.7.1


