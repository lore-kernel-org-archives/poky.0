Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D51944C811F2
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 19:41:53 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jan 2011 17:41:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,310,1291622400"; d="scan'208";a="876654506"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2011 17:41:53 -0800
Message-Id: <c4c1f36fd2101c8b14f1a76cb61aa06a5b412296.1294796468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1294796468.git.edwin.zhai@intel.com>
References: <cover.1294796468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Wed, 29 Dec 2010 15:11:46 +0800
Date: Wed, 12 Jan 2011  9:46:42 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/5] apr-util: Update to 1.3.10
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
X-List-Received-Date: Wed, 12 Jan 2011 01:41:54 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../apr/{apr-util_1.3.4.bb => apr-util_1.3.10.bb}  |   12 ++++++++----
 1 files changed, 8 insertions(+), 4 deletions(-)
 rename meta/recipes-support/apr/{apr-util_1.3.4.bb => apr-util_1.3.10.bb} (72%)

diff --git a/meta/recipes-support/apr/apr-util_1.3.4.bb b/meta/recipes-support/apr/apr-util_1.3.10.bb
similarity index 72%
rename from meta/recipes-support/apr/apr-util_1.3.4.bb
rename to meta/recipes-support/apr/apr-util_1.3.10.bb
index cefdfe6..930f757 100644
--- a/meta/recipes-support/apr/apr-util_1.3.4.bb
+++ b/meta/recipes-support/apr/apr-util_1.3.10.bb
@@ -1,16 +1,20 @@
 DESCRIPTION = "Apache Portable Runtime (APR) companion library"
+HOMEPAGE = "http://apr.apache.org/"
 SECTION = "libs"
 DEPENDS = "apr expat gdbm"
+
 LICENSE = "Apache License, Version 2.0"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=519e0a18e03f7c023070568c14b077bb"
-PR = "r7"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=519e0a18e03f7c023070568c14b077bb \
+                    file://include/apu_version.h;endline=17;md5=806685a84e71f10c80144c48eb35df42"
+
+PR = "r0"
 
 SRC_URI = "${APACHE_MIRROR}/apr/${P}.tar.gz \
            file://configfix.patch;patch=1 \
            file://configure_fixes.patch;patch=1"
 
-SRC_URI[md5sum] = "a10e2ca150ff07f484c724c36142211f"
-SRC_URI[sha256sum] = "3f07ffdb18fb853290c9b83e82cd5cae66b8fbc357bd391e846c0afdd24fed7e"
+SRC_URI[md5sum] = "82acd25cf3df8c72eba44eaee8b80c19"
+SRC_URI[sha256sum] = "7c37ac40b2351bfc23000fb6b7b54a67e0872255df315c82eb60c821bcef4b23"
 
 EXTRA_OECONF = "--with-apr=${STAGING_BINDIR_CROSS}/apr-1-config \ 
 		--without-odbc \
-- 
1.7.0.4


