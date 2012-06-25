Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E784E006D9
	for <poky@yoctoproject.org>; Mon, 25 Jun 2012 10:07:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jun 2012 10:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115827476"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.180])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jun 2012 10:07:28 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jun 2012 10:07:17 -0700
Message-Id: <33fedfdab799eae632d7ccf02b37602f5d267539.1340643949.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
Subject: [Consolidated Poky Pull 2/7] linux-libc-headers-yocto: update to v3.4 and remove unecessary code
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
X-List-Received-Date: Mon, 25 Jun 2012 17:07:29 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

Updating the linux-libc-headers-yocto recipe to 3.4. There are blocks
of code and definitions that are handled by the included libc-headers.inc,
so we shouldn't be repeating them in this recipe.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux-libc-headers-yocto_git.bb                |   32 ++++---------------
 1 files changed, 7 insertions(+), 25 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb b/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
index 831e452..b4222f1 100644
--- a/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
+++ b/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
@@ -3,18 +3,17 @@ include recipes-kernel/linux/linux-yocto.inc
 
 B = "${S}"
 
-INHIBIT_DEFAULT_DEPS = "1"
-DEPENDS += "unifdef-native"
 PROVIDES = "linux-libc-headers"
 RPROVIDES_${PN}-dev = "linux-libc-headers-dev"
 RPROVIDES_${PN}-dbg = "linux-libc-headers-dbg"
-SRCREV = "21ab5dca134a6bf1316aa59f69f9ee9e091d5702"
-KBRANCH ?= "standard/base"
-KMETA ?= "meta"
-PV = "3.2+git-${SRCPV}"
-PR = "r5"
 
-SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+KBRANCH = "standard/base"
+SRCREV = "a1cdb60720c452c3965eaec3ec2cd10f06261cc5"
+
+PV = "3.4+git-${SRCPV}"
+PR = "r6"
+
+SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.4.git;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
 
 # force this to empty to prevent installation failures, we aren't
 # building a device tree as part of kern headers
@@ -22,17 +21,6 @@ KERNEL_DEVICETREE = ""
 
 inherit kernel-arch
 
-do_configure() {
-	oe_runmake allnoconfig
-}
-
-do_install() {
-	oe_runmake headers_install INSTALL_HDR_PATH=${D}${exec_prefix}
-
-        # The ..install.cmd conflicts between various configure runs
-        find ${D}${includedir} -name ..install.cmd | xargs rm -f
-}
-
 # The following tasks are not required when we just want
 # headers. So we override and stub them out.
 do_kernel_configme() {
@@ -41,12 +29,6 @@ do_kernel_configme() {
 do_patch () {
 }
 
-do_compile () {
-}
-
-do_validate_branches () {
-}
-
 do_kernel_configcheck () {
 }
 
-- 
1.7.7.6


