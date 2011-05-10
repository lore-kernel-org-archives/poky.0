Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E71D54C80AC9
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:45 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2011 01:56:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485621"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:36 -0700
Message-Id: <92a320c25a94d665b4d5b4dd6919cdf00311a66c.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 16:47:24 +0800
Date: Tue, 10 May 2011 17:02:05 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 33/39] libopensync: add upstream status for libopensync's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:46 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../opensync/libopensync-0.37/build-in-src.patch   |    2 ++
 .../opensync/libopensync-0.37/cmake.patch          |    2 ++
 .../libopensync-0.37/no-python-check.patch         |    2 ++
 3 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/build-in-src.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/build-in-src.patch
index 1810b33..fa61e15 100644
--- a/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/build-in-src.patch
+++ b/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/build-in-src.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  cmake/OpenSyncInternal.cmake.in |    1 -
  1 file changed, 1 deletion(-)
diff --git a/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/cmake.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/cmake.patch
index 7ea4613..20d09cf 100644
--- a/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/cmake.patch
+++ b/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/cmake.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  opensync/CMakeLists.txt |    1 -
  1 file changed, 1 deletion(-)
diff --git a/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/no-python-check.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/no-python-check.patch
index 04257bc..d59fddb 100644
--- a/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/no-python-check.patch
+++ b/meta-demoapps/recipes-connectivity/opensync/libopensync-0.37/no-python-check.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  CMakeLists.txt |    1 -
  1 file changed, 1 deletion(-)
-- 
1.7.1


