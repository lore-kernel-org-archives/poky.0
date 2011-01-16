Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BDD54C811F0
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:08 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Jan 2011 04:15:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="647456206"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jan 2011 04:15:07 -0800
Message-Id: <13ceb795453bcf764ddf37be6da4132f575c253b.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 12:18:50 +0800
Date: Sun, 16 Jan 2011 20:19:43 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/19] xkbcomp: upgrade to 1.2.0
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:08 -0000

- also pick one patch from upstream to fix the cross compiling error during the do_configure. it can be safely removed in the next upgrade.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../xorg-app/xkbcomp/cross-compile-fix.patch       |   35 ++++++++++++++++++++
 .../{xkbcomp_1.1.1.bb => xkbcomp_1.2.0.bb}         |    6 ++-
 2 files changed, 39 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-graphics/xorg-app/xkbcomp/cross-compile-fix.patch
 rename meta/recipes-graphics/xorg-app/{xkbcomp_1.1.1.bb => xkbcomp_1.2.0.bb} (61%)

diff --git a/meta/recipes-graphics/xorg-app/xkbcomp/cross-compile-fix.patch b/meta/recipes-graphics/xorg-app/xkbcomp/cross-compile-fix.patch
new file mode 100644
index 0000000..ca65345
--- /dev/null
+++ b/meta/recipes-graphics/xorg-app/xkbcomp/cross-compile-fix.patch
@@ -0,0 +1,35 @@
+commit cc55d8f5ab021861308b071aab9c03016be15187
+Author: Gaetan Nadon <memsize@videotron.ca>
+Date:   Sun Oct 31 20:35:24 2010 -0400
+
+    config: replace AC_CHECK_FILE with test -f as it fails to cross-compile
+    
+    Testing for the presence of xkbparse.c is legitimate as this is a build
+    file, but the Autoconf macro assumes it is testing on the host system
+    and fails.
+    
+    Tested-by: Abdoulaye Walsimou Gaye <awg@embtoolkit.org>
+    Signed-off-by: Gaetan Nadon <memsize@videotron.ca>
+
+diff --git a/configure.ac b/configure.ac
+index c69230b..8e6bd6e 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -34,11 +34,14 @@ XORG_DEFAULT_OPTIONS
+ 
+ AM_CONFIG_HEADER(config.h)
+ 
++# If both the C file and YACC are missing, the package cannot be build.
+ AC_PROG_YACC
+ AC_PATH_PROG([YACC_INST], $YACC)
+-AC_CHECK_FILE([$srcdir/xkbparse.c], [],
+-              [test -z "$YACC_INST" && AC_MSG_ERROR([yacc not found - unable to compile xkbparse.y])])
+-
++if test ! -f "$srcdir/xkbparse.c"; then
++   if test -z "$YACC_INST"; then
++      AC_MSG_ERROR([yacc not found - unable to compile xkbparse.y])
++   fi
++fi
+ 
+ AC_CHECK_FUNCS([strdup strcasecmp])
+ 
diff --git a/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb b/meta/recipes-graphics/xorg-app/xkbcomp_1.2.0.bb
similarity index 61%
rename from meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb
rename to meta/recipes-graphics/xorg-app/xkbcomp_1.2.0.bb
index bd40e42..b8592fa 100644
--- a/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-app/xkbcomp_1.2.0.bb
@@ -8,7 +8,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=08436e4f4476964e2e2dd7e7e41e076a"
 
 DEPENDS += "libxkbfile"
 
+SRC_URI += "file://cross-compile-fix.patch"
+
 BBCLASSEXTEND = "native"
 
-SRC_URI[md5sum] = "38c387bacdc01038c8ac280588792bcf"
-SRC_URI[sha256sum] = "9775bcfd43d9ffa41e2865e5b2c933f419bf983d7a529b3103656c76fd82e663"
+SRC_URI[md5sum] = "0f55995cd8da9b2d88553e1a2e17cd0a"
+SRC_URI[sha256sum] = "2c64aa414755e764ca548ae5c93e95f7b5bbd5e01bca16bf226fd32bfae77ea4"
-- 
1.7.0.4


