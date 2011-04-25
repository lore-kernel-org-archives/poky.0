Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 813A74C80A1D
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 04:57:32 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Apr 2011 02:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,265,1301900400"; d="scan'208";a="683554321"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2011 02:57:31 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QEIQO-0002Tb-7Z; Mon, 25 Apr 2011 17:49:48 +0800
Message-Id: <e78daad8bde98c1a4d46048d9eb1d181f0b55981.1303724875.git.qing.he@intel.com>
In-Reply-To: <cover.1303724875.git.qing.he@intel.com>
References: <cover.1303724875.git.qing.he@intel.com>
Old-Date: Wed, 13 Apr 2011 16:59:22 +0800
Date: Mon, 25 Apr 2011 17:49:48 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 1/2] sat-solver: fix arch=all packages
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
X-List-Received-Date: Mon, 25 Apr 2011 09:57:32 -0000

From: Qing He <qing.he@intel.com>

add a new options to set noarch archs as all so platform independent
packages can be recognized and installed.

fixes [YOCTO #993]

Signed-off-by: Qing He <qing.he@intel.com>
---
 ...sat-solver_poky.patch => sat-solver_core.patch} |   27 +++++++++++++++++--
 meta/recipes-extended/sat-solver/sat-solver_git.bb |   16 ++++++------
 2 files changed, 32 insertions(+), 11 deletions(-)
 rename meta/recipes-extended/sat-solver/sat-solver/{sat-solver_poky.patch => sat-solver_core.patch} (81%)

diff --git a/meta/recipes-extended/sat-solver/sat-solver/sat-solver_poky.patch b/meta/recipes-extended/sat-solver/sat-solver/sat-solver_core.patch
similarity index 81%
rename from meta/recipes-extended/sat-solver/sat-solver/sat-solver_poky.patch
rename to meta/recipes-extended/sat-solver/sat-solver/sat-solver_core.patch
index b762bac..11bf5b0 100644
--- a/meta/recipes-extended/sat-solver/sat-solver/sat-solver_poky.patch
+++ b/meta/recipes-extended/sat-solver/sat-solver/sat-solver_core.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [distribution]
+
 Fix "arch" integration with Poky.
 
 Add a missing "any" architecture type and update the semantics to use it.
@@ -5,8 +7,27 @@ Add a missing "any" architecture type and update the semantics to use it.
 Disable the built-in archpolicies structure, and replace it with one
 we generate in the recipe.
 
+Also add poky semantics option in CMake.
+
 Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+Signed-off-by: Qing He <qing.he@intel.com>
 
+diff --git a/CMakeLists.txt b/CMakeLists.txt
+index 443281e..4456a87 100644
+--- a/CMakeLists.txt
++++ b/CMakeLists.txt
+@@ -45,6 +45,11 @@ MESSAGE(STATUS "Building for Debian")
+ ADD_DEFINITIONS( -DDEBIAN -DDEBIAN_SEMANTICS)
+ ENDIF ( DEBIAN )
+ 
++IF ( OE_CORE )
++MESSAGE(STATUS "Building for OE core")
++ADD_DEFINITIONS( -DOE_CORE -DOE_CORE_SEMANTICS)
++ENDIF ( OE_CORE )
++
+ IF ( MULTI_SEMANTICS )
+ MESSAGE(STATUS "Enabling multi dist support")
+ ADD_DEFINITIONS( -DMULTI_SEMANTICS)
 diff --git a/src/knownid.h b/src/knownid.h
 index 7757ae0..4b8bee7 100644
 --- a/src/knownid.h
@@ -27,7 +48,7 @@ index 55c8677..3356ff8 100644
      }
  
    /* we allow changes to/from noarch */
-+#ifdef POKY_SEMANTICS
++#ifdef OE_CORE_SEMANTICS
 +  if (a1 == a2 || 
 +	a1 == ARCH_NOARCH || a2 == ARCH_NOARCH ||
 +	a1 == ARCH_ANY || a2 == ARCH_ANY ||
@@ -86,7 +107,7 @@ index 34a14a3..2d7cd70 100644
 -  0
 -};
 +/* Provide the const char *archpolicies structure */
-+#include "poky-arch.h"
++#include "core-arch.h"
  
  void
  pool_setarch(Pool *pool, const char *arch)
@@ -97,7 +118,7 @@ index 34a14a3..2d7cd70 100644
 -#ifndef DEBIAN_SEMANTICS
 -  id = ARCH_NOARCH;
 -#else
-+#if defined(DEBIAN_SEMANTICS) || defined(POKY_SEMANTICS)
++#if defined(DEBIAN_SEMANTICS) || defined(OE_CORE_SEMANTICS)
    id = ARCH_ALL;
 +#else
 +  id = ARCH_NOARCH;
diff --git a/meta/recipes-extended/sat-solver/sat-solver_git.bb b/meta/recipes-extended/sat-solver/sat-solver_git.bb
index a693776..2d4d299 100644
--- a/meta/recipes-extended/sat-solver/sat-solver_git.bb
+++ b/meta/recipes-extended/sat-solver/sat-solver_git.bb
@@ -7,19 +7,19 @@ LIC_FILES_CHKSUM = "file://LICENSE.BSD;md5=62272bd11c97396d4aaf1c41bc11f7d8"
 DEPENDS = "libcheck rpm zlib expat db"
 
 PV = "0.0-git${SRCPV}"
-PR = "r8"
+PR = "r9"
 
 SRC_URI = "git://gitorious.org/opensuse/sat-solver.git;protocol=git \
            file://sat-solver_rpm5.patch \
            file://sat-solver_obsolete.patch \
            file://cmake.patch \
            file://db5.patch \
-           file://sat-solver_poky.patch \
+           file://sat-solver_core.patch \
           "
 
 S = "${WORKDIR}/git"
 
-EXTRA_OECMAKE += "-DLIB=lib -DRPM5=RPM5"
+EXTRA_OECMAKE += "-DLIB=lib -DRPM5=RPM5 -DOE_CORE=OE_CORE"
 
 inherit cmake pkgconfig
 
@@ -38,18 +38,18 @@ do_archgen () {
 		INSTALL_PLATFORM_ARCHS="$each_arch $INSTALL_PLATFORM_ARCHS"
 	done
 
-	echo "/* Automatically generated by the sat-solver recipe */" > src/poky-arch.h
-	echo "const char *archpolicies[] = {" >> src/poky-arch.h
+	echo "/* Automatically generated by the sat-solver recipe */" > src/core-arch.h
+	echo "const char *archpolicies[] = {" >> src/core-arch.h
 
         set -- $INSTALL_PLATFORM_ARCHS
 
         save_IFS=$IFS
         IFS=:
-        while [ $# -gt 0 ]; do echo "  \"$1\",	"\""$*"\", >> src/poky-arch.h ; shift; done
+        while [ $# -gt 0 ]; do echo "  \"$1\",	"\""$*"\", >> src/core-arch.h ; shift; done
         IFS=$save_IFS
 
-	echo "  0" >> src/poky-arch.h
-	echo "};" >> src/poky-arch.h
+	echo "  0" >> src/core-arch.h
+	echo "};" >> src/core-arch.h
 }
 
 addtask archgen before do_configure after do_patch
-- 
1.7.0


