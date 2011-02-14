Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26C9E4C80546;
	Mon, 14 Feb 2011 15:42:22 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1ELgJTK016342;
	Mon, 14 Feb 2011 13:42:20 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 14 Feb 2011 16:42:39 -0500
Message-Id: <622a74edcdccd3559477cdb2abcc103d819d0e13.1297719595.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <y>
References: <y>
In-Reply-To: <cover.1297719595.git.bruce.ashfield@windriver.com>
References: <cover.1297719595.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-libc-headers-yocto: disable device tree generation
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
X-List-Received-Date: Mon, 14 Feb 2011 21:42:22 -0000

Fixes [BUGID #719]

The common routines for handling a git based yocto kernel
are included from the lib headers recipe to checkout the
appropriate branch of the kernel for header generation.

linux-yocto.inc includes device tree installation rules
which typically apply to a kernel user of the include file,
but do not apply to a simple header generation. The fix is
to override the DTB variables in this recipe, which disable
the device tree installation rules.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../linux-libc-headers-yocto_git.bb                |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
index 0d58354..736d60f 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
@@ -12,6 +12,10 @@ PR = "r2"
 SRCREV_FORMAT = "meta_machine"
 SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
 
+# force this to empty to prevent installation failures, we aren't
+# building a device tree as part of kern headers
+KERNEL_DEVICETREE=
+
 set_arch() {
 	case ${TARGET_ARCH} in
 		arm*)     ARCH=arm ;;
-- 
1.7.0.4


