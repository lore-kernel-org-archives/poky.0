Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2716C4C811FE
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:58:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Jan 2011 05:58:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="376147508"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 18 Jan 2011 05:58:19 -0800
Message-Id: <b548ed8a93a21f830c07a4e24e3a12b3967738e4.1295359004.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295359004.git.dexuan.cui@intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Tue, 18 Jan 2011 20:53:03 +0800
Date: Tue, 18 Jan 2011 21:57:48 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC: enhance toolchain bootstrap process: v3: 7/7] eglibc, eglibc-nativesdk: fix the build due to changes to eglibc-initial and gcc-cross-intermediate
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
X-List-Received-Date: Tue, 18 Jan 2011 13:58:32 -0000

BTW: I'm not very sure about the comments about CPPFLAGS and LDFLAGS, but I do
need to pass the 2 variables to make eglibc build ok.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-core/eglibc/eglibc.inc     |    9 +++++++++
 meta/recipes-core/eglibc/eglibc_2.12.bb |    8 ++------
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-core/eglibc/eglibc.inc b/meta/recipes-core/eglibc/eglibc.inc
index 4698254..a61d35d 100644
--- a/meta/recipes-core/eglibc/eglibc.inc
+++ b/meta/recipes-core/eglibc/eglibc.inc
@@ -1,5 +1,14 @@
 require eglibc-common.inc
 
+STAGING_BINDIR_TOOLCHAIN_prepend = "${STAGING_DIR_NATIVE}${bindir_native}/${HOST_SYS}.gcc-cross-intermediate:"
+STAGING_BINDIR_TOOLCHAIN_virtclass-nativesdk_prepend = "${STAGING_DIR_NATIVE}${bindir_native}/${HOST_SYS}.gcc-crosssdk-intermediate:"
+
+CPPFLAGS_prepend = "-I${STAGING_DIR_TARGET}/eglibc-initial/${TARGET_SYS}${includedir_native} "
+CPPFLAGS_virtclass-nativesdk_prepend = "-I${STAGING_DIR_TARGET}/eglibc-initial-nativesdk/${SDK_ARCH}-nativesdk${SDK_VENDOR}-${SDK_OS}${base_prefix}${includedir_native} "
+
+LDFLAGS_prepend= "-L${STAGING_DIR_TARGET}${base_libdir}.gcc-cross-intermediate "
+LDFLAGS_virtclass-nativesdk_prepend= "-L${STAGING_DIR_TARGET}${base_libdir}.gcc-crosssdk-intermediate "
+
 # nptl needs unwind support in gcc, which can't be built without glibc.
 DEPENDS = "virtual/${TARGET_PREFIX}gcc-intermediate linux-libc-headers"
 #this leads to circular deps, so lets not add it yet
diff --git a/meta/recipes-core/eglibc/eglibc_2.12.bb b/meta/recipes-core/eglibc/eglibc_2.12.bb
index 97353b7..c325d1b 100644
--- a/meta/recipes-core/eglibc/eglibc_2.12.bb
+++ b/meta/recipes-core/eglibc/eglibc_2.12.bb
@@ -2,7 +2,7 @@ require eglibc.inc
 
 DEPENDS += "gperf-native"
 FILESPATHPKG =. "eglibc-svn:"
-PR = "r14"
+PR = "r15"
 
 EGLIBC_BRANCH="eglibc-2_12"
 SRC_URI = "svn://www.eglibc.org/svn/branches/;module=${EGLIBC_BRANCH};proto=http \
@@ -73,15 +73,13 @@ do_move_ports() {
 do_configure () {
 # override this function to avoid the autoconf/automake/aclocal/autoheader
 # calls for now
-# don't pass CPPFLAGS into configure, since it upsets the kernel-headers
-# version check and doesn't really help with anything
         if [ -z "`which rpcgen`" ]; then
                 echo "rpcgen not found.  Install glibc-devel."
                 exit 1
         fi
         (cd ${S} && gnu-configize) || die "failure in running gnu-configize"
         find ${S} -name "configure" | xargs touch
-        CPPFLAGS="" oe_runconf
+        oe_runconf
 }
 
 rpcsvc = "bootparam_prot.x nlm_prot.x rstat.x \
@@ -89,8 +87,6 @@ rpcsvc = "bootparam_prot.x nlm_prot.x rstat.x \
 	  rusers.x spray.x nfs_prot.x rquota.x key_prot.x"
 
 do_compile () {
-	# -Wl,-rpath-link <staging>/lib in LDFLAGS can cause breakage if another glibc is in staging
-	unset LDFLAGS
 	base_do_compile
 	(
 		cd ${S}/sunrpc/rpcsvc
-- 
1.7.2


