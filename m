Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5498F4C811CD
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:11 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Nov 2010 08:08:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="681310616"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2010 08:08:10 -0800
Message-Id: <bbd34fbbf0063db80b882fc9df7264ae96d20814.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 22:05:18 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/11] gtk-doc: Add license checksum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:11 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-gnome/gtk-doc/gtk-doc.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-gnome/gtk-doc/gtk-doc.bb b/meta/recipes-gnome/gtk-doc/gtk-doc.bb
index 3f5e291..0e7828c 100644
--- a/meta/recipes-gnome/gtk-doc/gtk-doc.bb
+++ b/meta/recipes-gnome/gtk-doc/gtk-doc.bb
@@ -1,6 +1,8 @@
 SECTION = "x11/base"
 SRC_URI = "file://gtk-doc.m4"
 LICENSE = "LGPL"
+LIC_FILES_CHKSUM = "file://../gtk-doc.m4;endline=10;md5=868a952d8bb2d825d724854cfaf8f14e"
+
 PR = "r4"
 
 ALLOW_EMPTY_${PN} = "1"
-- 
1.7.0.4


