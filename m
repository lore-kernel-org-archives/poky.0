Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9438A4C80ADD
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 16:14:28 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Apr 2011 14:14:28 -0700
Message-Id: <1bdc18$kc3a92@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,266,1301900400"; d="scan'208";a="683780393"
Received: from unknown (HELO localhost) ([10.255.12.226])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2011 14:14:28 -0700
Old-Date: Mon, 25 Apr 2011 15:52:00 -0500
Date: Mon, 25 Apr 2011 16:14:27 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-crownbay: update documentation with hw and build details
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
X-List-Received-Date: Mon, 25 Apr 2011 21:14:28 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add missing info on supported hardware, and update the details with
respect to building with/without emgd.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README |   42 +++++++++++++++++++++++++++++++-----------
 1 files changed, 31 insertions(+), 11 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index 468608c..1177024 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -2,6 +2,11 @@ This README file contains information on building the meta-crownbay
 BSP layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
+The Crown Bay platform consists of the Intel Atom Z6xx processor,
+plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
+
+It also supports the E6xx embedded on-chip graphics via the Intel
+Embedded Media and Graphics Driver (EMGD) 1.5 Gold Driver.
 
 Table of Contents
 =================
@@ -21,8 +26,8 @@ current master.
 
 In order to build an image with BSP support for a given release, you
 need to check out the 'meta-intel' branch corresponding to the release
-you're building against e.g. to build for laverne (0.90), check out
-the 'laverne' branch of both poky and 'meta-intel'.
+you're building against e.g. to build for bernard (1.0), check out
+the 'bernard' branch of both poky and 'meta-intel'.
 
 Having done that, and assuming you cloned the 'meta-intel' repository
 at the top-level of your yocto build tree, you can build a crownbay
@@ -31,10 +36,22 @@ bblayers.conf e.g.:
 
   yocto/meta-intel/meta-crownbay \
 
-To enable the crownbay layer, add the crownbay MACHINE to local.conf:
+The meta-crownbay layer contains support for two different machine
+configurations. These configurations are identical except for the fact
+that the one prefixed with 'crownbay' makes use of the
+Intel-proprietary EMGD 1.5 graphics driver, while the one prefixed
+with 'crownbay-noemgd' does not.
+
+If you want to enable the layer that supports EMGD graphics add
+following to the local.conf file:
 
   MACHINE ?= "crownbay"
 
+If you want to enable the layer that does not support EMGD graphics
+add the following to the local.conf file:
+
+  MACHINE ?= "crownbay-noemgd"
+
 You should then be able to build a crownbay image as such:
 
   $ source poky-init-build-env
@@ -49,14 +66,17 @@ II. Special notes for building the meta-crownbay BSP layer
 ==========================================================
 
 The meta-crownbay layer makes use of the proprietary Intel EMGD
-userspace drivers, which at this point in time require that the user
-accept the Intel license by manually extracting the binaries and
-copying them to the proper location in the meta-crownbay layer.
-
-There currently isn't an automated way to do this, thus the manual
-step.  When Yocto supports a click-through installation mechanism, the
-binary files will be packaged as part of the recipe, and this step
-will be unnecessary.
+userspace drivers when building the "crownbay" machine (but not when
+building the "crownbay-noemgd" machine).  If you got the BSP from the
+'BSP Downloads' section of the Yocto website, the EMGD binaries needed
+to perform the build will already be present in the BSP, located in
+the recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin directory, and
+you can ignore the rest of this section.
+
+If you didn't get the BSP from the 'BSP Downloads' section of the
+Yocto website, you'll need to download the a Windows executable from
+the official EMGD website, extract the binaries from it, and copy them
+to the proper location in the meta-crownbay layer.
 
 These steps require that you run a graphical application in Windows.
 Windows 7 was used for these instructions, but it shouldn't matter
-- 
1.7.0.4


