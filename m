Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 662374C80053
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 10:50:27 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p18GoQw9007452
	for <poky@yoctoproject.org>; Tue, 8 Feb 2011 08:50:27 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 08:50:26 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 08:50:26 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue,  8 Feb 2011 10:47:36 -0600
Message-Id: <b8b86345a7a38ba2ca0cea8adafa7abd26987e01.1297183506.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297183506.git.mark.hatle@windriver.com>
References: <cover.1297183506.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297183506.git.mark.hatle@windriver.com>
References: <cover.1297183506.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 08 Feb 2011 16:50:26.0566 (UTC)
	FILETIME=[49271260:01CBC7B0]
Subject: [PATCH 1/2] fetch2: Add SRPM knowledge
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
X-List-Received-Date: Tue, 08 Feb 2011 16:50:27 -0000

Enable the fetcher to be able to unpack and SRPM.  By default the system will
unpack the contents of the SRPM into the WORKDIR.

A new syntax "unpack=file" was developed for the SRC_URI, to allow for a
recipe to extract a specific file within an SRPM.  An unpack operation will
then be executed on the extracted file.

In order to apply extracted patches (or unpack files not specified with
unpack), you must specify the path using WORKDIR, i.e.:

file://${WORKDIR}/mypatch.patch

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 bitbake/lib/bb/fetch2/__init__.py      |   62 +++++++++++++++++++------------
 meta/recipes-devtools/rpm/rpm_5.4.0.bb |   52 +-------------------------
 scripts/rpm2cpio.sh                    |   53 +++++++++++++++++++++++++++
 3 files changed, 93 insertions(+), 74 deletions(-)
 create mode 100755 scripts/rpm2cpio.sh

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index bbd7da1..25cb0a0 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -607,6 +607,7 @@ class FetchMethod(object):
 
     def unpack(self, urldata, rootdir, data):
         import subprocess
+        iterate = False
         file = urldata.localpath
         dots = file.split(".")
         if dots[-1] in ['gz', 'bz2', 'Z']:
@@ -614,6 +615,7 @@ class FetchMethod(object):
         else:
             efile = file
         cmd = None
+
         if file.endswith('.tar'):
             cmd = 'tar x --no-same-owner -f %s' % file
         elif file.endswith('.tgz') or file.endswith('.tar.gz') or file.endswith('.tar.Z'):
@@ -633,36 +635,43 @@ class FetchMethod(object):
             if 'dos' in urldata.parm:
                 cmd = '%s -a' % cmd
             cmd = "%s '%s'" % (cmd, file)
-        elif os.path.isdir(file):
-            filesdir = os.path.realpath(bb.data.getVar("FILESDIR", data, True))
-            destdir = "."
-            if file[0:len(filesdir)] == filesdir:
-                destdir = file[len(filesdir):file.rfind('/')]
-                destdir = destdir.strip('/')
-                if len(destdir) < 1:
-                    destdir = "."
-                elif not os.access("%s/%s" % (rootdir, destdir), os.F_OK):
-                    os.makedirs("%s/%s" % (rootdir, destdir))
-            cmd = 'cp -pPR %s %s/%s/' % (file, rootdir, destdir)
+        elif file.endswith('.src.rpm') or file.endswith('.srpm'):
+            if 'unpack' in urldata.parm:
+                unpack_file = ("%s" % urldata.parm['unpack'])
+                cmd = 'rpm2cpio.sh %s | cpio -i %s' % (file, unpack_file)
+                iterate = True
+                iterate_file = unpack_file
+            else:
+                cmd = 'rpm2cpio.sh %s | cpio -i' % (file)
         else:
-            if not 'patch' in urldata.parm:
-                # The "destdir" handling was specifically done for FILESPATH
-                # items.  So, only do so for file:// entries.
-                if urldata.type == "file" and urldata.path.find("/") != -1:
-                    destdir = urldata.path.rsplit("/", 1)[0]
-                else:
+            # If file == dest, then avoid any copies, as we already put the file into dest!
+            dest = os.path.join(rootdir, os.path.basename(file))
+            if (file != dest) and not (os.path.exists(dest) and os.path.samefile(file, dest)):
+                if os.path.isdir(file):
+                    filesdir = os.path.realpath(bb.data.getVar("FILESDIR", data, True))
                     destdir = "."
