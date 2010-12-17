Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 746204C80B70
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 17:24:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Dec 2010 15:23:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,190,1291622400"; d="scan'208";a="363363212"
Received: from unknown (HELO [10.255.14.44]) ([10.255.14.44])
	by azsmga001.ch.intel.com with ESMTP; 17 Dec 2010 15:23:40 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 17 Dec 2010 17:23:46 -0600
Message-ID: <1292628226.2104.506.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] meta-crownbay: update README
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
X-List-Received-Date: Fri, 17 Dec 2010 23:24:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Update the crownbay README with information explaining the available
machine configurations.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README |   36 +++++++++++++++++++++++++++++++++---
 1 files changed, 33 insertions(+), 3 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index f0a710b..be842d6 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -1,5 +1,27 @@
 This README file contains information on building the meta-crownbay
-BSP layer, and booting the images contained in the /binary directory.
+BSP layer using any of the supported machine configurations, and
+booting the images contained in the /binary directory.
+
+The meta-crownbay layer contains support for 2 different machine
+configurations, identical except for the fact that one ('crownbay')
+makes use of the Intel-proprietary EMGD 1.5 graphics driver, and the
+other ('crownbay-noemgd') does not.
+
+The default 'crownbay' configuration requires an extra manual step
+before building in order for the build to complete.  Please see
+section II below for details.
+
+The 'crownbay-noemgd' configuration doesn't require any special setup,
+but since it uses generic vesa, the graphics aren't as nice and don't
+perform as well as the 'crownbay', which does make use of the EMGD
+graphics driver.
+
+If you're only interested in booting the images in the /binary
+directory of a BSP tarball you've downloaded, there's nothing special
+to do - the appropriate images (for either normal or -noemgd) are
+already in the /binary directory depending on which BSP tarball you
+downloaded.
+
 Please see the corresponding sections below for details.
 
 
@@ -7,7 +29,8 @@ Table of Contents
 =================
 
   I. Building the meta-crownbay BSP layer
- II. Special notes for building the meta-crownbay BSP layer
+ II. Special notes for building the meta-crownbay BSP layer (with EMGD
+     graphics)
 III. Booting the images in /binary
 
 
@@ -31,10 +54,16 @@ bblayers.conf e.g.:
 
   yocto/meta-intel/meta-crownbay \
 
-To enable the crownbay layer, add the crownbay MACHINE to local.conf:
+To enable the crownbay (with EMGD graphics) layer, add the crownbay
+MACHINE to local.conf:
 
   MACHINE ?= "crownbay"
 
+To enable the crownbay-noemgd layer, add the crownbay-noemgd MACHINE
+to local.conf:
+
+  MACHINE ?= "crownbay-noemgd"
+
 You should then be able to build a crownbay image as such:
 
   $ source poky-init-build-env
@@ -46,6 +75,7 @@ that below, in the section 'Booting the images from /binary').
 
 
 II. Special notes for building the meta-crownbay BSP layer
+    (with EMGD graphics)
 ==========================================================
 
 The meta-crownbay layer makes use of the proprietary Intel EMGD
-- 
1.7.0.4




