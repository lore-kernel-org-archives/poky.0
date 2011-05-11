Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3FDF4C80ADD
	for <poky@yoctoproject.org>; Wed, 11 May 2011 04:13:51 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2011 02:13:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,352,1301900400"; d="scan'208";a="641146026"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by orsmga002.jf.intel.com with ESMTP; 11 May 2011 02:13:50 -0700
Message-Id: <d81adaa48929613753f5f50b279c3059b09f8dce.1305105317.git.ke.yu@intel.com>
In-Reply-To: <cover.1305105317.git.ke.yu@intel.com>
References: <cover.1305105317.git.ke.yu@intel.com>
Old-Date: Wed, 11 May 2011 15:19:21 +0800
Date: Wed, 11 May 2011 17:20:06 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 6/8] x11-common: update patch Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 09:13:51 -0000

From: Yu Ke <ke.yu@intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../x11-common/x11-common/gplv2-license.patch      |    2 ++
 .../xserver-nodm-init/gplv2-license.patch          |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/x11-common/x11-common/gplv2-license.patch b/meta/recipes-graphics/x11-common/x11-common/gplv2-license.patch
index ec93253..eff975e 100644
--- a/meta/recipes-graphics/x11-common/x11-common/gplv2-license.patch
+++ b/meta/recipes-graphics/x11-common/x11-common/gplv2-license.patch
@@ -4,6 +4,8 @@ this is a local file recipe and the license file is missing.In order
 to pass the license checksum checking, the license file is needed. So
 this patch add the GPLv2 license file.
 
+Upstream-Status: Inappropriate [licensing]
+
 Signed-off-by: Yu Ke <ke.yu@intel.com>
 
 diff --git a/COPYING b/COPYING
diff --git a/meta/recipes-graphics/x11-common/xserver-nodm-init/gplv2-license.patch b/meta/recipes-graphics/x11-common/xserver-nodm-init/gplv2-license.patch
index ec93253..eff975e 100644
--- a/meta/recipes-graphics/x11-common/xserver-nodm-init/gplv2-license.patch
+++ b/meta/recipes-graphics/x11-common/xserver-nodm-init/gplv2-license.patch
@@ -4,6 +4,8 @@ this is a local file recipe and the license file is missing.In order
 to pass the license checksum checking, the license file is needed. So
 this patch add the GPLv2 license file.
 
+Upstream-Status: Inappropriate [licensing]
+
 Signed-off-by: Yu Ke <ke.yu@intel.com>
 
 diff --git a/COPYING b/COPYING
-- 
1.7.0.4


