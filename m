Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF5774C80FBE
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:33:52 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Apr 2011 03:33:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,217,1301900400"; d="scan'208";a="419808846"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 15 Apr 2011 03:33:51 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QAgEF-0006Y2-Nu; Fri, 15 Apr 2011 18:26:19 +0800
Message-Id: <a55f9845fafefc56a276a1cd6eb354a7fc0e4549.1302863087.git.qing.he@intel.com>
In-Reply-To: <cover.1302863087.git.qing.he@intel.com>
References: <cover.1302863087.git.qing.he@intel.com>
Old-Date: Wed, 13 Apr 2011 16:59:22 +0800
Date: Fri, 15 Apr 2011 18:26:19 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 1/1] sat-solver: fix arch=all packages
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
X-List-Received-Date: Fri, 15 Apr 2011 10:33:52 -0000

From: Qing He <qing.he@intel.com>

add a new options to set noarch archs as all so platform independent
packages can be recognized and installed.

fixes [YOCTO #993]

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../sat-solver/sat-solver/cmake.patch              |    2 +
 .../sat-solver/sat-solver/db5.patch                |    2 +
 .../sat-solver/sat-solver_obsolete.patch           |    2 +
 .../sat-solver/sat-solver/sat-solver_poky.patch    |   21 ++++++++++++++++++++
 .../sat-solver/sat-solver/sat-solver_rpm5.patch    |    2 +
 meta/recipes-extended/sat-solver/sat-solver_git.bb |    4 +-
 6 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-extended/sat-solver/sat-solver/cmake.patch b/meta/recipes-extended/sat-solver/sat-solver/cmake.patch
index 52319f0..c1ec86a 100644
--- a/meta/recipes-extended/sat-solver/sat-solver/cmake.patch
+++ b/meta/recipes-extended/sat-solver/sat-solver/cmake.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Enable debugging for all builds
 not building docs (need oxygen)
 
diff --git a/meta/recipes-extended/sat-solver/sat-solver/db5.patch b/meta/recipes-extended/sat-solver/sat-solver/db5.patch
index 98f322f..6b67912 100644
--- a/meta/recipes-extended/sat-solver/sat-solver/db5.patch
+++ b/meta/recipes-extended/sat-solver/sat-solver/db5.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 RPM no longer includes an internal version of db, it now relies on the system
 version.  The system version in Poky is available at /usr/include/db51
 
diff --git a/meta/recipes-extended/sat-solver/sat-solver/sat-solver_obsolete.patch b/meta/recipes-extended/sat-solver/sat-solver/sat-solver_obsolete.patch
index 7685057..60483e9 100644
--- a/meta/recipes-extended/sat-solver/sat-solver/sat-solver_obsolete.patch
+++ b/meta/recipes-extended/sat-solver/sat-solver/sat-solver_obsolete.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Fix obsolete settings with RPM5.
 
 The following patch is from Michael Schroeder <mls@suse.de>
diff --git a/meta/recipes-extended/sat-solver/sat-solver/sat-solver_poky.patch b/meta/recipes-extended/sat-solver/sat-solver/sat-solver_poky.patch
index b762bac..c8e54f5 100644
--- a/meta/recipes-extended/sat-solver/sat-solver/sat-solver_poky.patch
+++ b/meta/recipes-extended/sat-solver/sat-solver/sat-solver_poky.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [distro specific]
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
++IF ( POKY )
++MESSAGE(STATUS "Building for Poky")
++ADD_DEFINITIONS( -DPOKY -DPOKY_SEMANTICS)
++ENDIF ( POKY )
++
+ IF ( MULTI_SEMANTICS )
+ MESSAGE(STATUS "Enabling multi dist support")
+ ADD_DEFINITIONS( -DMULTI_SEMANTICS)
 diff --git a/src/knownid.h b/src/knownid.h
 index 7757ae0..4b8bee7 100644
 --- a/src/knownid.h
diff --git a/meta/recipes-extended/sat-solver/sat-solver/sat-solver_rpm5.patch b/meta/recipes-extended/sat-solver/sat-solver/sat-solver_rpm5.patch
index 1776f6c..d59c513 100644
--- a/meta/recipes-extended/sat-solver/sat-solver/sat-solver_rpm5.patch
+++ b/meta/recipes-extended/sat-solver/sat-solver/sat-solver_rpm5.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Add RPM5 configuration support
 
 Update the cmake configuration to detect additional files needed by RPM5.
diff --git a/meta/recipes-extended/sat-solver/sat-solver_git.bb b/meta/recipes-extended/sat-solver/sat-solver_git.bb
index a693776..0d5a5e6 100644
--- a/meta/recipes-extended/sat-solver/sat-solver_git.bb
+++ b/meta/recipes-extended/sat-solver/sat-solver_git.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE.BSD;md5=62272bd11c97396d4aaf1c41bc11f7d8"
 DEPENDS = "libcheck rpm zlib expat db"
 
 PV = "0.0-git${SRCPV}"
-PR = "r8"
+PR = "r9"
 
 SRC_URI = "git://gitorious.org/opensuse/sat-solver.git;protocol=git \
            file://sat-solver_rpm5.patch \
@@ -19,7 +19,7 @@ SRC_URI = "git://gitorious.org/opensuse/sat-solver.git;protocol=git \
 
 S = "${WORKDIR}/git"
 
-EXTRA_OECMAKE += "-DLIB=lib -DRPM5=RPM5"
+EXTRA_OECMAKE += "-DLIB=lib -DRPM5=RPM5 -DPOKY=POKY"
 
 inherit cmake pkgconfig
 
-- 
1.7.0


