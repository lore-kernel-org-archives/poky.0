Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34CB44C810AE
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:05:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 05:05:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="354053862"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 05:05:49 -0800
Message-Id: <f344b391b093708d3b085f76fc6076d005ad0635.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Wed, 24 Nov 2010 12:53:31 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/11] sqlite: upgrade from 3.6.23 to 3.7.3
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
X-List-Received-Date: Sun, 28 Nov 2010 13:05:51 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb |    3 ---
 meta/recipes-support/sqlite/sqlite3_3.7.3.bb    |    5 +++++
 2 files changed, 5 insertions(+), 3 deletions(-)
 delete mode 100644 meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb
 create mode 100644 meta/recipes-support/sqlite/sqlite3_3.7.3.bb

diff --git a/meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb b/meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb
deleted file mode 100644
index 5075dd3..0000000
--- a/meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb
+++ /dev/null
@@ -1,3 +0,0 @@
-require sqlite3.inc
-
-PR = "r1"
diff --git a/meta/recipes-support/sqlite/sqlite3_3.7.3.bb b/meta/recipes-support/sqlite/sqlite3_3.7.3.bb
new file mode 100644
index 0000000..fa68c56
--- /dev/null
+++ b/meta/recipes-support/sqlite/sqlite3_3.7.3.bb
@@ -0,0 +1,5 @@
+require sqlite3.inc
+
+LIC_FILES_CHKSUM = "file://src/main.c;endline=16;md5=86c9b824e9d68f8a26343a4b57f6d85a"
+
+PR = "r0"
-- 
1.7.0.4


