Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 943484C80FA5
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:43:28 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Apr 2011 02:43:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,286,1301900400"; d="scan'208";a="427680136"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 29 Apr 2011 02:43:27 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QFk6t-0000FB-FC; Fri, 29 Apr 2011 17:35:39 +0800
Message-Id: <bc8ec30397d2faf563b4d5fa58c65c1da429edec.1304069545.git.qing.he@intel.com>
In-Reply-To: <cover.1304069545.git.qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
Old-Date: Thu, 21 Apr 2011 14:35:42 +0800
Date: Fri, 29 Apr 2011 17:35:39 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 02/10] acl: upgrade to version 2.2.51
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

from 2.2.49

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-support/attr/acl_2.2.49.bb |    6 ------
 meta/recipes-support/attr/acl_2.2.51.bb |    6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 meta/recipes-support/attr/acl_2.2.49.bb
 create mode 100644 meta/recipes-support/attr/acl_2.2.51.bb

diff --git a/meta/recipes-support/attr/acl_2.2.49.bb b/meta/recipes-support/attr/acl_2.2.49.bb
deleted file mode 100644
index 197ac7d..0000000
--- a/meta/recipes-support/attr/acl_2.2.49.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require acl.inc
-
-PR = "r1"
-
-SRC_URI[md5sum] = "181445894cca986da9ae0099d5ce2d08"
-SRC_URI[sha256sum] = "b9c7f4752e4ef4930a62fa5aa0d7efe1cba2b5a3a2d6ee2b45c0a70c72b7e5d5"
diff --git a/meta/recipes-support/attr/acl_2.2.51.bb b/meta/recipes-support/attr/acl_2.2.51.bb
new file mode 100644
index 0000000..301d44a
--- /dev/null
+++ b/meta/recipes-support/attr/acl_2.2.51.bb
@@ -0,0 +1,6 @@
+require acl.inc
+
+PR = "r0"
+
+SRC_URI[md5sum] = "3fc0ce99dc5253bdcce4c9cd437bc267"
+SRC_URI[sha256sum] = "06854521cf5d396801af7e54b9636680edf8064355e51c07657ec7442a185225"
-- 
1.7.0


