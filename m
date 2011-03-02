Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6F574C80ABA
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Mar 2011 10:00:59 -0800
Message-Id: <b9dded$i440ij@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="608305747"
Received: from unknown (HELO localhost) ([10.255.12.138])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2011 10:00:59 -0800
Old-Date: Tue, 1 Mar 2011 14:17:55 -0800
Date: Wed, 02 Mar 2011 10:00:56 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/2] module: build and clean hostprogs for each module
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
X-List-Received-Date: Wed, 02 Mar 2011 18:01:00 -0000

From: Darren Hart <dvhart@linux.intel.com>

This fixes [BUGID #241]

The kernel hostprogs are built for the host architecture. They should not
be deployed with to the target, and they should not be included in an sstate
package which might get reused on a host of a different architecture.

As we don't build many out-of-tree modules, this patch takes the approach
of building the hostprogs as part of the module compile process with a
do_compile_prepend() routine in module.bbclass. To ensure the hostprogs
don't contaminate the build, they are removed in do_install_append().

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Gary Thomas <gary@mlbassoc.com>
---
 meta/classes/module.bbclass |   21 ++++++++++++++++++++-
 1 files changed, 20 insertions(+), 1 deletions(-)

diff --git a/meta/classes/module.bbclass b/meta/classes/module.bbclass
index d16d462..78f9b0a 100644
--- a/meta/classes/module.bbclass
+++ b/meta/classes/module.bbclass
@@ -3,6 +3,15 @@ DEPENDS += "virtual/kernel"
 
 inherit module-base
 
+# Ensure the hostprogs are available for module compilation
+module_do_compile_prepend() {
+	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS 
+	oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}" AR="${KERNEL_AR}" \
+	           -C ${STAGING_KERNEL_DIR} clean SUBDIRS=scripts
+	oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}" AR="${KERNEL_AR}" \
+	           -C ${STAGING_KERNEL_DIR} scripts
+}
+
 module_do_compile() {
 	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
 	oe_runmake KERNEL_PATH=${STAGING_KERNEL_DIR}   \
@@ -15,7 +24,17 @@ module_do_compile() {
 
 module_do_install() {
 	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
-	oe_runmake DEPMOD=echo INSTALL_MOD_PATH="${D}" CC="${KERNEL_CC}" LD="${KERNEL_LD}" modules_install
+	oe_runmake DEPMOD=echo INSTALL_MOD_PATH="${D}" \
+	           KERNEL_SRC=${STAGING_KERNEL_DIR} \
+	           CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
+	           modules_install
+}
+
+# Remove the hostprogs from the STAGING_KERNEL_DIR
+module_do_install_append() {
+	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
+	oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}" AR="${KERNEL_AR}" \
+	           -C ${STAGING_KERNEL_DIR} clean SUBDIRS=scripts
 }
 
 pkg_postinst_append () {
-- 
1.7.1


