Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 135294C80052
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 23:55:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Dec 2010 21:55:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="355914836"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by azsmga001.ch.intel.com with ESMTP; 01 Dec 2010 21:55:26 -0800
Message-Id: <395b62cff797f309fe312a6824ada879d2924e86.1291269468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291269468.git.edwin.zhai@intel.com>
References: <cover.1291269468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 23:10:16 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/14] tidy: Add license checksum
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
X-List-Received-Date: Thu, 02 Dec 2010 05:55:28 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-graphics/clutter/tidy.inc    |    2 +-
 meta/recipes-graphics/clutter/tidy_git.bb |    3 +++
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/clutter/tidy.inc b/meta/recipes-graphics/clutter/tidy.inc
index 7d5862b..1968591 100644
--- a/meta/recipes-graphics/clutter/tidy.inc
+++ b/meta/recipes-graphics/clutter/tidy.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "Tidy library"
 HOMEPAGE = "http://www.clutter-project.org/"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2.1+"
 
 STDDEPENDS = "clutter-1.0"
 BASE_CONF = "--disable-gtk-doc"
diff --git a/meta/recipes-graphics/clutter/tidy_git.bb b/meta/recipes-graphics/clutter/tidy_git.bb
index 1785260..222ac6e 100644
--- a/meta/recipes-graphics/clutter/tidy_git.bb
+++ b/meta/recipes-graphics/clutter/tidy_git.bb
@@ -1,5 +1,8 @@
 require tidy.inc
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34 \
+                    file://tidy/tidy.h;endline=21;md5=ac342e7aac55849bf0755d79967fa3e8"
+
 PV = "0.1.0+git${SRCPV}"
 PR = "r7"
 
-- 
1.7.0.4


