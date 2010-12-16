Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 782274C81110
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 03:24:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Dec 2010 01:24:06 -0800
Message-Id: <0d30dc$kfrh4k@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="687719572"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.126])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 01:24:05 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Thu, 16 Dec 2010 16:56:15 +0800
To: poky@pokylinux.org,paul.eggleton@linux.intel.com,rpurdie@linux.intel.com
Subject: [PATCH 2/3] kernel.bbclass: rename do_deploy and add vardepsexclusive accordingly
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
X-List-Received-Date: Thu, 16 Dec 2010 09:24:06 -0000

rename do_deploy to kernel_do_deploy and export it. Then add exclusive
list for two variables it refers to:

+kernel_do_deploy[vardepsexclude] = "DATETIME"
+KERNEL_IMAGE_BASE_NAME[vardepsexclude] = "DATETIME"

This avoids the last road block linux-yocto for sstate.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/classes/kernel.bbclass |    4 +++-
 meta/conf/distro/poky.conf  |    2 ++
 2 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index bb76285..341809a 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -474,7 +474,7 @@ addtask sizecheck before do_install after do_compile
 KERNEL_IMAGE_BASE_NAME ?= "${KERNEL_IMAGETYPE}-${PV}-${PR}-${MACHINE}-${DATETIME}"
 KERNEL_IMAGE_SYMLINK_NAME ?= "${KERNEL_IMAGETYPE}-${MACHINE}"
 
-do_deploy() {
+kernel_do_deploy() {
 	install -m 0644 arch/${ARCH}/boot/${KERNEL_IMAGETYPE} ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.bin
 	if (grep -q -i -e '^CONFIG_MODULES=y$' .config); then
 		tar -cvzf ${DEPLOYDIR}/modules-${KERNEL_VERSION}-${PR}-${MACHINE}.tgz -C ${D} lib
@@ -504,6 +504,8 @@ do_deploy[dirs] = "${DEPLOYDIR} ${B}"
 
 addtask deploy before do_package after do_install
 
+EXPORT_FUNCTIONS do_deploy
+
 # perf must be enabled in individual kernel recipes
 PACKAGES =+ "perf"
 FILES_perf = "${bindir}/* \
diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index 95ca097..735e0c0 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -145,3 +145,5 @@ BB_SIGNATURE_HANDLER = "basic"
 BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
 BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER"
 patch_do_patch[vardepsexclude] = "DATE SRCDATE"
+kernel_do_deploy[vardepsexclude] = "DATETIME"
+KERNEL_IMAGE_BASE_NAME[vardepsexclude] = "DATETIME"
-- 
1.6.0.4


