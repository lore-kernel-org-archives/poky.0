Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AA934C811D3
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 23:32:04 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Dec 2010 21:32:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="356478241"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 21:32:03 -0800
Message-Id: <e59ed8befd3ebff29fc66e1dec9f7fe1eac3ae71.1291354553.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291354552.git.edwin.zhai@intel.com>
References: <cover.1291354552.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Wed, 1 Dec 2010 13:45:21 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 14/14] gtk-engines: Update to 2.20.2
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
X-List-Received-Date: Fri, 03 Dec 2010 05:32:04 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 ...gtk-engines_2.14.0.bb => gtk-engines_2.20.2.bb} |   11 ++++++++---
 1 files changed, 8 insertions(+), 3 deletions(-)
 rename meta/recipes-gnome/gtk-engines/{gtk-engines_2.14.0.bb => gtk-engines_2.20.2.bb} (85%)

diff --git a/meta/recipes-gnome/gtk-engines/gtk-engines_2.14.0.bb b/meta/recipes-gnome/gtk-engines/gtk-engines_2.20.2.bb
similarity index 85%
rename from meta/recipes-gnome/gtk-engines/gtk-engines_2.14.0.bb
rename to meta/recipes-gnome/gtk-engines/gtk-engines_2.20.2.bb
index d711f07..3cbc4d7 100644
--- a/meta/recipes-gnome/gtk-engines/gtk-engines_2.14.0.bb
+++ b/meta/recipes-gnome/gtk-engines/gtk-engines_2.20.2.bb
@@ -1,9 +1,14 @@
-LICENSE = "GPL"
-SECTION = "x11/base"
 DESCRIPTION = "GTK theme engines"
+HOMEPAGE = "http://www.gnome.org/"
+BUGTRACKER = "https://bugzilla.gnome.org/"
+
+LICENSE = "LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1"
+
+SECTION = "x11/base"
 DEPENDS = "gtk+"
 
-PR = "r1"
+PR = "r0"
 
 PACKAGES_DYNAMIC = "gtk-engine-* gtk-theme-*"
 
-- 
1.7.0.4