-                bb.mkdirhier("%s/%s" % (rootdir, destdir))
-                cmd = 'cp %s %s/%s/' % (file, rootdir, destdir)
+                    if file[0:len(filesdir)] == filesdir:
+                        destdir = file[len(filesdir):file.rfind('/')]
+                        destdir = destdir.strip('/')
+                        if len(destdir) < 1:
+                            destdir = "."
+                        elif not os.access("%s/%s" % (rootdir, destdir), os.F_OK):
+                            os.makedirs("%s/%s" % (rootdir, destdir))
+                    cmd = 'cp -pPR %s %s/%s/' % (file, rootdir, destdir)
+                else:
+                    if not 'patch' in urldata.parm:
+                        # The "destdir" handling was specifically done for FILESPATH
+                        # items.  So, only do so for file:// entries.
+                        if urldata.type == "file" and urldata.path.find("/") != -1:
+                           destdir = urldata.path.rsplit("/", 1)[0]
+                        else:
+                           destdir = "."
+                        bb.mkdirhier("%s/%s" % (rootdir, destdir))
+                        cmd = 'cp %s %s/%s/' % (file, rootdir, destdir)
 
         if not cmd:
             return
 
-        dest = os.path.join(rootdir, os.path.basename(file))
-        if os.path.exists(dest):
-            if os.path.samefile(file, dest):
-                return
-
         # Change to subdir before executing command
         save_cwd = os.getcwd();
         os.chdir(rootdir)
@@ -680,6 +689,11 @@ class FetchMethod(object):
         if ret != 0:
             raise UnpackError("Unpack command %s failed with return value %s" % (cmd, ret), urldata.url)
 
+        if iterate is True:
+            iterate_urldata = urldata
+            iterate_urldata.localpath = "%s/%s" % (rootdir, iterate_file)
+            self.unpack(urldata, rootdir, data)
+
         return
 
     def try_premirror(self, url, urldata, d):
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index ba1a2a2..566325e 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -43,12 +43,11 @@ LICENSE = "LGPL 2.1"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1"
 
 DEPENDS = "bzip2 zlib python perl db openssl elfutils expat libpcre attr acl popt"
-PR = "r10"
+PR = "r11"
 
 # rpm2cpio is a shell script, which is part of the rpm src.rpm.  It is needed
 # in order to extract the distribution SRPM into a format we can extract...
-SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm \
-	   file://rpm2cpio;md5=1850f9872a4803f5165bfd5816274275 \
+SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;unpack=rpm-5.4.0.tar.gz \
 	   file://perfile_rpmdeps.sh \
 	   file://rpm-autogen.patch \
 	   file://rpm-libsql-fix.patch \
@@ -66,8 +65,6 @@ SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm \
 SRC_URI[md5sum] = "19c1a7f68d7765eeb7615c9c4e54e380"
 SRC_URI[sha256sum] = "887e76218308b570c33c8c2fb10b5298b3afd5d602860d281befc85357b3b923"
 
-SRPM_UNPACK = "rpm-5.4.0.tar.gz"
-
 inherit autotools gettext
 
 acpaths = "-I ${S}/db/dist/aclocal -I ${S}/db/dist/aclocal_java"
@@ -328,51 +325,6 @@ FILE_${PN}-dev = "${includedir}/rpm \
 ###%{_rpmhome}/lib/librpmjsm.la
 ###%{_rpmhome}/lib/librpmjsm.so
 
