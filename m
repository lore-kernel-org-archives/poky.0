Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E26DEE0145B
	for <poky@yoctoproject.org>; Thu, 11 Oct 2012 11:43:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Oct 2012 11:43:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="225719025"
Received: from duke.jf.intel.com (HELO localhost) ([10.7.199.52])
	by orsmga002.jf.intel.com with ESMTP; 11 Oct 2012 11:43:56 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu, 11 Oct 2012 11:43:55 -0700
Message-Id: <3c9f3ce6b54b10d80bae16238fc5616597df9475.1349980878.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
Subject: [PATCH 7/8] openjade-native: fix undefined Getopts error, use std namespace
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Oct 2012 18:43:57 -0000

From: Dennis Lan <dennis.yxun@gmail.com>

Using Gentoo Linux as the build host, it fails without this patch
Use Getopt::Std in place of getopts.pl.

https://bugs.gentoo.org/show_bug.cgi?id=420083

which following error:
/usr/bin/perl -w ./../msggen.pl -l jstyleModule InterpreterMessages.msg
/usr/bin/perl -w ./../msggen.pl -l jstyleModule DssslAppMessages.msg
Undefined subroutine &main::Getopts called at ./../msggen.pl line 22.
make[2]: *** [InterpreterMessages.h] Error 2
make[2]: *** Waiting for unfinished jobs....
Undefined subroutine &main::Getopts called at ./../msggen.pl line 22.
make[2]: *** [DssslAppMessages.h] Error 2

(from OE-Core rev 169a89b10817b742c063fcd76721e4dbbcca6199)

Signed-off-by: Dennis Lan <dennis.yxun@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../openjade/openjade-1.3.2/msggen.pl.patch        |   44 ++++++++++++++++++++
 .../openjade/openjade-native_1.3.2.bb              |    3 +-
 2 files changed, 46 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/msggen.pl.patch

diff --git a/meta/recipes-devtools/openjade/openjade-1.3.2/msggen.pl.patch b/meta/recipes-devtools/openjade/openjade-1.3.2/msggen.pl.patch
new file mode 100644
index 0000000..b47fd46
--- /dev/null
+++ b/meta/recipes-devtools/openjade/openjade-1.3.2/msggen.pl.patch
@@ -0,0 +1,44 @@
+commit fcc5b94f118495b1a467edcda6c6f631691c3f69
+Author: Dennis Lan <dennis.yxun@gmail.com>
+Date:   Tue Jul 3 09:25:42 2012 +0800
+
+    openjade: fix undefined Getopts error, use std namespace
+    
+    Using Gentoo Linux as the build host, it fails without this patch
+    Use Getopt::Std in place of getopts.pl.
+    
+    Upstream-Status: Inappropriate [no upstream]
+    Original-Author-By: Mike Gilbert <floppym@gentoo.org>
+    Signed-off-by: Dennis Lan <dennis.yxun@gmail.com>
+
+diff --git a/msggen.pl b/msggen.pl
+index 0c33968..2ee3f66 100644
+--- a/msggen.pl
++++ b/msggen.pl
+@@ -4,6 +4,7 @@
+ # See the file COPYING for copying permission.
+ 
+ use POSIX;
++use Getopt::Std;
+ 
+ # Package and version.
+ $package = 'openjade';
+@@ -18,8 +19,7 @@ $gen_c = 0;
+ undef $opt_l;
+ undef $opt_p;
+ undef $opt_t;
+-do 'getopts.pl';
+-&Getopts('l:p:t:');
++getopts('l:p:t:');
+ $module = $opt_l;
+ $pot_file = $opt_p;
+ 
+@@ -72,7 +72,7 @@ while (<DEF>) {
+     else {
+ 	$field[0] =~ /^[IWQXE][0-9]$/ || &error("invalid first field");;
+ 	$type[$num] = substr($field[0], 0, 1);
+-	$argc = int(substr($field[0], 1, 1));
++	$argc = substr($field[0], 1, 1);
+     }
+     $nargs[$num] = $argc;
+     $field[1] =~ /^[a-zA-Z_][a-zA-Z0-9_]+$/ || &error("invalid tag");
diff --git a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
index cd6a5aa..266210d 100644
--- a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
+++ b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
@@ -7,13 +7,14 @@ SECTION = "base"
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=641ff1e4511f0a87044ad42f87cb1045"
 
-PR = "r4"
+PR = "r5"
 
 DEPENDS = "opensp-native sgml-common-native"
 RDEPENDS_${PN} = "sgml-common-native"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/openjade/openjade-${PV}.tar.gz \
            file://makefile.patch \
+           file://msggen.pl.patch \
            file://reautoconf.patch \
 	   file://user-declared-default-constructor.patch"
 
-- 
1.7.9.5


