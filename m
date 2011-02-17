Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94A4C4C80A1D
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 23:21:13 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Feb 2011 21:21:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,484,1291622400"; d="scan'208";a="389980798"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 16 Feb 2011 21:21:01 -0800
Message-Id: <0c61dd51708e758877f50be7cd3e6589118749ad.1297919871.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1297919871.git.nitin.a.kamble@intel.com>
References: <cover.1297919871.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 16 Feb 2011 16:39:21 -0800
Date: Wed, 16 Feb 2011 21:21:01 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] perl-native: fix parallel build
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
X-List-Received-Date: Thu, 17 Feb 2011 05:21:13 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

perl native recipe was failing on 40-way system with the parallel build turned
on. With this patch the parallel build on 40 way build system is not failing.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../perl/perl-5.12.2/parallel_build_fix.patch      |   18 ++++++++++++++++++
 meta/recipes-devtools/perl/perl-native_5.12.2.bb   |    3 ++-
 meta/recipes-devtools/perl/perl_5.12.2.bb          |    3 ++-
 3 files changed, 22 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch

diff --git a/meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch b/meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch
new file mode 100644
index 0000000..5a05dea
--- /dev/null
+++ b/meta/recipes-devtools/perl/perl-5.12.2/parallel_build_fix.patch
@@ -0,0 +1,18 @@
+This patch fixes the parralella make issue on a 40way build system
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+2011-02-16
+
+Index: perl-5.12.2/Makefile.SH
+===================================================================
+--- perl-5.12.2.orig/Makefile.SH	2010-09-06 16:30:32.000000000 -0700
++++ perl-5.12.2/Makefile.SH	2011-02-16 16:21:30.744143773 -0800
+@@ -198,6 +198,8 @@
+ $this_target: uni.data" ;;
+ 	Text/ParseWords) extra_dep="$extra_dep
+ $this_target: lib/auto/Scalar/Util.$dlext" ;;
++	POSIX) extra_dep="$extra_dep
++$this_target: lib/auto/Cwd/Cwd.$dlext" ;;
+     esac
+ done
+ 
diff --git a/meta/recipes-devtools/perl/perl-native_5.12.2.bb b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
index 790eae2..5996494 100644
--- a/meta/recipes-devtools/perl/perl-native_5.12.2.bb
+++ b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
@@ -4,7 +4,7 @@ SECTION = "libs"
 LICENSE = "Artistic|GPL"
 LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
 		    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
-PR = "r4"
+PR = "r5"
 
 LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
                     file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
@@ -12,6 +12,7 @@ LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
 SRC_URI = "http://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
            file://Configure-multilib.patch;patch=1 \
            file://perl-configpm-switch.patch;patch=1 \
+           file://parallel_build_fix.patch \
            file://native-nopacklist.patch;patch=1 \
            file://native-perlinc.patch;patch=1"
 
diff --git a/meta/recipes-devtools/perl/perl_5.12.2.bb b/meta/recipes-devtools/perl/perl_5.12.2.bb
index b27e20f..ce99986 100644
--- a/meta/recipes-devtools/perl/perl_5.12.2.bb
+++ b/meta/recipes-devtools/perl/perl_5.12.2.bb
@@ -8,7 +8,7 @@ PRIORITY = "optional"
 # We need gnugrep (for -I)
 DEPENDS = "virtual/db perl-native-${PV} grep-native"
 DEPENDS += "gdbm zlib"
-PR = "r0"
+PR = "r1"
 
 # 5.10.1 has Module::Build built-in
 PROVIDES += "libmodule-build-perl"
@@ -18,6 +18,7 @@ PROVIDES += "libmodule-build-perl"
 
 SRC_URI = "ftp://ftp.funet.fi/pub/CPAN/src/perl-${PV}.tar.gz \
         file://Makefile.patch;patch=1 \
+        file://parallel_build_fix.patch \
         file://Makefile.SH.patch;patch=1 \
         file://installperl.patch;patch=1 \
         file://perl-dynloader.patch;patch=1 \
-- 
1.7.3.4


