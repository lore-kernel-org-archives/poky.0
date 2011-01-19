Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id D80834C811FC
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 22:20:50 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 790E530416
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 23:20:42 -0500 (EST)
Message-Id: <eb6ef3a278afad2c78609c5fe148da94db93103b.1295410231.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295410231.git.scott.a.garman@intel.com>
References: <cover.1295410231.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 18 Jan 2011 12:02:23 -0800
Date: Tue, 18 Jan 2011 20:20:39 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 790E530416.89FFB
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 8/9] binutils: fix library RPATHs
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
X-List-Received-Date: Wed, 19 Jan 2011 04:20:51 -0000

This integrates the RPATH fixes we recently applied to libtool.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../binutils/binutils-2.21/libtool-rpath-fix.patch |   36 ++++++++++++++++++++
 meta/recipes-devtools/binutils/binutils_2.21.bb    |    1 +
 2 files changed, 37 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/binutils/binutils-2.21/libtool-rpath-fix.patch

diff --git a/meta/recipes-devtools/binutils/binutils-2.21/libtool-rpath-fix.patch b/meta/recipes-devtools/binutils/binutils-2.21/libtool-rpath-fix.patch
new file mode 100644
index 0000000..a0058c1
--- /dev/null
+++ b/meta/recipes-devtools/binutils/binutils-2.21/libtool-rpath-fix.patch
@@ -0,0 +1,36 @@
+Enabling sysroot support in libtool exposed a bug where the final
+library had an RPATH encoded into it which still pointed to the
+sysroot. This works around the issue until it gets sorted out
+upstream.
+
+Fix suggested by Richard Purdie <richard.purdie@linuxfoundation.org> 
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
+diff -urN binutils-2.21.orig//ltmain.sh binutils-2.21/ltmain.sh
+--- binutils-2.21.orig//ltmain.sh	2011-01-18 11:50:40.821710085 -0800
++++ binutils-2.21/ltmain.sh	2011-01-18 11:51:38.774952785 -0800
+@@ -8035,9 +8035,11 @@
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
+@@ -8770,6 +8772,10 @@
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
diff --git a/meta/recipes-devtools/binutils/binutils_2.21.bb b/meta/recipes-devtools/binutils/binutils_2.21.bb
index 8282eb8..1375126 100644
--- a/meta/recipes-devtools/binutils/binutils_2.21.bb
+++ b/meta/recipes-devtools/binutils/binutils_2.21.bb
@@ -27,6 +27,7 @@ SRC_URI = "\
      file://libtool-2.4-update.patch \
      file://binutils-2.19.1-ld-sysroot.patch \
      file://libiberty_path_fix.patch \
+     file://libtool-rpath-fix.patch \
 # Need to consult w/ Mark Hatle to get this patch updated:
 #     file://binutils-poison.patch \
      "
-- 
1.7.1


