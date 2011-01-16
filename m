Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C9B64C811DF
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:14:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jan 2011 04:14:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="877893598"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2011 04:14:58 -0800
Message-Id: <51c03204ed9361b68e3d7f38ed7e0859f7b2a6bf.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 11:15:09 +0800
Date: Sun, 16 Jan 2011 20:19:34 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/19] xinit: upgrade to 1.3.0
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
X-List-Received-Date: Sun, 16 Jan 2011 12:14:59 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-app/{xinit_1.2.1.bb => xinit_1.3.0.bb}    |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-app/{xinit_1.2.1.bb => xinit_1.3.0.bb} (59%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index bb85cfc..ce6f9cf 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -117,7 +117,7 @@ PREFERRED_VERSION_xf86miscproto ?= "0.9.3"
 PREFERRED_VERSION_xf86rushproto ?= "1.1.2"
 PREFERRED_VERSION_xf86vidmodeproto ?= "2.3"
 PREFERRED_VERSION_xhost ?= "1.0.4"
-PREFERRED_VERSION_xinit ?= "1.2.1"
+PREFERRED_VERSION_xinit ?= "1.3.0"
 PREFERRED_VERSION_xineramaproto ?= "1.2"
 PREFERRED_VERSION_xmodmap ?= "1.0.5"
 PREFERRED_VERSION_xorg-cf-files ?= "1.0.3"
diff --git a/meta/recipes-graphics/xorg-app/xinit_1.2.1.bb b/meta/recipes-graphics/xorg-app/xinit_1.3.0.bb
similarity index 59%
rename from meta/recipes-graphics/xorg-app/xinit_1.2.1.bb
rename to meta/recipes-graphics/xorg-app/xinit_1.3.0.bb
index 68150ca..6a87f42 100644
--- a/meta/recipes-graphics/xorg-app/xinit_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-app/xinit_1.3.0.bb
@@ -7,5 +7,5 @@ PE = "1"
 
 FILES_${PN} += "${libdir}X11/xinit"
 
-SRC_URI[md5sum] = "56f2d202b3dc10fcd21931a67bb270f7"
-SRC_URI[sha256sum] = "16bcc73ae81b6d80fd1a9419ea757f38870d1043d440b6d56fcaa79d4c6c9b07"
+SRC_URI[md5sum] = "bc4e8b7d1919597cc37a0d24aa149dda"
+SRC_URI[sha256sum] = "ba76e36e1a42a7cf76505b7e6fc4777f5d14f45ddff74341abfb7dd10d5fe04c"
-- 
1.7.0.4


