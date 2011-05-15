Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 45B424C8071E
	for <poky@yoctoproject.org>; Sat, 14 May 2011 22:43:18 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 May 2011 20:43:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,368,1301900400"; d="scan'208";a="642812771"
Received: from unknown (HELO localhost) ([10.255.12.105])
	by orsmga002.jf.intel.com with ESMTP; 14 May 2011 20:43:02 -0700
Message-Id: <9db6f1d05cb531a09bd71f7a3aa313c73230bde8.1305430844.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305430844.git.tom.zanussi@intel.com>
References: <cover.1305430844.git.tom.zanussi@intel.com>
Old-Date: Sat, 14 May 2011 20:53:39 -0500
Date: Sat, 14 May 2011 22:42:22 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] n450: fix n450-audio LIC_FILES_CHKSUM
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
X-List-Received-Date: Sun, 15 May 2011 03:43:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Change from POKYBASE to COREBASE.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-n450/recipes-bsp/n450-audio/n450-audio.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
index 90ec267..27904e3 100644
--- a/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
+++ b/meta-n450/recipes-bsp/n450-audio/n450-audio.bb
@@ -2,7 +2,7 @@ SUMMARY = "Provide a basic init script to enable audio"
 DESCRIPTION = "Set the volume and unmute the Front mixer setting during boot."
 SECTION = "base"
 LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
 
 PR = "r4"
 
-- 
1.7.0.4


