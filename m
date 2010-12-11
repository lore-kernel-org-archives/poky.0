Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC94E4C811CE
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:35:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Dec 2010 11:35:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="582776873"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by orsmga002.jf.intel.com with ESMTP; 11 Dec 2010 11:35:58 -0800
Message-Id: <8293fe7e27a17061b737e86e6fd4768d45fc4de3.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 17:00:44 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 06/13] table: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:36:00 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 meta/recipes-graphics/clutter/table.inc    |    2 +-
 meta/recipes-graphics/clutter/table_git.bb |    3 +++
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/clutter/table.inc b/meta/recipes-graphics/clutter/table.inc
index 6dfb47d..b645514 100644
--- a/meta/recipes-graphics/clutter/table.inc
+++ b/meta/recipes-graphics/clutter/table.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "Table Clutter Demo"
 HOMEPAGE = "http://www.clutter-project.org/"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2.1 & GPLv2"
 
 DEPENDS = "clutter-gst-1.0 gnome-vfs"
 
diff --git a/meta/recipes-graphics/clutter/table_git.bb b/meta/recipes-graphics/clutter/table_git.bb
index 5aa4153..5a5091c 100644
--- a/meta/recipes-graphics/clutter/table_git.bb
+++ b/meta/recipes-graphics/clutter/table_git.bb
@@ -1,5 +1,8 @@
 require table.inc
 
+LIC_FILES_CHKSUM = "file://fluttr/COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+                    file://script-viewer/COPYING;md5=7fbc338309ac38fefcd64b04bb903e34"
+
 PV = "0.3.0+git${SRCPV}"
 PR = "r1"
 
-- 
1.7.1.1


