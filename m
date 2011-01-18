Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB7574C80BEF
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:58:13 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2011 05:58:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="697958505"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2011 05:58:12 -0800
Message-Id: <fc5f0fb81ed597ea8c3832a1fd2691d8c9870449.1295359004.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295359004.git.dexuan.cui@intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Tue, 18 Jan 2011 10:24:17 +0800
Date: Tue, 18 Jan 2011 21:57:42 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC: enhance toolchain bootstrap process: v3: 2/7] cross.bbclass: make MULTIMACH_TARGET_SYS adjustable for bindir, libdir, libexecdir
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
X-List-Received-Date: Tue, 18 Jan 2011 13:58:14 -0000

This will be used by gcc-cross-initial and gcc-cross-intermediate.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/classes/cross.bbclass |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta/classes/cross.bbclass b/meta/classes/cross.bbclass
index 7c20be0..59d8293 100644
--- a/meta/classes/cross.bbclass
+++ b/meta/classes/cross.bbclass
@@ -40,15 +40,16 @@ target_prefix := "${prefix}"
 target_exec_prefix := "${exec_prefix}"
 
 # Overrides for paths
+CROSS_TARGET_SYS_DIR = "${MULTIMACH_TARGET_SYS}"
 prefix = "${STAGING_DIR_NATIVE}${prefix_native}"
 base_prefix = "${STAGING_DIR_NATIVE}"
 exec_prefix = "${STAGING_DIR_NATIVE}${prefix_native}"
-bindir = "${exec_prefix}/bin/${MULTIMACH_TARGET_SYS}"
+bindir = "${exec_prefix}/bin/${CROSS_TARGET_SYS_DIR}"
 sbindir = "${bindir}"
 base_bindir = "${bindir}"
 base_sbindir = "${bindir}"
-libdir = "${exec_prefix}/lib/${MULTIMACH_TARGET_SYS}"
-libexecdir = "${exec_prefix}/libexec/${MULTIMACH_TARGET_SYS}"
+libdir = "${exec_prefix}/lib/${CROSS_TARGET_SYS_DIR}"
+libexecdir = "${exec_prefix}/libexec/${CROSS_TARGET_SYS_DIR}"
 
 do_install () {
 	oe_runmake 'DESTDIR=${D}' install
-- 
1.7.2


