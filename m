Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 86C154C811CE
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 02:50:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="577521813"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2010 02:50:29 -0800
Message-Id: <aa7e7fe63c3a4f7b5c307660dd63500145e7d2bf.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 12:30:24 +0800
To: poky@yoctoproject.org
Subject: [PATCH 04/20] python:Add license checksum to bb file
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:34 -0000

Add LICENSE file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-devtools/python/python_2.6.6.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/python/python_2.6.6.bb b/meta/recipes-devtools/python/python_2.6.6.bb
index fa0e294..50f8d70 100644
--- a/meta/recipes-devtools/python/python_2.6.6.bb
+++ b/meta/recipes-devtools/python/python_2.6.6.bb
@@ -2,7 +2,7 @@ require python.inc
 DEPENDS = "python-native db gdbm openssl readline sqlite3 zlib"
 DEPENDS_sharprom = "python-native db readline zlib gdbm openssl"
 PR = "${INC_PR}.0"
-
+LIC_FILES_CHKSUM = "file://LICENSE;md5=38fdd546420fab09ac6bd3d8a1c83eb6"
 SRC_URI = "\
   http://www.python.org/ftp/python/${PV}/Python-${PV}.tar.bz2 \
   file://01-use-proper-tools-for-cross-build.patch \
-- 
1.6.3.3


