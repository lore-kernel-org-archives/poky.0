Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9692C4C81021;
	Tue, 11 Jan 2011 12:48:24 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0BImLGT017089;
	Tue, 11 Jan 2011 10:48:22 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 11 Jan 2011 13:50:40 -0500
Message-Id: <df1840b9f8c971f2cceb4d12561861fd13d5d316.1294771756.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1294771756.git.bruce.ashfield@windriver.com>
References: <cover.1294771756.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294771756.git.bruce.ashfield@windriver.com>
References: <cover.1294771756.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto: add routerstation pro and mpc8315e-rdb support
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
X-List-Received-Date: Tue, 11 Jan 2011 18:48:24 -0000

The routerstation pro and mpc8315e-rdb have been validated
on 2.6.37 so we can switch their preference to linux-yocto
and update the machine compatibility to add them to the support
list.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/conf/machine/mpc8315e-rdb.conf                |    4 ++--
 meta/conf/machine/routerstationpro.conf            |    4 ++--
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index e094109..4ce6be1 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -102,7 +102,7 @@ SRCREV_machine_pn-linux-yocto_qemux86 ?= "a9d833fda90e2f1257888a97e092135610b5f2
 SRCREV_machine_pn-linux-yocto_qemux86-64 ?= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_machine_pn-linux-yocto_emenlow ?= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_machine_pn-linux-yocto_atom-pc ?= "a9d833fda90e2f1257888a97e092135610b5f259"
-SRCREV_machine_pn-linux-yocto_routerstationpro ?= "9d24b148fc23a2c8fab0a6add18500453b375d54"
+SRCREV_machine_pn-linux-yocto_routerstationpro ?= "219a5f9dc6e5beced36184e141f80b2df61ae32f"
 SRCREV_machine_pn-linux-yocto_mpc8315e-rdb ?= "3f01b98238c2ff7913ce9f68f9db5ae9538717bc"
 SRCREV_machine_pn-linux-yocto_beagleboard ?= "a9d833fda90e2f1257888a97e092135610b5f259"
 SRCREV_meta_pn-linux-yocto ?= "7102097a25c7658e0f4d4dc71844e0ff6c446b25"
diff --git a/meta/conf/machine/mpc8315e-rdb.conf b/meta/conf/machine/mpc8315e-rdb.conf
index 919a95d..e3f9d23 100644
--- a/meta/conf/machine/mpc8315e-rdb.conf
+++ b/meta/conf/machine/mpc8315e-rdb.conf
@@ -12,5 +12,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
-#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
diff --git a/meta/conf/machine/routerstationpro.conf b/meta/conf/machine/routerstationpro.conf
index 4f1bbbb..9e5036d 100644
--- a/meta/conf/machine/routerstationpro.conf
+++ b/meta/conf/machine/routerstationpro.conf
@@ -12,8 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
 KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
-#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index 06836f7..21023da 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -20,7 +20,7 @@ SRCREV_FORMAT = "meta_machine"
 SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
            git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;noclone=1;branch=meta;name=meta"
 
-COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64)"
+COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro)"
 
 # Functionality flags
 KERNEL_REVISION_CHECKING ?= "t"
-- 
1.7.0.4


