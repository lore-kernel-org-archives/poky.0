Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B302B4C80B74
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:23:53 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Apr 2011 03:23:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,217,1301900400"; d="scan'208";a="419804413"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 15 Apr 2011 03:23:52 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QAg4a-0006Gx-K1; Fri, 15 Apr 2011 18:16:20 +0800
Message-Id: <4d99ade5df10f6975f0f9b42dc4fb1fa04f71497.1302862307.git.qing.he@intel.com>
In-Reply-To: <cover.1302862307.git.qing.he@intel.com>
References: <cover.1302862307.git.qing.he@intel.com>
Old-Date: Fri, 15 Apr 2011 18:05:29 +0800
Date: Fri, 15 Apr 2011 18:16:20 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 4/4] rsync: upgrade to version 3.0.8
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

[YOCTO #983]

from 3.0.7
fixes CVE-2011-1097

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../rsync/{rsync_3.0.7.bb => rsync_3.0.8.bb}       |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-devtools/rsync/{rsync_3.0.7.bb => rsync_3.0.8.bb} (71%)

diff --git a/meta/recipes-devtools/rsync/rsync_3.0.7.bb b/meta/recipes-devtools/rsync/rsync_3.0.8.bb
similarity index 71%
rename from meta/recipes-devtools/rsync/rsync_3.0.7.bb
rename to meta/recipes-devtools/rsync/rsync_3.0.8.bb
index 971fd54..33ab271 100644
--- a/meta/recipes-devtools/rsync/rsync_3.0.7.bb
+++ b/meta/recipes-devtools/rsync/rsync_3.0.8.bb
@@ -1,11 +1,11 @@
 require rsync.inc
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI += "file://acinclude.m4"
 
-SRC_URI[md5sum] = "b53525900817cf1ba7ad3a516ab5bfe9"
-SRC_URI[sha256sum] = "9ee00d16c023c486328cbb61f59928a954b24b7b7173c3517ebb0d6c3edfe7c8"
+SRC_URI[md5sum] = "0ee8346ce16bdfe4c88a236e94c752b4"
+SRC_URI[sha256sum] = "4b3fc271f4c96036b4c73fb019be078e4d8cce2defe1e7ae7cde1117859a2114"
 
 EXTRA_OECONF += "--disable-xattr-support --disable-acl-support"
 
-- 
1.7.0


