Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BA4A4C8059A
	for <poky@yoctoproject.org>; Mon,  2 May 2011 15:32:43 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 May 2011 13:32:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,304,1301900400"; d="scan'208";a="636873555"
Received: from unknown (HELO localhost) ([10.255.13.75])
	by orsmga002.jf.intel.com with ESMTP; 02 May 2011 13:32:39 -0700
Message-Id: <bf5640079454e16c8bde1b4b001ddef165dbca26.1304367136.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1304367134.git.tom.zanussi@intel.com>
References: <cover.1304367134.git.tom.zanussi@intel.com>
Old-Date: Mon, 2 May 2011 14:55:11 -0500
Date: Mon, 02 May 2011 15:32:34 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: use default rootfs size for BSPS
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
X-List-Received-Date: Mon, 02 May 2011 20:32:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The default rootfs size if left unspecified is the actual rootfs size
+ 20%.  There doesn't seem to be a reason to make the default for
these BSPs anything different, so remove the IMAGE_ROOTFS_SIZE
overrides.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf  |    2 --
 meta-crownbay/conf/machine/crownbay.conf         |    2 --
 meta-emenlow/conf/machine/emenlow.conf           |    2 --
 meta-fishriver/conf/machine/fishriver.conf       |    2 --
 meta-jasperforest/conf/machine/jasperforest.conf |    2 --
 meta-sugarbay/conf/machine/sugarbay.conf         |    2 --
 6 files changed, 0 insertions(+), 12 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index a65339b..6470911 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -35,8 +35,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 GUI_MACHINE_CLASS = "bigscreen"
 
-IMAGE_ROOTFS_SIZE_ext3 = "2000000"
-
 IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 3660383..b46d783 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -39,8 +39,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 GUI_MACHINE_CLASS = "bigscreen"
 
-IMAGE_ROOTFS_SIZE_ext3 = "2000000"
-
 IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 6e12c02..7e5e78d 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -36,8 +36,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 GUI_MACHINE_CLASS = "bigscreen"
 
-IMAGE_ROOTFS_SIZE_ext3 = "2000000"
-
 IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 64c194b..91a1fb6 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -35,8 +35,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 GUI_MACHINE_CLASS = "bigscreen"
 
-IMAGE_ROOTFS_SIZE_ext3 = "1000000"
-
 IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index f92ffcd..8ae7813 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -34,8 +34,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 GUI_MACHINE_CLASS = "bigscreen"
 
-IMAGE_ROOTFS_SIZE_ext3 = "2000000"
-
 IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 00534a5..845ac64 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -36,8 +36,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
 
 GUI_MACHINE_CLASS = "bigscreen"
 
-IMAGE_ROOTFS_SIZE_ext3 = "2000000"
-
 IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
-- 
1.7.0.4


