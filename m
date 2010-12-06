Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CB664C810AF
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 19:42:45 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 17:42:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="633773190"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 17:42:45 -0800
Message-Id: <cd175abc315b3d7d9e58db1bd9af9d62629a67de.1291683028.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291683028.git.dongxiao.xu@intel.com>
References: <cover.1291683028.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 6 Dec 2010 20:36:15 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/3] sstate.bbclass: Use hard link when staging files into sysroots
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
X-List-Received-Date: Tue, 07 Dec 2010 01:42:46 -0000

Use hard link instead of copy when staging files from sysroot-destdir
into sysroots directory. This can save about 10% disk space for
poky-image-minimal.

If fail, it will fall back to copy function

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/sstate.bbclass |    2 +-
 meta/lib/oe/path.py         |   28 ++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+), 1 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 3696a8c..b6c477b 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -115,7 +115,7 @@ def sstate_install(ss, d):
         locks.append(bb.utils.lockfile(lock))
 
     for state in ss['dirs']:
-        oe.path.copytree(state[1], state[2])
+        oe.path.hardlink(state[1], state[2])
         for walkroot, dirs, files in os.walk(state[1]):
             for file in files:
                 srcpath = os.path.join(walkroot, file)
diff --git a/meta/lib/oe/path.py b/meta/lib/oe/path.py
index f42faea..589b524 100644
--- a/meta/lib/oe/path.py
+++ b/meta/lib/oe/path.py
@@ -106,3 +106,31 @@ def symlink(source, destination, force=False):
     except OSError, e:
         if e.errno != errno.EEXIST or os.readlink(destination) != source:
             raise
+
+def hardlink(src, dst):
+    names = os.listdir(src)
+
+    bb.mkdirhier(dst)
+
+    errors = []
+    for name in names:
+        srcname = os.path.join(src, name)
+        dstname = os.path.join(dst, name)
+        try:
+            if os.path.islink(srcname):
+                linkto = os.readlink(srcname)
+                if os.path.lexists(dstname):
+                    os.unlink(dstname)
+                os.symlink(linkto, dstname)
+            elif os.path.isdir(srcname):
+                hardlink(srcname, dstname)
+            else:
+                ret = os.system("ln -f %s %s" % (srcname, dstname))
+                if ret is False:
+                    bb.utils.copyfile(srcname, dstname)
+        except (IOError, os.error), why:
+            errors.append((srcname, dstname, str(why)))
+        except Error, err:
+            errors.extend(err.args[0])
+    if errors:
+        raise Error, errors
-- 
1.6.3.3


