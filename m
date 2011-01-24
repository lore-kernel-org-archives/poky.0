Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58ECD4C811F7
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:28:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Jan 2011 06:28:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="379088251"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 24 Jan 2011 06:28:57 -0800
Message-Id: <f5c65edcec7c7d7af267ca947a7a044b277bddda.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 22:08:09 +0800
Date: Mon, 24 Jan 2011 22:32:42 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 03/21] bb.fetch2: revise the Fetch.unpack API
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
X-List-Received-Date: Mon, 24 Jan 2011 14:28:58 -0000

change the unpack to use the urldata and rootdir parameter
- urldata is the FetchData instance
- rootdir is the dir to put the extracted source. the original unpack
  use current dir (os.getcwd) as destination dir, which is not flexible
  and error-prone (error will occur if caller not chdir to dest dir)

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |   33 +++++++++++++++------------------
 1 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 4b4ac47..c5b5272 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -636,10 +636,9 @@ class Fetch(object):
         """
         raise NoMethodError("Missing implementation for url")
 
-    def unpack(file, data, url = None):
+    def unpack(self, urldata, rootdir, data):
         import subprocess
-        if not url:
-            url = "file://%s" % file
+        file = urldata.localpath
         dots = file.split(".")
         if dots[-1] in ['gz', 'bz2', 'Z']:
             efile = os.path.join(bb.data.getVar('WORKDIR', data, 1),os.path.basename('.'.join(dots[0:-1])))
@@ -662,8 +661,7 @@ class Fetch(object):
             cmd = 'xz -dc %s > %s' % (file, efile)
         elif file.endswith('.zip') or file.endswith('.jar'):
             cmd = 'unzip -q -o'
-            (type, host, path, user, pswd, parm) = bb.decodeurl(url)
-            if 'dos' in parm:
+            if 'dos' in urldata.parm:
                 cmd = '%s -a' % cmd
             cmd = "%s '%s'" % (cmd, file)
         elif os.path.isdir(file):
@@ -674,34 +672,33 @@ class Fetch(object):
                 destdir = destdir.strip('/')
                 if len(destdir) < 1:
                     destdir = "."
-                elif not os.access("%s/%s" % (os.getcwd(), destdir), os.F_OK):
-                    os.makedirs("%s/%s" % (os.getcwd(), destdir))
-            cmd = 'cp -pPR %s %s/%s/' % (file, os.getcwd(), destdir)
+                elif not os.access("%s/%s" % (rootdir, destdir), os.F_OK):
+                    os.makedirs("%s/%s" % (rootdir, destdir))
+            cmd = 'cp -pPR %s %s/%s/' % (file, rootdir, destdir)
         else:
-            (type, host, path, user, pswd, parm) = bb.decodeurl(url)
-            if not 'patch' in parm:
+            if not 'patch' in urldata.parm:
                 # The "destdir" handling was specifically done for FILESPATH
                 # items.  So, only do so for file:// entries.
-                if type == "file" and path.find("/") != -1:
-                    destdir = path.rsplit("/", 1)[0]
+                if urldata.type == "file" and urldata.path.find("/") != -1:
+                    destdir = urldata.path.rsplit("/", 1)[0]
                 else:
                     destdir = "."
-                bb.mkdirhier("%s/%s" % (os.getcwd(), destdir))
-                cmd = 'cp %s %s/%s/' % (file, os.getcwd(), destdir)
+                bb.mkdirhier("%s/%s" % (rootdir, destdir))
+                cmd = 'cp %s %s/%s/' % (file, rootdir, destdir)
 
         if not cmd:
             return True
 
-        dest = os.path.join(os.getcwd(), os.path.basename(file))
+        dest = os.path.join(rootdir, os.path.basename(file))
         if os.path.exists(dest):
             if os.path.samefile(file, dest):
                 return True
 
         # Change to subdir before executing command
         save_cwd = os.getcwd();
-        parm = bb.decodeurl(url)[5]
-        if 'subdir' in parm:
-            newdir = ("%s/%s" % (os.getcwd(), parm['subdir']))
+        os.chdir(rootdir)
+        if 'subdir' in urldata.parm:
+            newdir = ("%s/%s" % (rootdir, urldata.parm['subdir']))
             bb.mkdirhier(newdir)
             os.chdir(newdir)
 
-- 
1.7.0.4


