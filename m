Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0660F4C80050
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 21:21:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Dec 2010 19:21:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,253,1291622400"; d="scan'208";a="873204928"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2010 19:21:45 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PYVTQ-0001gr-G5; Fri, 31 Dec 2010 11:16:12 +0800
Message-Id: <50026ee392818241df44f847fca14e985cdd5797.1293765141.git.qing.he@intel.com>
In-Reply-To: <cover.1293765141.git.qing.he@intel.com>
References: <cover.1293765141.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Fri, 31 Dec 2010 09:55:31 +0800
Date: Fri, 31 Dec 2010 11:16:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 5/6] augeas: upgrade to version 0.7.4
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
X-List-Received-Date: Fri, 31 Dec 2010 03:21:46 -0000

from 0.7.3

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-extended/augeas/augeas_0.7.3.bb |    6 ------
 meta/recipes-extended/augeas/augeas_0.7.4.bb |    6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 meta/recipes-extended/augeas/augeas_0.7.3.bb
 create mode 100644 meta/recipes-extended/augeas/augeas_0.7.4.bb

diff --git a/meta/recipes-extended/augeas/augeas_0.7.3.bb b/meta/recipes-extended/augeas/augeas_0.7.3.bb
deleted file mode 100644
index 2549f6c..0000000
--- a/meta/recipes-extended/augeas/augeas_0.7.3.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require augeas.inc
-
-PR = "r0"
-
-SRC_URI[md5sum] = "d907943fc21c2d1db5dc8d97ec02a9e5"
-SRC_URI[sha256sum] = "10be72446699fdcaad66e800bd83a74b4af4da40348eaca04effd8677c11514a"
diff --git a/meta/recipes-extended/augeas/augeas_0.7.4.bb b/meta/recipes-extended/augeas/augeas_0.7.4.bb
new file mode 100644
index 0000000..eada58f
--- /dev/null
+++ b/meta/recipes-extended/augeas/augeas_0.7.4.bb
@@ -0,0 +1,6 @@
+require augeas.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "e3ddce5305a15bdb876ef7feec9214d1"
+SRC_URI[sha256sum] = "02ba7b4f1d0796dff6ea5f8cc5f4949e4ba30b7fa2f36a0c8a5079f9975060d1"
-- 
1.7.0


