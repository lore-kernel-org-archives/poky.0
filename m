Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 373D04C81146
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:49:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Nov 2010 00:49:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="349804632"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 00:49:27 -0800
Message-Id: <5c96fd9d0ff3333c01c85ed3429bc8bbc6c13b59.1289982119.git.ke.yu@intel.com>
In-Reply-To: <cover.1289982119.git.ke.yu@intel.com>
References: <cover.1289982119.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 16 Nov 2010 09:28:34 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/10] talloc: add new recipes talloc 2.0.1
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
X-List-Received-Date: Wed, 17 Nov 2010 08:49:28 -0000

talloc is a hierarchical, reference counted memory pool system with destructors. It is the core memory allocator used in Samba. Mesa7.9 also depends on it,sSo add it for mesa7.9.

Ported from OpenEmbedded.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-extended/talloc/talloc_2.0.1.bb |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/talloc/talloc_2.0.1.bb

diff --git a/meta/recipes-extended/talloc/talloc_2.0.1.bb b/meta/recipes-extended/talloc/talloc_2.0.1.bb
new file mode 100644
index 0000000..754505e
--- /dev/null
+++ b/meta/recipes-extended/talloc/talloc_2.0.1.bb
@@ -0,0 +1,18 @@
+DESCRIPTION = "Hierarchical, reference counted memory pool system with destructors"
+HOMEPAGE = "http://talloc.samba.org"
+BUGTRACKER = "https://bugzilla.samba.org/"
+LICENSE = "LGPL"
+
+PR = "r0"
+
+inherit autotools pkgconfig
+
+SRC_URI = "http://samba.org/ftp/${BPN}/${BPN}-${PV}.tar.gz"
+
+TARGET_CC_ARCH += "${LDFLAGS}"
+
+# autoreconf doesn't work well while reconfiguring included libreplace
+do_configure () {
+       gnu-configize
+       oe_runconf
+}
-- 
1.7.0.4


