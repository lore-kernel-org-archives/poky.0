Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C71824C800BA
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 08:38:50 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Apr 2011 06:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,282,1299484800"; d="scan'208";a="622193506"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga002.jf.intel.com with ESMTP; 01 Apr 2011 06:38:49 -0700
Message-Id: <ffbf4efad14a7793d55747fa1272a24c58b3a7fc.1301664697.git.josh@linux.intel.com>
In-Reply-To: <cover.1301664697.git.josh@linux.intel.com>
References: <cover.1301664697.git.josh@linux.intel.com>
Old-Date: Thu, 31 Mar 2011 13:43:41 +0100
Date: Fri, 01 Apr 2011 14:38:48 +0100
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 4/7] xorg-[lib-common|proto-common]: disable use of fop document generation
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
X-List-Received-Date: Fri, 01 Apr 2011 13:38:51 -0000

From: Joshua Lock <josh@linux.intel.com>

On Fedora 15 I see a huge Java backtrace when document generation runs for
some xorg libs. As fop is automatically detected, with the possibility of
detecting fop on the host whilst doing target builds, the safest bet is to
explicitly disable fop for document generation.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-graphics/xorg-lib/xorg-lib-common.inc |    2 +-
 .../xorg-proto/xorg-proto-common.inc               |    1 +
 2 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc b/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
index 4ed8c86..d843d65 100644
--- a/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
+++ b/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
@@ -13,4 +13,4 @@ S = "${WORKDIR}/${XORG_PN}-${PV}"
 
 inherit autotools pkgconfig
 
-EXTRA_OECONF = "--enable-malloc0returnsnull"
+EXTRA_OECONF = "--enable-malloc0returnsnull --with-fop=no"
diff --git a/meta/recipes-graphics/xorg-proto/xorg-proto-common.inc b/meta/recipes-graphics/xorg-proto/xorg-proto-common.inc
index 92aa1fe..ab1af28 100644
--- a/meta/recipes-graphics/xorg-proto/xorg-proto-common.inc
+++ b/meta/recipes-graphics/xorg-proto/xorg-proto-common.inc
@@ -14,6 +14,7 @@ S = "${WORKDIR}/${XORG_PN}-${PV}"
 DEPENDS = "util-macros"
 
 inherit autotools pkgconfig
+EXTRA_OECONF = "--with-fop=no"
 
 # ${PN} is empty so we need to tweak -dev and -dbg package dependencies
 RDEPENDS_${PN}-dev = ""
-- 
1.7.4.1


