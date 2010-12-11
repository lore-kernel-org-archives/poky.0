Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05AD14C811DD
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:36:05 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Dec 2010 11:36:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="686166146"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2010 11:35:57 -0800
Message-Id: <e79c0c95f6606e40109be4bb07aebcd6a909dfd8.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 17:00:05 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 05/13] clutter: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:36:06 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 meta/recipes-graphics/clutter/clutter-1.0_git.bb |    1 +
 meta/recipes-graphics/clutter/clutter_git.bb     |    4 +++-
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/clutter/clutter-1.0_git.bb b/meta/recipes-graphics/clutter/clutter-1.0_git.bb
index 7e62954..ec50f07 100644
--- a/meta/recipes-graphics/clutter/clutter-1.0_git.bb
+++ b/meta/recipes-graphics/clutter/clutter-1.0_git.bb
@@ -9,6 +9,7 @@ FILES_clutter-examples-1.0 = "${bindir}/test-* ${pkgdatadir}/redhand.png"
 SRC_URI = "git://git.clutter-project.org/clutter.git;protocol=git;branch=clutter-1.0 \
            file://enable_tests-1.0.patch;patch=1 "
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34"
 S = "${WORKDIR}/git"
 
 BASE_CONF += "--disable-introspection"
diff --git a/meta/recipes-graphics/clutter/clutter_git.bb b/meta/recipes-graphics/clutter/clutter_git.bb
index a20515e..dd5f980 100644
--- a/meta/recipes-graphics/clutter/clutter_git.bb
+++ b/meta/recipes-graphics/clutter/clutter_git.bb
@@ -1,6 +1,8 @@
 require clutter.inc
 require clutter-package.inc
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34"
+
 PV = "1.0.0+git${SRCPV}"
 PR = "r8"
 
@@ -14,4 +16,4 @@ BASE_CONF += "--disable-introspection"
 do_configure_prepend () {
 	# Disable DOLT
 	sed -i -e 's/^DOLT//' ${S}/configure.ac
-}
\ No newline at end of file
+}
-- 
1.7.1.1


