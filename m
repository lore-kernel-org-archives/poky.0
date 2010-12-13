Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 995924C80050;
	Mon, 13 Dec 2010 00:26:32 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBD6QThS002593;
	Sun, 12 Dec 2010 22:26:31 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com, saul.wold@intel.com
Date: Mon, 13 Dec 2010 01:27:51 -0500
Message-Id: <69ad383525657b44dc7eeb347e888deebb501b00.1292221596.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292221596.git.bruce.ashfield@windriver.com>
References: <cover.1292221596.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1292221596.git.bruce.ashfield@windriver.com>
References: <cover.1292221596.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto: fix machine compatibility
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
X-List-Received-Date: Mon, 13 Dec 2010 06:26:32 -0000

During the last phase of the recipe factoring, the board compatibility
lists ended up in the wrong place, which meant we had an incomplete
list of boards, and the same set of boards for both kernels (stable
and devel).

To fix this, I've yanked the compatibility to the recipes themselves and
updated the emenlow to have a -stable bbappend.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 ...it.bbappend => linux-yocto-stable_git.bbappend} |    0
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |    2 ++
 meta/recipes-kernel/linux/linux-yocto.inc          |    2 --
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    1 +
 4 files changed, 3 insertions(+), 2 deletions(-)
 rename meta-emenlow/recipes/linux/{linux-yocto_git.bbappend => linux-yocto-stable_git.bbappend} (100%)

diff --git a/meta-emenlow/recipes/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes/linux/linux-yocto-stable_git.bbappend
similarity index 100%
rename from meta-emenlow/recipes/linux/linux-yocto_git.bbappend
rename to meta-emenlow/recipes/linux/linux-yocto-stable_git.bbappend
diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
index 8ecd86f..dd4d176 100644
--- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
@@ -17,6 +17,8 @@ PR = "r0"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 SRCREV_FORMAT = "meta_machine"
 
+COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
+
 # this performs a fixup on the SRCREV for new/undefined BSPs
 python __anonymous () {
     import bb, re
diff --git a/meta/recipes-kernel/linux/linux-yocto.inc b/meta/recipes-kernel/linux/linux-yocto.inc
index 095b337..2a77f4a 100644
--- a/meta/recipes-kernel/linux/linux-yocto.inc
+++ b/meta/recipes-kernel/linux/linux-yocto.inc
@@ -7,8 +7,6 @@ LICENSE = "GPL"
 # and it can be specific to the machine or shared
 KMACHINE = "UNDEFINED"
 
-COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro)"
-
 # Set this to 'preempt_rt' in the local.conf if you want a real time kernel
 LINUX_KERNEL_TYPE ?= standard
 
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index 1e3df47..f40fe38 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -20,6 +20,7 @@ SRCREV_FORMAT = "meta_machine"
 SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
            git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;noclone=1;branch=meta;name=meta"
 
+COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64)"
 
 # Functionality flags
 KERNEL_REVISION_CHECKING ?= "t"
-- 
1.7.0.4


