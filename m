Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3DD04C80BBC
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:43:28 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2011 02:43:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,286,1301900400"; d="scan'208";a="740127557"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 29 Apr 2011 02:43:27 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QFk6t-0000Gd-JZ; Fri, 29 Apr 2011 17:35:39 +0800
Message-Id: <c532becef3f70a2ab4271f22612d2abc0e5adf86.1304069545.git.qing.he@intel.com>
In-Reply-To: <cover.1304069545.git.qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
Old-Date: Fri, 29 Apr 2011 16:14:53 +0800
Date: Fri, 29 Apr 2011 17:35:39 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 10/10] libcap: upgrade to version 2.20
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
X-List-Received-Date: Fri, 29 Apr 2011 09:43:28 -0000

From: Qing He <qing.he@intel.com>

from 2.19
 - set RAISE_SETFCAP=no in make option to inhibit target binary run

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-support/libcap/libcap.inc     |    2 +-
 meta/recipes-support/libcap/libcap_2.19.bb |    6 ------
 meta/recipes-support/libcap/libcap_2.20.bb |    6 ++++++
 3 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 meta/recipes-support/libcap/libcap_2.19.bb
 create mode 100644 meta/recipes-support/libcap/libcap_2.20.bb

diff --git a/meta/recipes-support/libcap/libcap.inc b/meta/recipes-support/libcap/libcap.inc
index a1c93f1..292fa78 100644
--- a/meta/recipes-support/libcap/libcap.inc
+++ b/meta/recipes-support/libcap/libcap.inc
@@ -18,7 +18,7 @@ do_configure() {
 	sed -e 's,BUILD_CFLAGS ?=,BUILD_CFLAGS := $(BUILD_CFLAGS),' -i Make.Rules
 }
 
-EXTRA_OEMAKE = "LIBATTR=yes PAM_CAP=yes INDENT= lib=lib SYSTEM_HEADERS=${STAGING_INCDIR}"
+EXTRA_OEMAKE = "LIBATTR=yes PAM_CAP=yes INDENT= lib=lib SYSTEM_HEADERS=${STAGING_INCDIR} RAISE_SETFCAP=no"
 EXTRA_OEMAKE_virtclass-native = "LIBATTR=no PAM_CAP=no INDENT= lib=lib"
 
 do_compile() {
diff --git a/meta/recipes-support/libcap/libcap_2.19.bb b/meta/recipes-support/libcap/libcap_2.19.bb
deleted file mode 100644
index 9abd3b5..0000000
--- a/meta/recipes-support/libcap/libcap_2.19.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require libcap.inc
-
-PR = "r1"
-
-SRC_URI[md5sum] = "eb1ff04d39bfa2342b8e78b0fd60dc2d"
-SRC_URI[sha256sum] = "ed1693e344054a398e68a7cc840892e3d1a880562743bdf28fd918649aa5a4ce"
diff --git a/meta/recipes-support/libcap/libcap_2.20.bb b/meta/recipes-support/libcap/libcap_2.20.bb
new file mode 100644
index 0000000..2fa949b
--- /dev/null
+++ b/meta/recipes-support/libcap/libcap_2.20.bb
@@ -0,0 +1,6 @@
+require libcap.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "10e47ed32ca2214eb0e58780282d27b4"
+SRC_URI[sha256sum] = "20e7c1ea4d3d5c410efb3a6ff138dc417912fae316d883460dcd58d9803a9220"
-- 
1.7.0


