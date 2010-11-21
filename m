Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 45CC74C81062
	for <poky@yoctoproject.org>; Sun, 21 Nov 2010 08:25:14 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Nov 2010 06:25:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,231,1288594800"; d="scan'208";a="351431482"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 21 Nov 2010 06:25:13 -0800
Message-Id: <6adb199b9dc38dbb740e05def990dd409238bb3d.1290345671.git.ke.yu@intel.com>
In-Reply-To: <cover.1290345671.git.ke.yu@intel.com>
References: <cover.1290345671.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sun, 21 Nov 2010 20:20:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] imake: upgrade from 1.0.2 to 1.0.4
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
X-List-Received-Date: Sun, 21 Nov 2010 14:25:14 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-util/{imake_1.0.2.bb => imake_1.0.4.bb}   |    4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-util/{imake_1.0.2.bb => imake_1.0.4.bb} (64%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 56ae237..b009917 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -17,7 +17,7 @@ PREFERRED_VERSION_fontsproto ?= "2.1.1"
 PREFERRED_VERSION_fontsproto-native ?= "2.1.1"
 PREFERRED_VERSION_gccmakedep ?= "1.0.2"
 PREFERRED_VERSION_glproto ?= "1.4.12"
-PREFERRED_VERSION_imake ?= "1.0.2"
+PREFERRED_VERSION_imake ?= "1.0.4"
 #PREFERRED_VERSION_inputproto ?= "2.0"
 #PREFERRED_VERSION_inputproto-native ?= "2.0"
 #PREFERRED_VERSION_inputproto-nativesdk ?= "2.0"
diff --git a/meta/recipes-graphics/xorg-util/imake_1.0.2.bb b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
similarity index 64%
rename from meta/recipes-graphics/xorg-util/imake_1.0.2.bb
rename to meta/recipes-graphics/xorg-util/imake_1.0.4.bb
index e533ece..cd8ffdb 100644
--- a/meta/recipes-graphics/xorg-util/imake_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
@@ -4,5 +4,7 @@ DESCRIPTION = "C preprocessor interface to the make utility"
 DEPENDS = "util-macros"
 RDEPENDS = "perl xproto"
 
-PR = "r1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=b9c6cfb044c6d0ff899eaafe4c729367"
+
+PR = "r0"
 PE = "1"
-- 
1.7.0.4


