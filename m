Return-Path: <jiajun.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C1F634C800AB
	for <poky@pokylinux.org>; Thu, 10 Feb 2011 08:43:36 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Feb 2011 06:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="386896521"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by azsmga001.ch.intel.com with ESMTP; 10 Feb 2011 06:43:35 -0800
Message-Id: <181b7e9aa9a89ae2536dc03dc85d157e41099f87.1297349671.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1297349671.git.jiajun.xu@intel.com>
References: <cover.1297349671.git.jiajun.xu@intel.com>
Old-Date: Thu, 10 Feb 2011 22:50:14 +0800
Date: Thu, 10 Feb 2011 22:57:46 +0800
To: poky@pokylinux.org
From: Jiajun Xu <jiajun.xu@intel.com>
Subject: [PATCH 1/1] qemuimagetest: Rename test scenario file from poky-image-sdk to poky-image-sato-sdk
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
X-List-Received-Date: Thu, 10 Feb 2011 14:43:37 -0000

From: Jiajun Xu <jiajun.xu@intel.com>

Signed-off-by Jiajun Xu <jiajun.xu@intel.com>
---
 scripts/qemuimage-testlib                          |    6 ++++--
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 6 files changed, 4 insertions(+), 2 deletions(-)
 rename scripts/qemuimage-tests/scenario/qemuarm/{poky-image-sdk => poky-image-sato-sdk} (100%)
 rename scripts/qemuimage-tests/scenario/qemumips/{poky-image-sdk => poky-image-sato-sdk} (100%)
 rename scripts/qemuimage-tests/scenario/qemuppc/{poky-image-sdk => poky-image-sato-sdk} (100%)
 rename scripts/qemuimage-tests/scenario/qemux86-64/{poky-image-sdk => poky-image-sato-sdk} (100%)
 rename scripts/qemuimage-tests/scenario/qemux86/{poky-image-sdk => poky-image-sato-sdk} (100%)

diff --git a/scripts/qemuimage-testlib b/scripts/qemuimage-testlib
index 823cbfa..720ee8f 100644
--- a/scripts/qemuimage-testlib
+++ b/scripts/qemuimage-testlib
@@ -305,7 +305,8 @@ Test_Find_Image()
 		else
 			for i in `dir ${where}`
 			do
-				echo $i | grep -q "${kernel}.*${arch}.*\.${extension}"
+				# Exclude qemux86-64 when target is qemux86
+				echo $i | grep "${kernel}.*${arch}.*\.${extension}" | grep -qv "${kernel}.*${arch}-64.*\.${extension}"
 				if [ $? -eq 0 ]; then
 					echo ${where}/${i}
 					return 0
@@ -323,7 +324,8 @@ Test_Find_Image()
 		else
 			for i in `dir ${where}`
 			do
-				echo $i | grep -q "${target}-${arch}.*\.${extension}"
+				# Exclude qemux86-64 when target is qemux86
+				echo $i | grep "${target}-${arch}.*\.${extension}" | grep -qv "${target}-${arch}-64.*\.${extension}"
 				if [ $? -eq 0 ]; then
 					echo ${where}/${i}
 					return 0
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato-sdk
similarity index 100%
rename from scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk
rename to scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato-sdk
diff --git a/scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemumips/poky-image-sato-sdk
similarity index 100%
rename from scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk
rename to scripts/qemuimage-tests/scenario/qemumips/poky-image-sato-sdk
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato-sdk
similarity index 100%
rename from scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk
rename to scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato-sdk
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato-sdk
similarity index 100%
rename from scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
rename to scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato-sdk
diff --git a/scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk b/scripts/qemuimage-tests/scenario/qemux86/poky-image-sato-sdk
similarity index 100%
rename from scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk
rename to scripts/qemuimage-tests/scenario/qemux86/poky-image-sato-sdk
-- 
1.7.1


