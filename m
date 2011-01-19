Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20AE94C811A7
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 22:19:53 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 6435930416
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 23:19:46 -0500 (EST)
Message-Id: <28c094c17a3f617743ec023c312618feaf4d3b21.1295410231.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295410231.git.scott.a.garman@intel.com>
References: <cover.1295410231.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 11 Jan 2011 23:20:02 -0800
Date: Tue, 18 Jan 2011 20:19:40 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 6435930416.54079
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/9] libtool: fix library RPATHs
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
X-List-Received-Date: Wed, 19 Jan 2011 04:19:53 -0000

Enabling sysroot support exposed a bug where the final library
had an RPATH encoded into it which still pointed to the sysroot.
This works around the issue until it gets sorted out upstream.

Fix suggested by Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-devtools/libtool/libtool.inc          |    3 +-
 .../libtool/libtool/fix-final-rpath.patch          |   36 ++++++++++++++++++++
 2 files changed, 38 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/libtool/libtool/fix-final-rpath.patch

diff --git a/meta/recipes-devtools/libtool/libtool.inc b/meta/recipes-devtools/libtool/libtool.inc
index bccb769..8701c82 100644
--- a/meta/recipes-devtools/libtool/libtool.inc
+++ b/meta/recipes-devtools/libtool/libtool.inc
@@ -13,7 +13,8 @@ SRC_URI = "${GNU_MIRROR}/libtool/libtool-${PV}.tar.gz \
            file://prefix-manpage-fix.patch \
            file://rename-with-sysroot.patch \
            file://resolve-sysroot.patch \
-           file://use-sysroot-in-libpath.patch"
+           file://use-sysroot-in-libpath.patch \
+           file://fix-final-rpath.patch"
 
 do_compile_prepend () {
 	# Sometimes this file doesn't get rebuilt, force the issue
diff --git a/meta/recipes-devtools/libtool/libtool/fix-final-rpath.patch b/meta/recipes-devtools/libtool/libtool/fix-final-rpath.patch
new file mode 100644
index 0000000..402e2c6
--- /dev/null
+++ b/meta/recipes-devtools/libtool/libtool/fix-final-rpath.patch
@@ -0,0 +1,36 @@
+Enalbing sysroot support exposed a bug where the final library
+had an RPATH encoded into it which still pointed to the sysroot.
+This works around the issue until it gets sorted out upstream.
+
+Fix suggested by Richard Purdie <richard.purdie@intel.com>
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
+Index: libtool-2.4/libltdl/config/ltmain.m4sh
+===================================================================
+--- libtool-2.4.orig/libltdl/config/ltmain.m4sh	2011-01-13 14:10:14.580025108 +0000
++++ libtool-2.4/libltdl/config/ltmain.m4sh	2011-01-13 15:10:18.540025113 +0000
+@@ -7246,9 +7246,11 @@
+ 	  test "$opt_mode" != relink && rpath="$compile_rpath$rpath"
+ 	  for libdir in $rpath; do
+ 	    if test -n "$hardcode_libdir_flag_spec"; then
++		  func_replace_sysroot "$libdir"
++		  libdir=$func_replace_sysroot_result
++		  func_stripname '=' '' "$libdir"
++		  libdir=$func_stripname_result
+ 	      if test -n "$hardcode_libdir_separator"; then
+-		func_replace_sysroot "$libdir"
+-		libdir=$func_replace_sysroot_result
+ 		if test -z "$hardcode_libdirs"; then
+ 		  hardcode_libdirs="$libdir"
+ 		else
+@@ -7981,6 +7983,10 @@
+       hardcode_libdirs=
+       for libdir in $compile_rpath $finalize_rpath; do
+ 	if test -n "$hardcode_libdir_flag_spec"; then
++	  func_replace_sysroot "$libdir"
++	  libdir=$func_replace_sysroot_result
++	  func_stripname '=' '' "$libdir"
++	  libdir=$func_stripname_result
+ 	  if test -n "$hardcode_libdir_separator"; then
+ 	    if test -z "$hardcode_libdirs"; then
+ 	      hardcode_libdirs="$libdir"
-- 
1.7.1


