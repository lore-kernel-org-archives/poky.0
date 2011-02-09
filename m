Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D4474C80104
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 07:58:48 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2011 05:58:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="656001378"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2011 05:58:47 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Feb 2011 22:00:56 +0800
Message-Id: <b11d24286621cca3d77323bd9276d0738f1e6329.1297258936.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297258935.git.ke.yu@intel.com>
References: <cover.1297258935.git.ke.yu@intel.com>
Subject: [PATCH 4/4] talloc: remove talloc recipe
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
X-List-Received-Date: Wed, 09 Feb 2011 13:58:48 -0000

mesa no long need talloc, so remove it

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-support/talloc/talloc_2.0.1.bb |   24 ------------------------
 1 files changed, 0 insertions(+), 24 deletions(-)
 delete mode 100644 meta/recipes-support/talloc/talloc_2.0.1.bb

diff --git a/meta/recipes-support/talloc/talloc_2.0.1.bb b/meta/recipes-support/talloc/talloc_2.0.1.bb
deleted file mode 100644
index dfbaf31..0000000
--- a/meta/recipes-support/talloc/talloc_2.0.1.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-DESCRIPTION = "Hierarchical, reference counted memory pool system with destructors"
-HOMEPAGE = "http://talloc.samba.org"
-BUGTRACKER = "https://bugzilla.samba.org/"
-LICENSE = "LGPLv3+"
-LIC_FILES_CHKSUM = "file://talloc.c;beginline=8;endline=26;md5=ea9b6ec07a6d8b3e771f0ec75ca3a317"
-
-PR = "r0"
-
-SRC_URI = "http://samba.org/ftp/${BPN}/${BPN}-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "c6e736540145ca58cb3dcb42f91cf57b"
-SRC_URI[sha256sum] = "5b810527405f29d54f50efd78bf2c89e318f2cd8bed001f22f2a1412fd27c9b4"
-
-inherit autotools pkgconfig
-
-# autoreconf doesn't work well while reconfiguring included libreplace
-do_configure () {
-       gnu-configize
-       oe_runconf
-}
-
-TARGET_CC_ARCH += "${LDFLAGS}"
-
-BBCLASSEXTEND = "native"
-- 
1.7.0.4


