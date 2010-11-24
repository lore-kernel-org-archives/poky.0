Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA18A4C811AD
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:06:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Nov 2010 05:06:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="578286837"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2010 05:06:01 -0800
Message-Id: <2675920d5fd570d1c1186ff2e1d29c9d22abcc96.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Wed, 24 Nov 2010 12:50:55 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/11] talloc: add new recipes talloc 2.0.1
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
X-List-Received-Date: Sun, 28 Nov 2010 13:06:01 -0000

talloc is a hierarchical, reference counted memory pool system with destructors.
It is the core memory allocator used in Samba. Mesa7.9 also depends on it,so add
it for mesa7.9.

It is ported from OpenEmbedded, with some format modification.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-extended/talloc/talloc_2.0.1.bb |   24 ++++++++++++++++++++++++
 1 files changed, 24 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/talloc/talloc_2.0.1.bb

diff --git a/meta/recipes-extended/talloc/talloc_2.0.1.bb b/meta/recipes-extended/talloc/talloc_2.0.1.bb
new file mode 100644
index 0000000..dfbaf31
--- /dev/null
+++ b/meta/recipes-extended/talloc/talloc_2.0.1.bb
@@ -0,0 +1,24 @@
+DESCRIPTION = "Hierarchical, reference counted memory pool system with destructors"
+HOMEPAGE = "http://talloc.samba.org"
+BUGTRACKER = "https://bugzilla.samba.org/"
+LICENSE = "LGPLv3+"
+LIC_FILES_CHKSUM = "file://talloc.c;beginline=8;endline=26;md5=ea9b6ec07a6d8b3e771f0ec75ca3a317"
+
+PR = "r0"
+
+SRC_URI = "http://samba.org/ftp/${BPN}/${BPN}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "c6e736540145ca58cb3dcb42f91cf57b"
+SRC_URI[sha256sum] = "5b810527405f29d54f50efd78bf2c89e318f2cd8bed001f22f2a1412fd27c9b4"
+
+inherit autotools pkgconfig
+
+# autoreconf doesn't work well while reconfiguring included libreplace
+do_configure () {
+       gnu-configize
+       oe_runconf
+}
+
+TARGET_CC_ARCH += "${LDFLAGS}"
+
+BBCLASSEXTEND = "native"
-- 
1.7.0.4


