Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 685B94C800AB
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 14:40:17 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BKeHVT020117
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 12:40:17 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 12:40:16 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 12:40:16 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 11 Feb 2011 14:37:48 -0600
Message-Id: <60b24e25985b7c2f9d6cce0ff00a8a7ea37cfee9.1297456506.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297456506.git.mark.hatle@windriver.com>
References: <cover.1297456506.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297456506.git.mark.hatle@windriver.com>
References: <cover.1297456506.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 11 Feb 2011 20:40:16.0691 (UTC)
	FILETIME=[E3F26830:01CBCA2B]
Subject: [PATCH 1/1] fetch2: unpack revision
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
X-List-Received-Date: Fri, 11 Feb 2011 20:40:17 -0000

Revise the unpack function to have a way to disable the unpack.  This is
based on the work from "Andreas Oberritter <obi@opendreambox.org>", see
http://cgit.openembedded.net/cgit.cgi/openembedded/commit/?id=2bdfe8519eda8067845019a699acdf19a21ba380

In addition, the to_boolean function comes from the work of
"Chris Larson <chris_larson@mentor.com>", see
http://cgit.openembedded.net/cgit.cgi/openembedded/commit/?id=900cc29b603691eb3a077cb660545ead3715ed54

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 bitbake/lib/bb/fetch2/__init__.py      |   92 ++++++++++++++++++-------------
 bitbake/lib/bb/utils.py                |   12 ++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb |    2 +-
 3 files changed, 66 insertions(+), 40 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 9356487..3e5a9b7 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -637,6 +637,13 @@ class FetchMethod(object):
         import subprocess
         iterate = False
         file = urldata.localpath
+
+        try:
+            unpack = bb.utils.to_boolean(urldata.parm.get('unpack'), True)
+        except ValueError, exc:
+            bb.fatal("Invalid value for 'unpack' parameter for %s: %s" %
+                     (file, urldata.parm.get('unpack')))
+
         dots = file.split(".")
         if dots[-1] in ['gz', 'bz2', 'Z']:
             efile = os.path.join(bb.data.getVar('WORKDIR', data, True),os.path.basename('.'.join(dots[0:-1])))
@@ -644,34 +651,41 @@ class FetchMethod(object):
             efile = file
         cmd = None
 
-        if file.endswith('.tar'):
-            cmd = 'tar x --no-same-owner -f %s' % file
-        elif file.endswith('.tgz') or file.endswith('.tar.gz') or file.endswith('.tar.Z'):
-            cmd = 'tar xz --no-same-owner -f %s' % file
-        elif file.endswith('.tbz') or file.endswith('.tbz2') or file.endswith('.tar.bz2'):
-            cmd = 'bzip2 -dc %s | tar x --no-same-owner -f -' % file
-        elif file.endswith('.gz') or file.endswith('.Z') or file.endswith('.z'):
-            cmd = 'gzip -dc %s > %s' % (file, efile)
-        elif file.endswith('.bz2'):
-            cmd = 'bzip2 -dc %s > %s' % (file, efile)
-        elif file.endswith('.tar.xz'):
-            cmd = 'xz -dc %s | tar x --no-same-owner -f -' % file
-        elif file.endswith('.xz'):
-            cmd = 'xz -dc %s > %s' % (file, efile)
-        elif file.endswith('.zip') or file.endswith('.jar'):
-            cmd = 'unzip -q -o'
-            if 'dos' in urldata.parm:
-                cmd = '%s -a' % cmd
-            cmd = "%s '%s'" % (cmd, file)
-        elif file.endswith('.src.rpm') or file.endswith('.srpm'):
-            if 'unpack' in urldata.parm:
-                unpack_file = ("%s" % urldata.parm['unpack'])
-                cmd = 'rpm2cpio.sh %s | cpio -i %s' % (file, unpack_file)
-                iterate = True
-                iterate_file = unpack_file
-            else:
-                cmd = 'rpm2cpio.sh %s | cpio -i' % (file)
-        else:
+        if unpack:
+            if file.endswith('.tar'):
+                cmd = 'tar x --no-same-owner -f %s' % file
+            elif file.endswith('.tgz') or file.endswith('.tar.gz') or file.endswith('.tar.Z'):
+                cmd = 'tar xz --no-same-owner -f %s' % file
+            elif file.endswith('.tbz') or file.endswith('.tbz2') or file.endswith('.tar.bz2'):
+                cmd = 'bzip2 -dc %s | tar x --no-same-owner -f -' % file
+            elif file.endswith('.gz') or file.endswith('.Z') or file.endswith('.z'):
+                cmd = 'gzip -dc %s > %s' % (file, efile)
+            elif file.endswith('.bz2'):
+                cmd = 'bzip2 -dc %s > %s' % (file, efile)
+            elif file.endswith('.tar.xz'):
+                cmd = 'xz -dc %s | tar x --no-same-owner -f -' % file
+            elif file.endswith('.xz'):
+                cmd = 'xz -dc %s > %s' % (file, efile)
+            elif file.endswith('.zip') or file.endswith('.jar'):
+                try:
+                    dos = bb.utils.to_boolean(urldata.parm.get('dos'), False)
+                except ValueError, exc:
+                    bb.fatal("Invalid value for 'dos' parameter for %s: %s" %
+                             (file, urldata.parm.get('dos')))
+                cmd = 'unzip -q -o'
+                if dos:
+                    cmd = '%s -a' % cmd
+                cmd = "%s '%s'" % (cmd, file)
+            elif file.endswith('.src.rpm') or file.endswith('.srpm'):
+                if 'extract' in urldata.parm:
+                    unpack_file = urldata.parm.get('extract')
+                    cmd = 'rpm2cpio.sh %s | cpio -i %s' % (file, unpack_file)
+                    iterate = True
+                    iterate_file = unpack_file
+                else:
+                    cmd = 'rpm2cpio.sh %s | cpio -i' % (file)
+
+        if not unpack or not cmd:
             # If file == dest, then avoid any copies, as we already put the file into dest!
             dest = os.path.join(rootdir, os.path.basename(file))
             if (file != dest) and not (os.path.exists(dest) and os.path.samefile(file, dest)):
