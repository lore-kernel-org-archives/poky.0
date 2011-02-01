Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E09DA4C80082
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 01:50:04 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Jan 2011 23:50:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,409,1291622400"; d="scan'208";a="382536780"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 31 Jan 2011 23:50:03 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PkAu2-0003TH-V3; Tue, 01 Feb 2011 15:43:55 +0800
Message-Id: <ceaa9aa5f740565cbd8a1ca305b23f60bb1727f9.1296546158.git.qing.he@intel.com>
In-Reply-To: <cover.1296546158.git.qing.he@intel.com>
References: <cover.1296546158.git.qing.he@intel.com>
Old-Date: Tue, 1 Feb 2011 15:37:54 +0800
Date: Tue, 01 Feb 2011 15:43:54 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 1/1] quilt: fix patch version detection
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
X-List-Received-Date: Tue, 01 Feb 2011 07:50:05 -0000

From: Qing He <qing.he@intel.com>

Fixes [BUGID #690]

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-devtools/quilt/quilt-native_0.48.bb   |    2 +-
 meta/recipes-devtools/quilt/quilt.inc              |    3 +-
 .../quilt/quilt/patch-version-detection.patch      |   29 ++++++++++++++++++++
 meta/recipes-devtools/quilt/quilt_0.48.bb          |    2 +-
 4 files changed, 33 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-devtools/quilt/quilt/patch-version-detection.patch

diff --git a/meta/recipes-devtools/quilt/quilt-native_0.48.bb b/meta/recipes-devtools/quilt/quilt-native_0.48.bb
index a62531e..3cfe395 100644
--- a/meta/recipes-devtools/quilt/quilt-native_0.48.bb
+++ b/meta/recipes-devtools/quilt/quilt-native_0.48.bb
@@ -1,7 +1,7 @@
 require quilt.inc
 require quilt-native.inc
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI[md5sum] = "f77adda60039ffa753f3c584a286f12b"
 SRC_URI[sha256sum] = "73fd760d3b5cbf06417576591dc37d67380d189392db9000c21b7cbebee49ffc"
diff --git a/meta/recipes-devtools/quilt/quilt.inc b/meta/recipes-devtools/quilt/quilt.inc
index 4542511..e2cfce4 100644
--- a/meta/recipes-devtools/quilt/quilt.inc
+++ b/meta/recipes-devtools/quilt/quilt.inc
@@ -6,7 +6,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 SRC_URI = "http://download.savannah.gnu.org/releases/quilt/quilt-${PV}.tar.gz \
         file://install.patch \
-        file://gnu_patch_test_fix.patch"
+        file://gnu_patch_test_fix.patch \
+        file://patch-version-detection.patch"
 
 inherit autotools
 
diff --git a/meta/recipes-devtools/quilt/quilt/patch-version-detection.patch b/meta/recipes-devtools/quilt/quilt/patch-version-detection.patch
new file mode 100644
index 0000000..878a953
--- /dev/null
+++ b/meta/recipes-devtools/quilt/quilt/patch-version-detection.patch
@@ -0,0 +1,29 @@
+From: Jean Delvare
+Subject: [Quilt-dev] [PACH] Fix patch version detection</td>
+Date: Mon, 21 Jun 2010 13:49:50 +0200
+
+New versions of GNU patch present themselves as "GNU patch" instead
+of just "patch".
+---
+ configure.ac |    6 +++++-
+ 1 file changed, 5 insertions(+), 1 deletion(-)
+
+--- a/configure.ac
++++ b/configure.ac
+@@ -262,7 +262,11 @@ fi
+ AC_MSG_CHECKING([the version of $PATCH])
+ if $PATCH --version 2> /dev/null | grep GNU >/dev/null; then
+   set -- `$PATCH --version 2> /dev/null`
+-  patch_version=$2
++  if test x$1 = xGNU ; then
++    patch_version=$3
++  else
++    patch_version=$2
++  fi
+   AC_MSG_RESULT($patch_version)
+   saved_IFS=$IFS; IFS='.'
+   set -- $patch_version
+
+-- 
+Jean Delvare
+Suse L3
diff --git a/meta/recipes-devtools/quilt/quilt_0.48.bb b/meta/recipes-devtools/quilt/quilt_0.48.bb
index a2a8a5c..6f5e2bc 100644
--- a/meta/recipes-devtools/quilt/quilt_0.48.bb
+++ b/meta/recipes-devtools/quilt/quilt_0.48.bb
@@ -2,7 +2,7 @@ require quilt.inc
 LICENSE="GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 RDEPENDS_${PN} += "patch diffstat bzip2 util-linux"
-PR = "r0"
+PR = "r1"
 SRC_URI += "file://aclocal.patch"
 
 SRC_URI[md5sum] = "f77adda60039ffa753f3c584a286f12b"
-- 
1.7.0


