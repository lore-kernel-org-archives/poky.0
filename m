Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9AAED4C811C3
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 11:59:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2011 09:59:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,359,1291622400"; d="scan'208";a="649769066"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2011 09:59:21 -0800
Message-Id: <865beb624a7c01001d030d1d0ddf29a5c9272a50.1295632514.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295632514.git.nitin.a.kamble@intel.com>
References: <cover.1295632514.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Fri, 21 Jan 2011 09:52:23 -0800
Date: Fri, 21 Jan 2011  9:59:21 -0800
To: poky@yoctoproject.org
Subject: [PATCH 3/3] apt: revert the dso_linking_change patch as the new linker fixes it
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
X-List-Received-Date: Fri, 21 Jan 2011 17:59:21 -0000

The newer binutils recipe of version 2.21 has a fix for ld which avoids an
issue where weak symbols like pthread_cancel were causing linking to fail wh
--no-add-as-needed parameter was passed to ld.

See more information here: http://bugs.debian.org/591405

This makes some of the fixes for breakage after gcc dso linking change
unnecessary and this is one of them.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../apt-0.7.14/dso_linking_change_build_fix.patch  |   25 --------------------
 meta/recipes-devtools/apt/apt_0.7.14.bb            |    5 +--
 2 files changed, 2 insertions(+), 28 deletions(-)
 delete mode 100644 meta/recipes-devtools/apt/apt-0.7.14/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-devtools/apt/apt-0.7.14/dso_linking_change_build_fix.patch b/meta/recipes-devtools/apt/apt-0.7.14/dso_linking_change_build_fix.patch
deleted file mode 100644
index b69849f..0000000
--- a/meta/recipes-devtools/apt/apt-0.7.14/dso_linking_change_build_fix.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-after gcc linking has changed, all the libraries must be explicitely specified 
-This patch avoids these linking errors:
-
-Building program /build_disk/poky_build/build0/tmp/work/i586-poky-linux/apt-0.7.14-r4/apt-0.7.14/bin/methods/https
-/build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: <86>: invalid DSO for symbol `pthread_cancel@@GLIBC_2.0' definition
-/build_disk/poky_build/build0/tmp/sysroots/i586-poky-linux/lib/libpthread.so.0: could not read symbols: Bad value
-collect2: ld returned 1 exit status
-make[2]: *** [/build_disk/poky_build/build0/tmp/work/i586-poky-linux/apt-0.7.14-r4/apt-0.7.14/bin/methods/https] Error 1
-
-Nitin A Kamble <nitin.a.kamble@intel.com>
-Date: 2011/01/19
-
-Index: apt-0.7.14/methods/makefile
-===================================================================
---- apt-0.7.14.orig/methods/makefile	2008-05-28 06:22:14.000000000 -0700
-+++ apt-0.7.14/methods/makefile	2011-01-19 16:30:07.369010214 -0800
-@@ -54,7 +54,7 @@
- 
- # The https method
- PROGRAM=https
--SLIBS = -lapt-pkg -lcurl
-+SLIBS = -lapt-pkg -lcurl -lpthread
- LIB_MAKES = apt-pkg/makefile
- SOURCE = https.cc
- include $(PROGRAM_H)
diff --git a/meta/recipes-devtools/apt/apt_0.7.14.bb b/meta/recipes-devtools/apt/apt_0.7.14.bb
index b9b278b..aa155d9 100644
--- a/meta/recipes-devtools/apt/apt_0.7.14.bb
+++ b/meta/recipes-devtools/apt/apt_0.7.14.bb
@@ -3,11 +3,10 @@ RDEPENDS_${PN} = "dpkg"
 LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=0636e73ff0215e8d672dc4c32c317bb3"
 require apt.inc
 
-PR = "r5"
+PR = "r6"
 
 SRC_URI += "file://nodoc.patch \
-	    file://includes-fix.patch \
-	    file://dso_linking_change_build_fix.patch "
+	    file://includes-fix.patch "
 
 SRC_URI[md5sum] = "19efa18fb1ef20c58b9b44e94258b814"
 SRC_URI[sha256sum] = "8fc06effaf8a4e4333308eedcdc6840f1c8056f2e924210f151dfc076bcd4045"
-- 
1.7.3.4


