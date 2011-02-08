Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 100074C80A94
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 19:13:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 17:13:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,439,1291622400"; d="scan'208";a="600378688"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2011 17:13:47 -0800
Message-Id: <7fe0e039930159d9be78a1fb4d4e05d6f90916ff.1297127616.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297127616.git.scott.a.garman@intel.com>
References: <cover.1297127616.git.scott.a.garman@intel.com>
Old-Date: Sun, 6 Feb 2011 20:44:23 -0800
Date: Mon, 07 Feb 2011 17:14:55 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 4/6] imake: add native support to recipe and update DEPENDS
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
X-List-Received-Date: Tue, 08 Feb 2011 01:13:49 -0000

From: Scott Garman <scott.a.garman@intel.com>

xorg-cf-files includes configuration files used by imake-based
recipes. Also add native support to the recipe.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-graphics/xorg-util/imake_1.0.4.bb |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
index 9202317..e313442 100644
--- a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
@@ -1,20 +1,20 @@
 require xorg-util-common.inc
 
 SUMMARY = "C preprocessor interface to the make utility"
-
 DESCRIPTION = "Imake is used to generate Makefiles from a template, a \
 set of cpp macro functions, and a per-directory input file called an \
 Imakefile. This allows machine dependencies (such as compiler options, \
 alternate command names, and special make rules) to be kept separate \
 from the descriptions of the various items to be built."
+LIC_FILES_CHKSUM = "file://COPYING;md5=b9c6cfb044c6d0ff899eaafe4c729367"
 
-DEPENDS = "util-macros"
+DEPENDS = "util-macros xproto xorg-cf-files"
 RDEPENDS_${PN} = "perl xproto"
 
-LIC_FILES_CHKSUM = "file://COPYING;md5=b9c6cfb044c6d0ff899eaafe4c729367"
-
-PR = "r1"
+PR = "r2"
 PE = "1"
 
 SRC_URI[md5sum] = "0fd1e53d94142ddee5340f87de0b9561"
 SRC_URI[sha256sum] = "68038fa67929c5553044ad7417e1a64cabe954f04213b305dd36a04a61317d31"
+
+BBCLASSEXTEND = "native"
-- 
1.7.4


