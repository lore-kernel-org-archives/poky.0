Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46E8C4C80BEF
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 13:55:56 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Dec 2010 11:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,325,1288594800"; d="scan'208";a="582557213"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.164])
	by orsmga002.jf.intel.com with ESMTP; 10 Dec 2010 11:55:55 -0800
Message-Id: <4dcf7061ab385fcddd33cfb8d4a2359b5d863762.1292010816.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292010816.git.dvhart@linux.intel.com>
References: <cover.1292010816.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 10 Dec 2010 10:52:04 -0800
To: sgw@linux.intel.com,poky@yoctoproject.org
Subject: [PATCH 1/5] Correct DESCRIPTION typos in various recipes
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
X-List-Received-Date: Fri, 10 Dec 2010 19:55:56 -0000

An investigation into undocumented variables uncovered a few mispellings
of the variable DESCRIPTION.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../initrdscripts/initramfs-boot_1.0.bb            |    2 +-
 .../initrdscripts/initramfs-live-boot_1.0.bb       |    2 +-
 .../initrdscripts/initramfs-live-install_1.0.bb    |    2 +-
 meta/recipes-core/tasks/task-poky-sdk.bb           |    2 +-
 meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb     |    2 +-
 .../tasks/task-poky-standalone-gmae-sdk-target.bb  |    2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-core/initrdscripts/initramfs-boot_1.0.bb b/meta/recipes-core/initrdscripts/initramfs-boot_1.0.bb
index 8b2acae..8be0193 100644
--- a/meta/recipes-core/initrdscripts/initramfs-boot_1.0.bb
+++ b/meta/recipes-core/initrdscripts/initramfs-boot_1.0.bb
@@ -1,4 +1,4 @@
-DESCRIPTON = "A live image init script"
+DESCRIPTION = "A live image init script"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 SRC_URI = "file://init-boot.sh"
diff --git a/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb b/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
index 7eb8db1..83e3be9 100644
--- a/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
+++ b/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
@@ -1,4 +1,4 @@
-DESCRIPTON = "A live image init script"
+DESCRIPTION = "A live image init script"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 SRC_URI = "file://init-live.sh"
diff --git a/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb b/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
index b3a16bd..82a1e44 100644
--- a/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
+++ b/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
@@ -1,4 +1,4 @@
-DESCRIPTON = "A live image init script"
+DESCRIPTION = "A live image init script"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 SRC_URI = "file://init-install.sh"
diff --git a/meta/recipes-core/tasks/task-poky-sdk.bb b/meta/recipes-core/tasks/task-poky-sdk.bb
index 61e9dfb..758cc2e 100644
--- a/meta/recipes-core/tasks/task-poky-sdk.bb
+++ b/meta/recipes-core/tasks/task-poky-sdk.bb
@@ -2,7 +2,7 @@
 # Copyright (C) 2007 OpenedHand Ltd.
 #
 
-DESCRIPTON = "Software Development Tasks for OpenedHand Poky"
+DESCRIPTION = "Software Development Tasks for OpenedHand Poky"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
diff --git a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb b/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
index 1618ec4..b3b5ebb 100644
--- a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
+++ b/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
@@ -2,7 +2,7 @@
 # Copyright (C) 2007 OpenedHand Ltd.
 #
 
-DESCRIPTON = "Gnome Mobile And Embedded Software Development Kit for OpenedHand Poky"
+DESCRIPTION = "Gnome Mobile And Embedded Software Development Kit for OpenedHand Poky"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
diff --git a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
index 22ee991..cf81bf3 100644
--- a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
+++ b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
@@ -2,7 +2,7 @@
 # Copyright (C) 2007 OpenedHand Ltd.
 #
 
-DESCRIPTON = "Gnome Mobile And Embedded Software Development Kit for OpenedHand Poky"
+DESCRIPTION = "Gnome Mobile And Embedded Software Development Kit for OpenedHand Poky"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-- 
1.7.1


