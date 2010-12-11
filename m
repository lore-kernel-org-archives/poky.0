Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E9984C811E6
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:36:11 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Dec 2010 11:36:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="635385013"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by fmsmga002.fm.intel.com with ESMTP; 11 Dec 2010 11:36:09 -0800
Message-Id: <22b8fb1bfe244dd4b801374238a6f7cc23326634.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 23:32:03 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 13/13] clutter-box2d: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:36:11 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 meta/recipes-graphics/clutter/clutter-box2d.inc    |    2 +-
 meta/recipes-graphics/clutter/clutter-box2d_git.bb |    2 ++
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/clutter/clutter-box2d.inc b/meta/recipes-graphics/clutter/clutter-box2d.inc
index 0886195..7de8244 100644
--- a/meta/recipes-graphics/clutter/clutter-box2d.inc
+++ b/meta/recipes-graphics/clutter/clutter-box2d.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "Clutter Box2D"
 HOMEPAGE = "http://www.clutter-project.org/"
-LICENSE = "GPLv2"
+LICENSE = "Catto"
 
 DEPENDS = "clutter-1.0"
 
diff --git a/meta/recipes-graphics/clutter/clutter-box2d_git.bb b/meta/recipes-graphics/clutter/clutter-box2d_git.bb
index 4c74ffe..6f795b9 100644
--- a/meta/recipes-graphics/clutter/clutter-box2d_git.bb
+++ b/meta/recipes-graphics/clutter/clutter-box2d_git.bb
@@ -1,5 +1,7 @@
 require clutter-box2d.inc
 
+LIC_FILES_CHKSUM = "file://box2d/License.txt;md5=d0a73d52dbe6da5d8cc0f28493defb26"
+
 PV = "0.0+git${SRCPV}"
 PR = "r3"
 
-- 
1.7.1.1


