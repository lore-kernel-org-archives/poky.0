Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 154074C8110E
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 09:35:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 07:35:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="681304674"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2010 07:35:58 -0800
Message-Id: <fe0487117f6b728f6be856bc16718bbc29624a96.1290785519.git.lei.mei@intel.com>
In-Reply-To: <cover.1290785519.git.lei.mei@intel.com>
References: <cover.1290785519.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Fri, 26 Nov 2010 16:31:34 +0800
To: poky@yoctoproject.org
Subject: [PATCH 07/14] gobject-introspection:Add license checksum to bb file
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
X-List-Received-Date: Fri, 26 Nov 2010 15:35:59 -0000

Add COPYING.lib and COPYING.tools files checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../gnome/gobject-introspection_git.bb             |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-gnome/gnome/gobject-introspection_git.bb b/meta/recipes-gnome/gnome/gobject-introspection_git.bb
index b5e33fe..81d279a 100644
--- a/meta/recipes-gnome/gnome/gobject-introspection_git.bb
+++ b/meta/recipes-gnome/gnome/gobject-introspection_git.bb
@@ -6,7 +6,8 @@ SRC_URI_virtclass-native = "git://git.gnome.org/gobject-introspection;protocol=g
                             file://pathfix.patch;patch=1"
 
 LICENSE = "GPLv2+ & LGPLv2+"
-
+LIC_FILES_CHKSUM = "file://COPYING.tools;md5=94d55d512a9ba36caa9b7df079bae19f \
+		    file://COPYING.lib;md5=3bf50002aefd002f49e7bb854063f7e7"
 PV = "0.0+git${SRCREV}"
 PR = "r3"
 
-- 
1.6.3.3


