Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E34614C80510
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 15:21:36 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Mar 2011 13:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,249,1297065600"; d="scan'208";a="395957946"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 13:21:36 -0800
Message-Id: <d82ef128d4b9b9503bb645ee21ed2121683a5b54.1298991086.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1298991086.git.nitin.a.kamble@intel.com>
References: <cover.1298991086.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 1 Mar 2011 06:44:12 -0800
Date: Tue, 01 Mar 2011  6:52:26 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] gcc: take out libiberty files from gcc packages
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
X-List-Received-Date: Tue, 01 Mar 2011 21:21:37 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

this Fixes [BUGID #754]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-cross-intermediate.inc                 |    3 ++-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
 meta/recipes-devtools/gcc/gcc-package-cross.inc    |    4 ++++
 meta/recipes-devtools/gcc/gcc-package-target.inc   |    4 ++++
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
 10 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
index b2c257d..38e0964 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
@@ -1,5 +1,5 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-initial.inc
 
-PR = "r2"
+PR = "r3"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
index 2e5283d..92c3ce2 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
@@ -35,7 +35,8 @@ do_install () {
 	rm -rf ${D}${datadir}/
 
 	# We use libiberty from binutils
-	rm -f ${D}${exec_prefix}/lib/lib/libiberty.a
+	find -name libiberty.a ${D}${exec_prefix}/lib | xargs rm -f
+	find -name libiberty.h ${D}${exec_prefix}/lib | xargs rm -f
 
 	# Insert symlinks into libexec so when tools without a prefix are searched for, the correct ones are
 	# found. These need to be relative paths so they work in different locations.
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
index e65d5df..9a30cb5 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-intermediate.inc
-PR = "r3"
+PR = "r4"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
index 399cdf9..78bb05a 100644
--- a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r2"
+PR = "r3"
 
 require gcc-${PV}.inc
 require gcc-cross4.inc
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
index 240caf5..fec53b9 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross-initial_${PV}.bb
 require gcc-crosssdk-initial.inc
 
-PR = "r2"
+PR = "r3"
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
index a6653dd..161d870 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross-intermediate_${PV}.bb
 require gcc-crosssdk-intermediate.inc
 
-PR = "r2"
+PR = "r3"
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
index 129e8d3..7069088 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross_${PV}.bb
 require gcc-crosssdk.inc
 
-PR = "r2"
+PR = "r3"
diff --git a/meta/recipes-devtools/gcc/gcc-package-cross.inc b/meta/recipes-devtools/gcc/gcc-package-cross.inc
index 4f902fa..04c8101 100644
--- a/meta/recipes-devtools/gcc/gcc-package-cross.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-cross.inc
@@ -27,6 +27,10 @@ do_install () {
 		rm -rf ${D}${STAGING_DIR_NATIVE}${prefix_native}/$d
 	done
 
+	# We use libiberty from binutils
+	find -name libiberty.a ${D}${exec_prefix}/lib | xargs rm -f
+	find -name libiberty.h ${D}${exec_prefix}/lib | xargs rm -f
+
 	# gcc-runtime installs libgcc into a special location in staging since it breaks doing a standalone build
 	if [ "${PN}" == "gcc-cross" -o "${PN}" == "gcc-crosssdk" ]; then
 		dest=${D}/${includedir}/gcc-build-internal-${MULTIMACH_TARGET_SYS}
diff --git a/meta/recipes-devtools/gcc/gcc-package-target.inc b/meta/recipes-devtools/gcc/gcc-package-target.inc
index 3286da6..d61e96b 100644
--- a/meta/recipes-devtools/gcc/gcc-package-target.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-target.inc
@@ -86,6 +86,10 @@ do_install () {
 	# We don't care about the gcc-<version> ones for this
 	rm -f *gcc-?.?*
 
+	# We use libiberty from binutils
+	find -name libiberty.a ${D}${exec_prefix}/lib | xargs rm -f
+	find -name libiberty.h ${D}${exec_prefix}/lib | xargs rm -f
+
 	# Symlinks so we can use these trivially on the target
 	ln -sf ${TARGET_SYS}-g77 g77 || true
 	ln -sf ${TARGET_SYS}-gfortran gfortran || true
diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
index 919d4b0..25e455c 100644
--- a/meta/recipes-devtools/gcc/gcc_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r2"
+PR = "r3"
 require gcc-${PV}.inc
 require gcc-configure-target.inc
 require gcc-package-target.inc
-- 
1.7.2.2


