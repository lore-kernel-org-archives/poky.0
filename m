Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8DFD4C811D0
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:13 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Nov 2010 18:12:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="349705629"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 16 Nov 2010 18:12:09 -0800
Message-Id: <c213a561a1b003ceb0614cac64fe4b8f8c5133e5.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:16:51 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/12] videoproto: upgrade from 2.3.0 to the latest version 2.3.1
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
X-List-Received-Date: Wed, 17 Nov 2010 02:12:14 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{videoproto_2.3.0.bb => videoproto_2.3.1.bb}   |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{videoproto_2.3.0.bb => videoproto_2.3.1.bb} (93%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index b00dbc0..462727c 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -95,7 +95,7 @@ PREFERRED_VERSION_scrnsaverproto ?= "1.2.1"
 PREFERRED_VERSION_trapproto ?= "3.4.3"
 PREFERRED_VERSION_util-macros ?= "1.10.0"
 PREFERRED_VERSION_util-macros-native ?= "1.10.0"
-PREFERRED_VERSION_videoproto ?= "2.3.0"
+PREFERRED_VERSION_videoproto ?= "2.3.1"
 PREFERRED_VERSION_windowswmproto ?= "1.0.4"
 PREFERRED_VERSION_x11perf ?= "1.5"
 PREFERRED_VERSION_xauth ?= "1.0.5"
diff --git a/meta/recipes-graphics/xorg-proto/videoproto_2.3.0.bb b/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
similarity index 93%
rename from meta/recipes-graphics/xorg-proto/videoproto_2.3.0.bb
rename to meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
index baedc28..83378b6 100644
--- a/meta/recipes-graphics/xorg-proto/videoproto_2.3.0.bb
+++ b/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
@@ -3,5 +3,5 @@ require xorg-proto-common.inc
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59d089e37bf57b5206602da38f58ca5d"
 
-PR = "r1"
+PR = "r0"
 PE = "1"
-- 
1.7.0.4


