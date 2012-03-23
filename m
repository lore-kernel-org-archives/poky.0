Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9917E004D2
	for <poky@yoctoproject.org>; Fri, 23 Mar 2012 10:11:16 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2NHBCML008436;
	Fri, 23 Mar 2012 10:11:14 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 23 Mar 2012 13:12:42 -0400
Message-Id: <df3c9be1863f12baab73fe8692ebae50151729ac.1332522512.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1332522512.git.bruce.ashfield@windriver.com>
References: <cover.1332522512.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1332522512.git.bruce.ashfield@windriver.com>
References: <cover.1332522512.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-libc-headers-yocto: move to meta-yocto
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
X-List-Received-Date: Fri, 23 Mar 2012 17:11:16 -0000

linux-libc-headers-yocto is not directly required in meta, so we can
safely move it to meta-yocto.

Machines including meta-yocto that are using linux-yocto that need headers
which are completely up to date with the linux-yocto git tree can use this
as their preferred linux-libc-headers.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux-libc-headers-yocto_git.bb                |   64 ++++++++++++++++++++
 1 files changed, 64 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb

diff --git a/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb b/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
new file mode 100644
index 0000000..756b596
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
@@ -0,0 +1,64 @@
+require recipes-kernel/linux-libc-headers/linux-libc-headers.inc
+include recipes-kernel/linux/linux-yocto.inc
+
+B = "${S}"
+
+INHIBIT_DEFAULT_DEPS = "1"
+DEPENDS += "unifdef-native"
+PROVIDES = "linux-libc-headers"
+RPROVIDES_${PN}-dev = "linux-libc-headers-dev"
+RPROVIDES_${PN}-dbg = "linux-libc-headers-dbg"
+SRCREV = "21ab5dca134a6bf1316aa59f69f9ee9e091d5702"
+KBRANCH ?= "standard/base"
+KMETA ?= "meta"
+PV = "3.2+git-${SRCPV}"
+PR = "r5"
+
+SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
+
+# force this to empty to prevent installation failures, we aren't
+# building a device tree as part of kern headers
+KERNEL_DEVICETREE = ""
+
+set_arch() {
+	case ${TARGET_ARCH} in
+		arm*)     ARCH=arm ;;
+		i*86*)    ARCH=i386 ;;
+		ia64*)    ARCH=ia64 ;;
+		mips*)    ARCH=mips ;;
+		powerpc*) ARCH=powerpc ;;
+		x86_64*)  ARCH=x86_64 ;;
+	esac
+}
+
+do_configure() {
+	set_arch
+	oe_runmake allnoconfig ARCH=$ARCH
+}
+
+do_install() {
+	set_arch
+	oe_runmake headers_install INSTALL_HDR_PATH=${D}${exec_prefix} ARCH=$ARCH
+
+        # The ..install.cmd conflicts between various configure runs
+        find ${D}${includedir} -name ..install.cmd | xargs rm -f
+}
+
+# The following tasks are not required when we just want
+# headers. So we override and stub them out.
+do_kernel_configme() {
+}
+
+do_patch () {
+}
+
+do_compile () {
+}
+
+do_validate_branches () {
+}
+
+do_kernel_configcheck () {
+}
+
+BBCLASSEXTEND = "nativesdk"
-- 
1.7.0.4


