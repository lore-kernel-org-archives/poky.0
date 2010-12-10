Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 207BB4C810B0;
	Fri, 10 Dec 2010 10:01:44 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBAG1dCS027769;
	Fri, 10 Dec 2010 08:01:42 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 10 Dec 2010 11:02:54 -0500
Message-Id: <5046c5de2cdd90b09025e15fb1b5b29156bd112f.1291996631.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1291996631.git.bruce.ashfield@windriver.com>
References: <cover.1291996631.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1291996631.git.bruce.ashfield@windriver.com>
References: <cover.1291996631.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/3] linux-libc-headers-yocto: use common linux-yocto routines
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
X-List-Received-Date: Fri, 10 Dec 2010 16:01:44 -0000

Modify linux-libc-headers-yocto to use the common linux-yocto
routines, so headers exported to userspace will track the
branches in the yocto kernel git repository.

This commit also switches supported boards to prefer the
yocto libc headers.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux-libc-headers-yocto_git.bb                |   21 ++++++++-----------
 1 files changed, 9 insertions(+), 12 deletions(-)

diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
index 3e3c1fa..0515233 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
@@ -1,4 +1,7 @@
 require linux-libc-headers.inc
+include recipes-kernel/linux/linux-yocto.inc
+
+B = "${S}"
 
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS += "unifdef-native"
@@ -8,7 +11,9 @@ PR = "r1"
 
 SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;fullclone=1"
 
-S = "${WORKDIR}/linux"
+SRCREV_FORMAT = "meta_machine"
+SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
+           git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"
 
 set_arch() {
 	case ${TARGET_ARCH} in
@@ -26,19 +31,11 @@ do_configure() {
 	oe_runmake allnoconfig ARCH=$ARCH
 }
 
-do_kernel_checkout() {
-	if [ -d ${WORKDIR}/.git/refs/remotes/origin ]; then
-		rm -rf ${S}
-		mkdir ${S}
-		mv ${WORKDIR}/.git ${S}
-		mv ${S}/.git/refs/remotes/origin/* ${S}/.git/refs/heads
-		rmdir ${S}/.git/refs/remotes/origin
-	fi
-	cd ${S}
-	git checkout -f standard
+do_kernel_configme() {
 }
 
-addtask kernel_checkout before do_patch after do_unpack
+do_patch () {
+}
 
 do_compile () {
 }
-- 
1.7.0.4


