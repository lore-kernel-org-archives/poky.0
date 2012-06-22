Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2415AE0070B;
	Fri, 22 Jun 2012 08:54:46 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.wrs.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5MFsWU2003308;
	Fri, 22 Jun 2012 08:54:34 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 22 Jun 2012 12:04:46 -0400
Message-Id: <ef592dc9f812296bc79c89abb3d57a07bf76076a.1340380930.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1340380930.git.bruce.ashfield@windriver.com>
References: <cover.1340380930.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1340380930.git.bruce.ashfield@windriver.com>
References: <cover.1340380930.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/2] linux-libc-headers-yocto: update to v3.4 and remove unecessary code
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
X-List-Received-Date: Fri, 22 Jun 2012 15:54:46 -0000

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
1.7.0.4


