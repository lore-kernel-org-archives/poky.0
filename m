Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6D904C8110B
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:28:54 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Jan 2011 06:28:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="650513969"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2011 06:28:54 -0800
Message-Id: <ed3a29f00eb1b7b4aaa3a876caf741fadc1d61db.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Tue, 18 Jan 2011 21:53:36 +0800
Date: Mon, 24 Jan 2011 22:32:40 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 02/21] bb.fetch2: add unpack method in fetcher
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
X-List-Received-Date: Mon, 24 Jan 2011 14:28:55 -0000

copy exactly the base.bbclass:oe_unpack_file() to bb.fetch2 as the code base

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |   84 +++++++++++++++++++++++++++++++++++++
 1 files changed, 84 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 751e514..4b4ac47 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -259,6 +259,13 @@ def verify_checksum(u, ud, d):
                      ud.sha256_expected, sha256data)
         raise FetchError("%s checksum mismatch." % u)
 
+def subprocess_setup():
+    import signal
+    # Python installs a SIGPIPE handler by default. This is usually not what
+    # non-Python subprocesses expect.
+    # SIGPIPE errors are known issues with gzip/bash
+    signal.signal(signal.SIGPIPE, signal.SIG_DFL)
+
 def go(d, urls = None):
     """
     Fetch all urls
@@ -629,6 +636,83 @@ class Fetch(object):
         """
         raise NoMethodError("Missing implementation for url")
 
+    def unpack(file, data, url = None):
+        import subprocess
+        if not url:
+            url = "file://%s" % file
+        dots = file.split(".")
+        if dots[-1] in ['gz', 'bz2', 'Z']:
+            efile = os.path.join(bb.data.getVar('WORKDIR', data, 1),os.path.basename('.'.join(dots[0:-1])))
+        else:
+            efile = file
+        cmd = None
+        if file.endswith('.tar'):
+            cmd = 'tar x --no-same-owner -f %s' % file
+        elif file.endswith('.tgz') or file.endswith('.tar.gz') or file.endswith('.tar.Z'):
+            cmd = 'tar xz --no-same-owner -f %s' % file
+        elif file.endswith('.tbz') or file.endswith('.tbz2') or file.endswith('.tar.bz2'):
+            cmd = 'bzip2 -dc %s | tar x --no-same-owner -f -' % file
+        elif file.endswith('.gz') or file.endswith('.Z') or file.endswith('.z'):
+            cmd = 'gzip -dc %s > %s' % (file, efile)
+        elif file.endswith('.bz2'):
+            cmd = 'bzip2 -dc %s > %s' % (file, efile)
+        elif file.endswith('.tar.xz'):
+            cmd = 'xz -dc %s | tar x --no-same-owner -f -' % file
+        elif file.endswith('.xz'):
+            cmd = 'xz -dc %s > %s' % (file, efile)
+        elif file.endswith('.zip') or file.endswith('.jar'):
+            cmd = 'unzip -q -o'
+            (type, host, path, user, pswd, parm) = bb.decodeurl(url)
+            if 'dos' in parm:
+                cmd = '%s -a' % cmd
+            cmd = "%s '%s'" % (cmd, file)
+        elif os.path.isdir(file):
+            filesdir = os.path.realpath(bb.data.getVar("FILESDIR", data, 1))
+            destdir = "."
+            if file[0:len(filesdir)] == filesdir:
+                destdir = file[len(filesdir):file.rfind('/')]
+                destdir = destdir.strip('/')
+                if len(destdir) < 1:
+                    destdir = "."
+                elif not os.access("%s/%s" % (os.getcwd(), destdir), os.F_OK):
+                    os.makedirs("%s/%s" % (os.getcwd(), destdir))
+            cmd = 'cp -pPR %s %s/%s/' % (file, os.getcwd(), destdir)
+        else:
+            (type, host, path, user, pswd, parm) = bb.decodeurl(url)
+            if not 'patch' in parm:
+                # The "destdir" handling was specifically done for FILESPATH
+                # items.  So, only do so for file:// entries.
+                if type == "file" and path.find("/") != -1:
+                    destdir = path.rsplit("/", 1)[0]
+                else:
+                    destdir = "."
+                bb.mkdirhier("%s/%s" % (os.getcwd(), destdir))
+                cmd = 'cp %s %s/%s/' % (file, os.getcwd(), destdir)
+
+        if not cmd:
+            return True
+
+        dest = os.path.join(os.getcwd(), os.path.basename(file))
+        if os.path.exists(dest):
+            if os.path.samefile(file, dest):
+                return True
+
+        # Change to subdir before executing command
+        save_cwd = os.getcwd();
+        parm = bb.decodeurl(url)[5]
+        if 'subdir' in parm:
+            newdir = ("%s/%s" % (os.getcwd(), parm['subdir']))
+            bb.mkdirhier(newdir)
+            os.chdir(newdir)
+
+        cmd = "PATH=\"%s\" %s" % (bb.data.getVar('PATH', data, 1), cmd)
+        bb.note("Unpacking %s to %s/" % (file, os.getcwd()))
+        ret = subprocess.call(cmd, preexec_fn=subprocess_setup, shell=True)
+
+        os.chdir(save_cwd)
+
+        return ret == 0
+
     def try_premirror(self, url, urldata, d):
         """
         Should premirrors be used?
-- 
1.7.0.4


