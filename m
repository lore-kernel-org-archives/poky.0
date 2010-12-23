Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99C9D4C811E3
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:08:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Dec 2010 07:08:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="871323580"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by fmsmga001.fm.intel.com with ESMTP; 23 Dec 2010 07:08:16 -0800
Message-Id: <236f5db28fefb5262df1fa132cefda7f52130784.1293116649.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293116649.git.sgw@linux.intel.com>
References: <cover.1293116649.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 07:03:11 -0800
Date: Thu, 23 Dec 2010  7:07:35 -0800
To: poky@yoctoproject.org
Subject: [PATCH 4/4] apr-util: add --without-odbc to EXTRA_OECONF
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
X-List-Received-Date: Thu, 23 Dec 2010 15:08:16 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-support/apr/apr-util_1.3.4.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-support/apr/apr-util_1.3.4.bb b/meta/recipes-support/apr/apr-util_1.3.4.bb
index b2d6cc4..cefdfe6 100644
--- a/meta/recipes-support/apr/apr-util_1.3.4.bb
+++ b/meta/recipes-support/apr/apr-util_1.3.4.bb
@@ -3,7 +3,7 @@ SECTION = "libs"
 DEPENDS = "apr expat gdbm"
 LICENSE = "Apache License, Version 2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=519e0a18e03f7c023070568c14b077bb"
-PR = "r5"
+PR = "r7"
 
 SRC_URI = "${APACHE_MIRROR}/apr/${P}.tar.gz \
            file://configfix.patch;patch=1 \
@@ -13,6 +13,7 @@ SRC_URI[md5sum] = "a10e2ca150ff07f484c724c36142211f"
 SRC_URI[sha256sum] = "3f07ffdb18fb853290c9b83e82cd5cae66b8fbc357bd391e846c0afdd24fed7e"
 
 EXTRA_OECONF = "--with-apr=${STAGING_BINDIR_CROSS}/apr-1-config \ 
+		--without-odbc \
 		--with-dbm=gdbm \
 		--with-gdbm=${STAGING_DIR_HOST}${prefix} \
 		--without-sqlite2 \
-- 
1.7.2.3


