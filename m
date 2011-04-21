Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8AE814C80AB0
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 15:25:30 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Apr 2011 13:25:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,252,1301900400"; d="scan'208";a="736667191"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by orsmga001.jf.intel.com with ESMTP; 21 Apr 2011 13:25:30 -0700
Message-Id: <47ed53398f5da2324935a1fd57c93c21ae45feb5.1303417346.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1303417346.git.nitin.a.kamble@intel.com>
References: <cover.1303417346.git.nitin.a.kamble@intel.com>
Old-Date: Fri, 15 Apr 2011 18:54:04 -0700
Date: Thu, 21 Apr 2011 13:25:03 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 4/8] python-pycairo: fix installation path of __init__.py
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
X-List-Received-Date: Thu, 21 Apr 2011 20:25:30 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This fixes Bug [YOCTO #477]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../python/python-pycairo_1.8.10.bb                |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/python/python-pycairo_1.8.10.bb b/meta/recipes-devtools/python/python-pycairo_1.8.10.bb
index 7d73dc2..24b3ff2 100644
--- a/meta/recipes-devtools/python/python-pycairo_1.8.10.bb
+++ b/meta/recipes-devtools/python/python-pycairo_1.8.10.bb
@@ -6,7 +6,7 @@ LICENSE = "LGPLv2.1 & MPLv1.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f2e071ab72978431b294a0d696327421"
 # cairo >= 1.8.8
 DEPENDS = "cairo"
-PR = "ml0"
+PR = "r1"
 
 SRC_URI = "http://cairographics.org/releases/py2cairo-${PV}.tar.gz"
 
@@ -16,6 +16,12 @@ S = "${WORKDIR}/pycairo-${PV}"
 
 inherit distutils pkgconfig
 
+do_compile_prepend() {
+#fix the installation path of __init__.py
+#It was going in the sysroot instead of target install location
+	sed -i -e "s#dsy.get_python_lib()#'${D}${PYTHON_SITEPACKAGES_DIR}'#" ${S}/setup.py
+}
+
 do_install_append () {
 	install -d ${D}${includedir}
 	install -d ${D}${libdir}
-- 
1.7.2.2


