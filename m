Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27817E0098D; Thu,  5 Feb 2015 04:06:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54128E00948
	for <poky@yoctoproject.org>; Thu,  5 Feb 2015 04:06:00 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 05 Feb 2015 04:05:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="450204873"
Received: from mhgreen-mobl5.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.19.49])
	by FMSMGA003.fm.intel.com with ESMTP; 05 Feb 2015 03:51:43 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  5 Feb 2015 12:05:54 +0000
Message-Id: <99dc3ee3e123a04d1dc7cde4fc53bcb61e8520eb.1423137176.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1423137176.git.paul.eggleton@linux.intel.com>
References: <cover.1423137176.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1423137176.git.paul.eggleton@linux.intel.com>
References: <cover.1423137176.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] poky.conf: resolve mismatch between poky bblayers version and OE-Core
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Feb 2015 12:06:03 -0000

Drop our custom LAYER_CONF_VERSION (since the OE-Core version is now the
same) and ensure that poky-sanity's update function runs first so that
anyone still using version 5 with poky gets the meta-yocto /
meta-yocto-bsp split handled instead of OE-Core's no-op upgrade. Also
fix the version check so that the poky 5->6 upgrade is still performed
if the latest version is greater than 6.

NOTE: this of course relies on the corresponding version bump patch in
OE-Core.

Fixes [YOCTO #6139].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/classes/poky-sanity.bbclass | 8 ++++++--
 meta-yocto/conf/distro/poky.conf       | 1 -
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/classes/poky-sanity.bbclass b/meta-yocto/classes/poky-sanity.bbclass
index fff08b3..77c266e 100644
--- a/meta-yocto/classes/poky-sanity.bbclass
+++ b/meta-yocto/classes/poky-sanity.bbclass
@@ -1,3 +1,5 @@
+# Provide some extensions to sanity.bbclass to handle poky-specific conf file upgrades
+
 python poky_update_bblayersconf() {
     current_version = int(d.getVar('LCONF_VERSION', True) or -1)
     latest_version = int(d.getVar('LAYER_CONF_VERSION', True) or -1)
@@ -5,7 +7,8 @@ python poky_update_bblayersconf() {
     bblayers_fn = bblayers_conf_file(d)
     lines = sanity_conf_read(bblayers_fn)
 
-    if current_version == 5 and latest_version == 6:
+    if current_version == 5 and latest_version > 5:
+        # Handle split out of meta-yocto-bsp from meta-yocto
         if '/meta-yocto-bsp' not in d.getVar('BBLAYERS', True):
             index, meta_yocto_line = sanity_conf_find_line('meta-yocto\s*\\\\\\n', lines)
             if meta_yocto_line:
@@ -21,4 +24,5 @@ python poky_update_bblayersconf() {
     sys.exit()
 }
 
-BBLAYERS_CONF_UPDATE_FUNCS += "poky_update_bblayersconf"
+# Prepend to ensure our function runs before the OE-Core one
+BBLAYERS_CONF_UPDATE_FUNCS =+ "poky_update_bblayersconf"
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 479182f..1e00598 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -10,7 +10,6 @@ MAINTAINER = "Poky <poky@yoctoproject.org>"
 TARGET_VENDOR = "-poky"
 
 LOCALCONF_VERSION = "1"
-LAYER_CONF_VERSION ?= "6"
 
 # Override these in poky based distros
 POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland"
-- 
1.9.3


