Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77344E006D9;
	Fri, 22 Jun 2012 08:54:46 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.wrs.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5MFsWU1003308;
	Fri, 22 Jun 2012 08:54:33 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 22 Jun 2012 12:04:45 -0400
Message-Id: <96fccea8afdcd006eedaa4d7d05ef8e787bd63f1.1340380930.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1340380930.git.bruce.ashfield@windriver.com>
References: <cover.1340380930.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1340380930.git.bruce.ashfield@windriver.com>
References: <cover.1340380930.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/2] linux-libc-headers-yocto: use kernel-arch to set ARCH
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
1.7.0.4


