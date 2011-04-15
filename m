Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B26A4C80B74
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:23:53 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Apr 2011 03:23:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,217,1301900400"; d="scan'208";a="733787660"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 15 Apr 2011 03:23:52 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QAg4a-0006Gb-J2; Fri, 15 Apr 2011 18:16:20 +0800
Message-Id: <85dffd92cdfe11471122875109375fbff9381c6e.1302862307.git.qing.he@intel.com>
In-Reply-To: <cover.1302862307.git.qing.he@intel.com>
References: <cover.1302862307.git.qing.he@intel.com>
Old-Date: Fri, 15 Apr 2011 15:30:32 +0800
Date: Fri, 15 Apr 2011 18:16:20 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 2/4] libxml2: upgrade to version 2.7.8
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
X-List-Received-Date: Fri, 15 Apr 2011 10:23:53 -0000

From: Qing He <qing.he@intel.com>

[YOCTO #978]

from 2.7.7
fixes CVE-2010-4008

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../recipes-core/libxml/libxml2/libxml-64bit.patch |    2 ++
 meta/recipes-core/libxml/libxml2_2.7.7.bb          |    6 ------
 meta/recipes-core/libxml/libxml2_2.7.8.bb          |    6 ++++++
 3 files changed, 8 insertions(+), 6 deletions(-)
 delete mode 100644 meta/recipes-core/libxml/libxml2_2.7.7.bb
 create mode 100644 meta/recipes-core/libxml/libxml2_2.7.8.bb

diff --git a/meta/recipes-core/libxml/libxml2/libxml-64bit.patch b/meta/recipes-core/libxml/libxml2/libxml-64bit.patch
index fcb7d34..1147017 100644
--- a/meta/recipes-core/libxml/libxml2/libxml-64bit.patch
+++ b/meta/recipes-core/libxml/libxml2/libxml-64bit.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Backport [from debian: bugs.debian.org/439843]
+
 ---
  libxml.h |    3 +++
  1 file changed, 3 insertions(+)
diff --git a/meta/recipes-core/libxml/libxml2_2.7.7.bb b/meta/recipes-core/libxml/libxml2_2.7.7.bb
deleted file mode 100644
index 91f4ceb..0000000
--- a/meta/recipes-core/libxml/libxml2_2.7.7.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require libxml2.inc
-
-PR = "r4"
-
-SRC_URI[md5sum] = "9abc9959823ca9ff904f1fbcf21df066"
-SRC_URI[sha256sum] = "af5b781418ba4fff556fa43c50086658ea8a2f31909c2b625c2ce913a1d9eb68"
diff --git a/meta/recipes-core/libxml/libxml2_2.7.8.bb b/meta/recipes-core/libxml/libxml2_2.7.8.bb
new file mode 100644
index 0000000..616fd09
--- /dev/null
+++ b/meta/recipes-core/libxml/libxml2_2.7.8.bb
@@ -0,0 +1,6 @@
+require libxml2.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "8127a65e8c3b08856093099b52599c86"
+SRC_URI[sha256sum] = "cda23bc9ebd26474ca8f3d67e7d1c4a1f1e7106364b690d822e009fdc3c417ec"
-- 
1.7.0


