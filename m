Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82FF84C811F6
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:58:16 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Jan 2011 05:58:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="594043982"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2011 05:58:15 -0800
Message-Id: <b94ee19dabe991329707d583515aff079fd4518f.1295359004.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295359004.git.dexuan.cui@intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Tue, 18 Jan 2011 13:51:25 +0800
Date: Tue, 18 Jan 2011 21:57:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC: enhance toolchain bootstrap process: v3: 4/7] eglibc-initial, eglibc-initial-nativesdk: install into individual sysroots
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
X-List-Received-Date: Tue, 18 Jan 2011 13:58:16 -0000

Install sysroot to ${STAGING_DIR_TARGET}/${PN}.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-core/eglibc/eglibc-initial.inc |   10 ++++++++++
 meta/recipes-core/eglibc/eglibc_2.12.bb     |    2 +-
 2 files changed, 11 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/eglibc/eglibc-initial.inc b/meta/recipes-core/eglibc/eglibc-initial.inc
index d49ec8a..ea0763e 100644
--- a/meta/recipes-core/eglibc/eglibc-initial.inc
+++ b/meta/recipes-core/eglibc/eglibc-initial.inc
@@ -1,5 +1,8 @@
 require eglibc-common.inc
 
+STAGING_BINDIR_TOOLCHAIN_prepend = "${STAGING_DIR_NATIVE}${bindir_native}/${HOST_SYS}.gcc-cross-initial:"
+STAGING_BINDIR_TOOLCHAIN_virtclass-nativesdk_prepend = "${STAGING_DIR_NATIVE}${bindir_native}/${HOST_SYS}.gcc-crosssdk-initial:"
+
 DEPENDS = "linux-libc-headers virtual/${TARGET_PREFIX}gcc-initial"
 PROVIDES = "virtual/${TARGET_PREFIX}libc-initial"
 
@@ -42,8 +45,15 @@ do_install () {
        install -m 644 csu/crt[1in].o ${D}${libdir}
        ${CC} -nostdlib -nostartfiles -shared -x c /dev/null \
                -o ${D}${libdir}/libc.so
+
+       # add links to linux-libc-headers: gcc-{cross,crossdk}-intermediate need this.
+       ln -s ${STAGING_DIR_TARGET}${includedir}/linux  ${D}${includedir}/
+       ln -s ${STAGING_DIR_TARGET}${includedir}/asm  ${D}${includedir}/
+       ln -s ${STAGING_DIR_TARGET}${includedir}/asm-generic  ${D}${includedir}/
 }
 
 do_siteconfig () {
 	:
 }
+
+do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_TARGET}/${PN}"
diff --git a/meta/recipes-core/eglibc/eglibc_2.12.bb b/meta/recipes-core/eglibc/eglibc_2.12.bb
index c773af0..97353b7 100644
--- a/meta/recipes-core/eglibc/eglibc_2.12.bb
+++ b/meta/recipes-core/eglibc/eglibc_2.12.bb
@@ -2,7 +2,7 @@ require eglibc.inc
 
 DEPENDS += "gperf-native"
 FILESPATHPKG =. "eglibc-svn:"
-PR = "r13"
+PR = "r14"
 
 EGLIBC_BRANCH="eglibc-2_12"
 SRC_URI = "svn://www.eglibc.org/svn/branches/;module=${EGLIBC_BRANCH};proto=http \
-- 
1.7.2


