Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A106B4C8006D
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 08:58:33 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BEwXdn016944
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 06:58:33 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 06:58:32 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 06:58:32 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 11 Feb 2011 08:55:59 -0600
Message-Id: <bf556ec4a2a5df87235facd93e31bc8f177f7390.1297435715.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297435715.git.mark.hatle@windriver.com>
References: <cover.1297435715.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297435715.git.mark.hatle@windriver.com>
References: <cover.1297435715.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 11 Feb 2011 14:58:32.0685 (UTC)
	FILETIME=[269B61D0:01CBC9FC]
Subject: [PATCH 1/4] package.bbclass: Breakout the strip from the populate_packages
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
X-List-Received-Date: Fri, 11 Feb 2011 14:58:33 -0000

Break out the file split/strip from the populate_packages.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package.bbclass |   58 ++++++++++++++++++++++++++----------------
 1 files changed, 36 insertions(+), 22 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index fd29aaa..fa1abf0 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -11,24 +11,27 @@
 #
 # b) package_do_split_locales - Split out the locale files, updates FILES and PACKAGES
 #
-# c) populate_packages - Split the files in PKGD into separate packages in PKGDEST/<pkgname>
+# c) split_and_strip_files - split the files into runtime and debug and strip them.
+#    Debug files include debug info split, and associated sources that end up in -dbg packages
+#
+# d) populate_packages - Split the files in PKGD into separate packages in PKGDEST/<pkgname>
 #    Also triggers the binary stripping code to put files in -dbg packages.
 #
-# d) package_do_filedeps - Collect perfile run-time dependency metadata
+# e) package_do_filedeps - Collect perfile run-time dependency metadata
 #    The data is stores in FILER{PROVIDES,DEPENDS}_file_pkg variables with
 #    a list of affected files in FILER{PROVIDES,DEPENDS}FLIST_pkg
 #
-# e) package_do_shlibs - Look at the shared libraries generated and autotmatically add any 
+# f) package_do_shlibs - Look at the shared libraries generated and autotmatically add any 
 #    depenedencies found. Also stores the package name so anyone else using this library 
 #    knows which package to depend on.
 #
-# f) package_do_pkgconfig - Keep track of which packages need and provide which .pc files
+# g) package_do_pkgconfig - Keep track of which packages need and provide which .pc files
 #
-# g) read_shlibdeps - Reads the stored shlibs information into the metadata
+# h) read_shlibdeps - Reads the stored shlibs information into the metadata
 #
-# h) package_depchains - Adds automatic dependencies to -dbg and -dev packages
+# i) package_depchains - Adds automatic dependencies to -dbg and -dev packages
 #
-# i) emit_pkgdata - saves the packaging data into PKGDATA_DIR for use in later 
+# j) emit_pkgdata - saves the packaging data into PKGDATA_DIR for use in later 
 #    packaging steps
 
 inherit packagedata
@@ -163,7 +166,7 @@ python () {
 }
 
 def runstrip(file, d):
-    # Function to strip a single file, called from populate_packages below
+    # Function to strip a single file, called from split_and_strip_files below
     # A working 'file' (one which works on the target architecture)
     # is necessary for this stuff to work, hence the addition to do_package[depends]
 
@@ -329,16 +332,11 @@ python perform_packagecopy () {
 	os.system('tar -cf - -C %s -ps . | tar -xf - -C %s' % (dest, dvar))
 }
 
-python populate_packages () {
-	import glob, stat, errno, re
+python split_and_strip_files () {
+	import stat
 
-	workdir = bb.data.getVar('WORKDIR', d, True)
-	outdir = bb.data.getVar('DEPLOY_DIR', d, True)
 	dvar = bb.data.getVar('PKGD', d, True)
-	packages = bb.data.getVar('PACKAGES', d, True)
-	pn = bb.data.getVar('PN', d, True)
 
-	bb.mkdirhier(outdir)
 	os.chdir(dvar)
 
 	def isexec(path):
@@ -348,6 +346,28 @@ python populate_packages () {
 			return 0
 		return (s[stat.ST_MODE] & stat.S_IEXEC)
 
+	# Figure out which packages we want to process
+	if (bb.data.getVar('INHIBIT_PACKAGE_STRIP', d, True) != '1'):
+		for root, dirs, files in os.walk(dvar):
+			for f in files:
+				file = os.path.join(root, f)
+				if not os.path.islink(file) and not os.path.isdir(file) and isexec(file):
+					runstrip(file, d)
+
+}
+
+python populate_packages () {
+	import glob, stat, errno, re
+
+	workdir = bb.data.getVar('WORKDIR', d, True)
+	outdir = bb.data.getVar('DEPLOY_DIR', d, True)
+	dvar = bb.data.getVar('PKGD', d, True)
+	packages = bb.data.getVar('PACKAGES', d, True)
+	pn = bb.data.getVar('PN', d, True)
+
+	bb.mkdirhier(outdir)
+	os.chdir(dvar)
+
 	# Sanity check PACKAGES for duplicates - should be moved to 
 	# sanity.bbclass once we have the infrastucture
 	package_list = []
@@ -360,13 +380,6 @@ python populate_packages () {
 		else:
 			package_list.append(pkg)
 
-	if (bb.data.getVar('INHIBIT_PACKAGE_STRIP', d, True) != '1'):
-		for root, dirs, files in os.walk(dvar):
-			for f in files:
-				file = os.path.join(root, f)
-				if not os.path.islink(file) and not os.path.isdir(file) and isexec(file):
-					runstrip(file, d)
-
 	pkgdest = bb.data.getVar('PKGDEST', d, True)
 	os.system('rm -rf %s' % pkgdest)
 
@@ -1081,6 +1094,7 @@ PACKAGE_PREPROCESS_FUNCS ?= ""
 PACKAGEFUNCS ?= "perform_packagecopy \
                 ${PACKAGE_PREPROCESS_FUNCS} \
 		package_do_split_locales \
+		split_and_strip_files \
 		populate_packages \
 		package_do_filedeps \
 		package_do_shlibs \
-- 
1.7.3.4


