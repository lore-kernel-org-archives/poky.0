Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D2EF4C80BBC
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:43:28 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Apr 2011 02:43:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,286,1301900400"; d="scan'208";a="635770190"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 29 Apr 2011 02:43:27 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QFk6t-0000FM-Ff; Fri, 29 Apr 2011 17:35:39 +0800
Message-Id: <e6f434b3bdedf73352d814efb614bda139844e4d.1304069545.git.qing.he@intel.com>
In-Reply-To: <cover.1304069545.git.qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
Old-Date: Thu, 21 Apr 2011 17:27:06 +0800
Date: Fri, 29 Apr 2011 17:35:39 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 03/10] augeas: upgrade to version 0.8.1
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

from 0.7.4

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-extended/augeas/augeas_0.7.4.bb |    6 ------
 meta/recipes-extended/augeas/augeas_0.8.1.bb |    6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 meta/recipes-extended/augeas/augeas_0.7.4.bb
 create mode 100644 meta/recipes-extended/augeas/augeas_0.8.1.bb

diff --git a/meta/recipes-extended/augeas/augeas_0.7.4.bb b/meta/recipes-extended/augeas/augeas_0.7.4.bb
deleted file mode 100644
index eada58f..0000000
--- a/meta/recipes-extended/augeas/augeas_0.7.4.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require augeas.inc
-
-PR = "r0"
-
-SRC_URI[md5sum] = "e3ddce5305a15bdb876ef7feec9214d1"
-SRC_URI[sha256sum] = "02ba7b4f1d0796dff6ea5f8cc5f4949e4ba30b7fa2f36a0c8a5079f9975060d1"
diff --git a/meta/recipes-extended/augeas/augeas_0.8.1.bb b/meta/recipes-extended/augeas/augeas_0.8.1.bb
new file mode 100644
index 0000000..51eeb33
--- /dev/null
+++ b/meta/recipes-extended/augeas/augeas_0.8.1.bb
@@ -0,0 +1,6 @@
+require augeas.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "62d47bdc60e175f93aed3b81cb8e2785"
+SRC_URI[sha256sum] = "916fef67e8eed6d1abe02433830301bd01dfc8228e9cfffb490347545155c4d7"
-- 
1.7.0


