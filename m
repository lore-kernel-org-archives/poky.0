Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 022B54C811D0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:36:05 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Nov 2010 07:36:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="353579579"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 26 Nov 2010 07:36:05 -0800
Message-Id: <64c48f1e2464967960af37ab2b1b196a28b2a572.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 21:45:32 +0800
To: poky@yoctoproject.org
Subject: [PATCH 12/14] gnu-config:Add license checksum and update the GPL information
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
X-List-Received-Date: Fri, 26 Nov 2010 15:36:06 -0000

Add config.guess file checksum to bb file and update the "GPL" to "GPLv1+" according to the license file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../gnu-config/gnu-config_20080123.bb              |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb b/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
index 1ca5c89..5d7d646 100644
--- a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
+++ b/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "gnu-configize"
 SECTION = "devel"
-LICENSE = "GPL"
+LICENSE = "GPLv1+"
+LIC_FILES_CHKSUM = "file://config.guess;endline=39;md5=a089987af4a25cb0419d1c2fd6d495e3"
 DEPENDS = ""
 INHIBIT_DEFAULT_DEPS = "1"
 
-- 
1.6.3.3


