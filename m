Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A0F04C80AAA
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:20:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Mar 2011 18:20:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,300,1297065600"; d="scan'208";a="718929433"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by orsmga001.jf.intel.com with ESMTP; 10 Mar 2011 18:20:24 -0800
Message-Id: <285fbd8a206eee061e27f37430499fcbe1e7284d.1299809859.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299809859.git.sgw@linux.intel.com>
References: <cover.1299809859.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Mar 2011 17:52:20 -0600
Date: Thu, 10 Mar 2011 18:20:23 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 05/12] gcc-runtime: Fix dbg files
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
X-List-Received-Date: Fri, 11 Mar 2011 02:20:44 -0000

From: Mark Hatle <mark.hatle@windriver.com>

In order to debug certain C++ items, you need the helper python
components.  These components should live in the -dbg package, ensure
they are added to the recipe.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-devtools/gcc/gcc-package-runtime.inc |    5 +++++
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb    |    2 +-
 2 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-package-runtime.inc b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
index 04c70c0..51483f9 100644
--- a/meta/recipes-devtools/gcc/gcc-package-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
@@ -15,6 +15,11 @@ PACKAGES = "\
 # The base package doesn't exist, so we clear the recommends.
 RRECOMMENDS_${PN}-dbg = ""
 
+# include python debugging scripts
+FILES_${PN}-dbg += "\
+  ${libdir}/libstdc++.so.*-gdb.py \
+  ${datadir}/gcc-${PV}/python/libstdcxx"
+
 FILES_libg2c = "${target_libdir}/libg2c.so.*"
 FILES_libg2c-dev = "\
   ${libdir}/libg2c.so \
diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
index c1e680d..9eb658b 100644
--- a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r3"
+PR = "r4"
 
 require gcc-${PV}.inc
 require gcc-configure-runtime.inc
-- 
1.7.1.1


