Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64EE74C80AC5
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:15:57 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Apr 2011 17:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="418820984"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by azsmga001.ch.intel.com with ESMTP; 13 Apr 2011 17:15:56 -0700
Message-Id: <9cb6ac18d8f53d8f922c2b0efbd311ae61d2879f.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1302739788.git.edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Wed, 13 Apr 2011 11:00:48 +0800
Date: Thu, 14 Apr 2011  8:13:23 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 4/9] x11perf: Upgrade to 1.5.3 (from 1.5.2)
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
X-List-Received-Date: Thu, 14 Apr 2011 00:15:57 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{x11perf_1.5.2.bb => x11perf_1.5.3.bb}         |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-app/{x11perf_1.5.2.bb => x11perf_1.5.3.bb} (76%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index b164b77..4b7c1a9 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -96,7 +96,7 @@ PREFERRED_VERSION_util-macros ?= "1.11.0"
 PREFERRED_VERSION_util-macros-native ?= "1.11.0"
 PREFERRED_VERSION_videoproto ?= "2.3.1"
 PREFERRED_VERSION_windowswmproto ?= "1.0.4"
-PREFERRED_VERSION_x11perf ?= "1.5.2"
+PREFERRED_VERSION_x11perf ?= "1.5.3"
 PREFERRED_VERSION_xauth ?= "1.0.5"
 PREFERRED_VERSION_xcmiscproto ?= "1.2.1"
 PREFERRED_VERSION_xcmiscproto-native ?= "1.2.1"
diff --git a/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb b/meta/recipes-graphics/xorg-app/x11perf_1.5.3.bb
similarity index 76%
rename from meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
rename to meta/recipes-graphics/xorg-app/x11perf_1.5.3.bb
index e10fcf0..8faffe0 100644
--- a/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
+++ b/meta/recipes-graphics/xorg-app/x11perf_1.5.3.bb
@@ -14,5 +14,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=428ca4d67a41fcd4fc3283dce9bbda7e \
 PR = "r0"
 PE = "1"
 
-SRC_URI[md5sum] = "3459958a7fdccf02fa43b70fda9cd87f"
-SRC_URI[sha256sum] = "a1fd752abd3496568614c2f2209d21452bdd5b8c9a5c14a5705725bd8c298e12"
+SRC_URI[md5sum] = "c3ac3667a6f5c3cead9847fbf4b5f36e"
+SRC_URI[sha256sum] = "394d7355afe7f3b054ce6f30db78794c6305c6593d48b7fb86a9c89d9d9e21bd"
-- 
1.7.1