@@ -685,17 +699,17 @@ class FetchMethod(object):
                             destdir = "."
                         elif not os.access("%s/%s" % (rootdir, destdir), os.F_OK):
                             os.makedirs("%s/%s" % (rootdir, destdir))
-                    cmd = 'cp -pPR %s %s/%s/' % (file, rootdir, destdir)
+                    #cmd = 'cp -pPR %s %s/%s/' % (file, rootdir, destdir)
+                    cmd = 'tar -cf - -C "%d" -ps . | tar -xf - -C "%s/%s/"' % (file, rootdir, destdir)
                 else:
-                    if not 'patch' in urldata.parm:
-                        # The "destdir" handling was specifically done for FILESPATH
-                        # items.  So, only do so for file:// entries.
-                        if urldata.type == "file" and urldata.path.find("/") != -1:
-                           destdir = urldata.path.rsplit("/", 1)[0]
-                        else:
-                           destdir = "."
-                        bb.mkdirhier("%s/%s" % (rootdir, destdir))
-                        cmd = 'cp %s %s/%s/' % (file, rootdir, destdir)
+                    # The "destdir" handling was specifically done for FILESPATH
+                    # items.  So, only do so for file:// entries.
+                    if urldata.type == "file" and urldata.path.find("/") != -1:
+                       destdir = urldata.path.rsplit("/", 1)[0]
+                    else:
+                       destdir = "."
+                    bb.mkdirhier("%s/%s" % (rootdir, destdir))
+                    cmd = 'cp %s %s/%s/' % (file, rootdir, destdir)
 
         if not cmd:
             return
@@ -704,7 +718,7 @@ class FetchMethod(object):
         save_cwd = os.getcwd();
         os.chdir(rootdir)
         if 'subdir' in urldata.parm:
-            newdir = ("%s/%s" % (rootdir, urldata.parm['subdir']))
+            newdir = ("%s/%s" % (rootdir, urldata.parm.get('subdir')))
             bb.mkdirhier(newdir)
             os.chdir(newdir)
 
diff --git a/bitbake/lib/bb/utils.py b/bitbake/lib/bb/utils.py
index 0b5aa0d..b2f8bb6 100644
--- a/bitbake/lib/bb/utils.py
+++ b/bitbake/lib/bb/utils.py
@@ -831,3 +831,15 @@ def init_logger(logger, verbose, debug, debug_domains):
 
     if debug_domains:
         bb.msg.set_debug_domains(debug_domains)
+
+def to_boolean(string, default=None):
+    if not string:
+        return default
+
+    normalized = string.lower()
+    if normalized in ("y", "yes", "1", "true"):
+        return True
+    elif normalized in ("n", "no", "0", "false"):
+        return False
+    else:
+        raise ValueError("Invalid value for to_boolean: %s" % string)
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index 566325e..56fcd9c 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -47,7 +47,7 @@ PR = "r11"
 
 # rpm2cpio is a shell script, which is part of the rpm src.rpm.  It is needed
 # in order to extract the distribution SRPM into a format we can extract...
-SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;unpack=rpm-5.4.0.tar.gz \
+SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;extract=rpm-5.4.0.tar.gz \
 	   file://perfile_rpmdeps.sh \
 	   file://rpm-autogen.patch \
 	   file://rpm-libsql-fix.patch \
-- 
1.7.3.4


