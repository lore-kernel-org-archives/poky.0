Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9122E4C80A7D
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 04:57:46 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2011 02:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,265,1301900400"; d="scan'208";a="738038212"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2011 02:57:31 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QEIQO-0002Tm-AN; Mon, 25 Apr 2011 17:49:48 +0800
Message-Id: <030e102cce49156826e86833c70801145289331c.1303724875.git.qing.he@intel.com>
In-Reply-To: <cover.1303724875.git.qing.he@intel.com>
References: <cover.1303724875.git.qing.he@intel.com>
Old-Date: Wed, 13 Apr 2011 17:22:49 +0800
Date: Mon, 25 Apr 2011 17:49:48 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 2/2] quilt: fix test for target build
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
X-List-Received-Date: Mon, 25 Apr 2011 09:57:46 -0000

From: Qing He <qing.he@intel.com>

fixes [YOCTO #969]

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../quilt/quilt/gnu_patch_test_fix_target.patch    |   26 ++++++++++++++++++++
 meta/recipes-devtools/quilt/quilt_0.48.bb          |    6 +++-
 2 files changed, 30 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix_target.patch

diff --git a/meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix_target.patch b/meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix_target.patch
new file mode 100644
index 0000000..672155b
--- /dev/null
+++ b/meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix_target.patch
@@ -0,0 +1,26 @@
+Upstream-Status: Pending
+
+the test should be skipped for cross compiling.
+
+Signed-off-by: Qing He <qing.he@intel.com>
+
+diff --git a/configure.ac b/configure.ac
+index 026a36c..8af591b 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -245,6 +245,7 @@ fi
+ QUILT_COMPAT_PROG_PATH(DIFF, diff)
+ QUILT_COMPAT_PROG_PATH(PATCH, patch)
+ 
++if test "x$cross_compiling" != "xyes"; then
+ # Sun diff and others will not work because GNU patch options are used.
+ AC_MSG_CHECKING([the version of $DIFF])
+ if $DIFF --version 2>/dev/null | grep GNU >/dev/null; then
+@@ -293,6 +294,7 @@ current version of patch from ftp.gnu.org, or if you already have GNU patch
+ then you can supply its path with the '--with-patch=' option.
+ ])
+ fi
++fi
+ 
+ QUILT_COMPAT_PROG_PATH(FIND, find)
+ 
diff --git a/meta/recipes-devtools/quilt/quilt_0.48.bb b/meta/recipes-devtools/quilt/quilt_0.48.bb
index 20a708d..124e2cd 100644
--- a/meta/recipes-devtools/quilt/quilt_0.48.bb
+++ b/meta/recipes-devtools/quilt/quilt_0.48.bb
@@ -2,8 +2,10 @@ require quilt.inc
 LICENSE="GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 RDEPENDS_${PN} += "patch diffstat bzip2 util-linux"
-PR = "r0"
-SRC_URI += "file://aclocal.patch"
+PR = "r1"
+SRC_URI += "file://aclocal.patch \
+            file://gnu_patch_test_fix_target.patch \
+           "
 
 SRC_URI[md5sum] = "f77adda60039ffa753f3c584a286f12b"
 SRC_URI[sha256sum] = "73fd760d3b5cbf06417576591dc37d67380d189392db9000c21b7cbebee49ffc"
-- 
1.7.0


