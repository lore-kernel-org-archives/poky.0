Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 634B84C80FB6
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:06:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Nov 2010 05:05:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="681700101"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 28 Nov 2010 05:05:59 -0800
Message-Id: <f7c5a04d7583e0f9246cfb5b3cecf5686a14426b.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Fri, 26 Nov 2010 19:48:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/11] libxml2-native: remove the --without-debug option
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
X-List-Received-Date: Sun, 28 Nov 2010 13:06:00 -0000

mesa 7.9 build script es_generator.py use libxml2 API xmlLsCountNode,
which only available in debug module, so remove the --without-debug
option for mesa 7.9

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-core/libxml/libxml2.inc      |    2 +-
 meta/recipes-core/libxml/libxml2_2.7.7.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/libxml/libxml2.inc b/meta/recipes-core/libxml/libxml2.inc
index 6959b69..748a7fb 100644
--- a/meta/recipes-core/libxml/libxml2.inc
+++ b/meta/recipes-core/libxml/libxml2.inc
@@ -20,7 +20,7 @@ SRC_URI = "ftp://xmlsoft.org/libxml2/libxml2-${PV}.tar.gz \
 inherit autotools pkgconfig binconfig
 
 EXTRA_OECONF = "--without-python --without-debug --without-legacy --without-catalog --without-docbook --with-c14n"
-EXTRA_OECONF_virtclass-native = "--with-python=${STAGING_BINDIR}/python --without-debug --without-legacy --with-catalog --without-docbook --with-c14n"
+EXTRA_OECONF_virtclass-native = "--with-python=${STAGING_BINDIR}/python --without-legacy --with-catalog --without-docbook --with-c14n"
 
 # required for pythong binding
 export HOST_SYS
diff --git a/meta/recipes-core/libxml/libxml2_2.7.7.bb b/meta/recipes-core/libxml/libxml2_2.7.7.bb
index deb28b3..656cb88 100644
--- a/meta/recipes-core/libxml/libxml2_2.7.7.bb
+++ b/meta/recipes-core/libxml/libxml2_2.7.7.bb
@@ -1,3 +1,3 @@
 require libxml2.inc
 
-PR = "r1"
+PR = "r2"
-- 
1.7.0.4