-def subprocess_setup():
-    import signal
-    # Python installs a SIGPIPE handler by default. This is usually not what
-    # non-Python subprocesses expect.
-    # SIGPIPE errors are known issues with gzip/bash
-    signal.signal(signal.SIGPIPE, signal.SIG_DFL)
-
-# If base_do_unpack is refactored this may have to be adjusted
-python base_do_unpack_append() {
-	import subprocess
-
-	for url in bb.data.getVar("SRC_URI", d, True).split():
-		local = bb.fetch2.localpath(url, d)
-		if local is None:
-			continue
-		local = os.path.realpath(local)
-
-		if local.endswith('.src.rpm') or local.endswith('.srpm'):
-			cmdname = os.path.join(bb.data.getVar('WORKDIR', localdata, 1),'rpm2cpio')
-			efile = os.path.join(bb.data.getVar('WORKDIR', localdata, 1),os.path.basename(local))
-			cmd = "%s %s | cpio -i" % (cmdname, efile)
-			cmd = "PATH=\"%s\" %s" % (bb.data.getVar('PATH', localdata, 1), cmd)
-			old_cwd = os.getcwd()
-			newdir = os.path.join(d.getVar("WORKDIR", True), 'srpm-unpack')
-			bb.mkdirhier(newdir)
-			os.chdir(newdir)
-			ret = subprocess.call(cmd, preexec_fn=subprocess_setup, shell=True)
-			os.chdir(old_cwd)
-			if ret != 0:
-				raise bb.build.FuncFailed('Unpack command failed: %s (%s)' % (cmd, ret))
-
-	srpm_uri = bb.data.getVar('SRPM_UNPACK', localdata, True).split()
-	if len(srpm_uri) == 0:
-		return
-
-	rootdir = bb.data.getVar('WORKDIR', localdata, True)
-	srpm_file_uri = [ "file://" + rootdir + "/srpm-unpack/" + uri for uri in srpm_uri]; 
-
-	try:
-		fetcher = bb.fetch2.Fetch(srpm_file_uri, localdata, cache=False)
-		fetcher.unpack(rootdir, srpm_file_uri)
-	except bb.fetch2.BBFetchException, e:
-		raise bb.build.FuncFailed(e)
-}
-
 do_configure() {
 	# Disable tests!
 	echo "all:" > tests/Makefile.am
diff --git a/scripts/rpm2cpio.sh b/scripts/rpm2cpio.sh
new file mode 100755
index 0000000..426fd77
--- /dev/null
+++ b/scripts/rpm2cpio.sh
@@ -0,0 +1,53 @@
+#!/bin/sh
+
+# This comes from the RPM5 5.4.0 distribution.
+
+pkg=$1
+if [ "$pkg" = "" -o ! -e "$pkg" ]; then
+    echo "no package supplied" 1>&2
+   exit 1
+fi
+
+leadsize=96
+o=`expr $leadsize + 8`
+set `od -j $o -N 8 -t u1 $pkg`
+il=`expr 256 \* \( 256 \* \( 256 \* $2 + $3 \) + $4 \) + $5`
+dl=`expr 256 \* \( 256 \* \( 256 \* $6 + $7 \) + $8 \) + $9`
+# echo "sig il: $il dl: $dl"
+
+sigsize=`expr 8 + 16 \* $il + $dl`
+o=`expr $o + $sigsize + \( 8 - \( $sigsize \% 8 \) \) \% 8 + 8`
+set `od -j $o -N 8 -t u1 $pkg`
+il=`expr 256 \* \( 256 \* \( 256 \* $2 + $3 \) + $4 \) + $5`
+dl=`expr 256 \* \( 256 \* \( 256 \* $6 + $7 \) + $8 \) + $9`
+# echo "hdr il: $il dl: $dl"
+
+hdrsize=`expr 8 + 16 \* $il + $dl`
+o=`expr $o + $hdrsize`
+EXTRACTOR="dd if=$pkg ibs=$o skip=1"
+
+COMPRESSION=`($EXTRACTOR |file -) 2>/dev/null`
+if echo $COMPRESSION |grep -q gzip; then
+	DECOMPRESSOR=gunzip
+elif echo $COMPRESSION |grep -q bzip2; then
+	DECOMPRESSOR=bunzip2
+elif echo $COMPRESSION |grep -q xz; then
+	DECOMPRESSOR=unxz
+elif echo $COMPRESSION |grep -q cpio; then
+	DECOMPRESSOR=cat
+else
+	# Most versions of file don't support LZMA, therefore we assume
+	# anything not detected is LZMA
+	DECOMPRESSOR=`which unlzma 2>/dev/null`
+	case "$DECOMPRESSOR" in
+	    /* ) ;;
+	    *  ) DECOMPRESSOR=`which lzmash 2>/dev/null`
+	         case "$DECOMPRESSOR" in
+	             /* ) DECOMPRESSOR="lzmash -d -c" ;;
+	             *  ) DECOMPRESSOR=cat ;;
+	         esac
+	         ;;
+	esac
+fi
+
+$EXTRACTOR 2>/dev/null | $DECOMPRESSOR
-- 
1.7.3.4


