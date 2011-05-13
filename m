Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2434F4C810BF
	for <poky@yoctoproject.org>; Thu, 12 May 2011 22:31:49 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 20:31:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,362,1301900400"; d="scan'208";a="642096811"
Received: from unknown (HELO localhost) ([10.255.12.78])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2011 20:31:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 12 May 2011 20:31:35 -0700
Message-Id: <e1b71af1b5924aaba0bcd1d440312f1bd5ce0f6a.1305257454.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH][meta-intel] linux-yocto*: extend FILESEXTRAPATHS instead of clobber them
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
X-List-Received-Date: Fri, 13 May 2011 03:31:49 -0000

Clobbering FILESEXTRAPATHS prevents multiple bbappend files providing file://
SRC_URIs. Extend the variable in each meta-* layer instead.

Build tested with linux-yocto on n450 and crownbay and linux-yocto-stable on
crownbay. Build tested linux-yocto on n450 with a third layer adding a config
fragment.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 10 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 4136536..8309478 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "crownbay"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
index 32bbd10..5912fb7 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 KMACHINE_crownbay  = "yocto/standard/crownbay"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 9fa2937..09234dc 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "emenlow"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
index 360c259..3d7e021 100644
--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
 KMACHINE_emenlow  = "yocto/standard/emenlow"
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
index 549d085..2e12221 100644
--- a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_fishriver = "fishriver"
 # zzzz /yocto/standard/crownbay->fishriver
 KMACHINE_fishriver  = "yocto/standard/crownbay"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 066776b..a6e31d0 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 KMACHINE_jasperforest  = "jasperforest"
diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
index 988c969..5781326 100644
--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_jasperforest = "jasperforest"
 
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index e69c644..73a3ee3 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 KMACHINE_n450 = "atom-pc"
 COMPATIBLE_MACHINE_n450 = "n450"
 
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
index 79706d5..92d666f 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 KMACHINE_n450 = "yocto/standard/common-pc/atom-pc"
 COMPATIBLE_MACHINE_n450 = "n450"
 
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
index fe160c0..c1b9a9e 100644
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
+FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_sugarbay = "sugarbay"
 KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
-- 
1.7.1


