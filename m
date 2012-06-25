Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F98E006D9
	for <poky@yoctoproject.org>; Mon, 25 Jun 2012 10:07:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jun 2012 10:07:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115827472"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.180])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jun 2012 10:07:28 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jun 2012 10:07:16 -0700
Message-Id: <5672e4d0110fb4e54f8bf829f1a819a31a169c27.1340643949.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
Subject: [Consolidated Poky Pull 1/7] linux-libc-headers-yocto: use kernel-arch to set ARCH
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

The arch mapping done in kernel-arch should be used instead of
recipe local mapping. Inheriting kernel-arch consolidates the
code and simplifies the libc-header recipe.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux-libc-headers-yocto_git.bb                |   17 +++--------------
 1 files changed, 3 insertions(+), 14 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb b/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
index 756b596..831e452 100644
--- a/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
+++ b/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
@@ -20,25 +20,14 @@ SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;nocheckout=1;
 # building a device tree as part of kern headers
 KERNEL_DEVICETREE = ""
 
-set_arch() {
-	case ${TARGET_ARCH} in
-		arm*)     ARCH=arm ;;
-		i*86*)    ARCH=i386 ;;
-		ia64*)    ARCH=ia64 ;;
-		mips*)    ARCH=mips ;;
-		powerpc*) ARCH=powerpc ;;
-		x86_64*)  ARCH=x86_64 ;;
-	esac
-}
+inherit kernel-arch
 
 do_configure() {
-	set_arch
-	oe_runmake allnoconfig ARCH=$ARCH
+	oe_runmake allnoconfig
 }
 
 do_install() {
-	set_arch
-	oe_runmake headers_install INSTALL_HDR_PATH=${D}${exec_prefix} ARCH=$ARCH
+	oe_runmake headers_install INSTALL_HDR_PATH=${D}${exec_prefix}
 
         # The ..install.cmd conflicts between various configure runs
         find ${D}${includedir} -name ..install.cmd | xargs rm -f
-- 
1.7.7.6


