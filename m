Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 25A3B4C81007
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:48 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 23:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; 
   d="scan'208";a="157963"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2011 23:29:47 -0700
Message-Id: <c0be273977aed9b72325d55f3ffc39cbea4cdef6.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:40:46 +0800
Date: Wed, 11 May 2011 14:27:11 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 21/24] settings-daemon: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:48 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../settings-daemon/files/addsoundkeys.patch       |    2 ++
 .../files/dso_linking_change_build_fix.patch       |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-sato/settings-daemon/files/addsoundkeys.patch b/meta/recipes-sato/settings-daemon/files/addsoundkeys.patch
index e06f029..baf06d6 100644
--- a/meta/recipes-sato/settings-daemon/files/addsoundkeys.patch
+++ b/meta/recipes-sato/settings-daemon/files/addsoundkeys.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: settings-daemon/settings-daemon.c
 ===================================================================
 --- settings-daemon.orig/settings-daemon.c	2009-05-22 14:57:05.000000000 +0100
diff --git a/meta/recipes-sato/settings-daemon/files/dso_linking_change_build_fix.patch b/meta/recipes-sato/settings-daemon/files/dso_linking_change_build_fix.patch
index 5fd96d4..5943744 100644
--- a/meta/recipes-sato/settings-daemon/files/dso_linking_change_build_fix.patch
+++ b/meta/recipes-sato/settings-daemon/files/dso_linking_change_build_fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 after gcc linking has changed, all the libraries must be explicitely specified to for linking. 
 This patch avoids this linking error:
 
-- 
1.7.2


