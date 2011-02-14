Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A97934C8006D
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 07:35:04 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2011 05:35:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="887286730"
Received: from unknown (HELO localhost) ([10.255.14.192])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2011 05:35:03 -0800
Message-Id: <e59c74f5e5282208a70a8b2bd30d038ab247d55e.1297690342.git.sgw@linux.intel.com>
In-Reply-To: <cover.1297690342.git.sgw@linux.intel.com>
References: <cover.1297690342.git.sgw@linux.intel.com>
Old-Date: Sun, 13 Feb 2011 23:57:00 -0800
Date: Mon, 14 Feb 2011  5:35:03 -0800
To: poky@yoctoproject.org
CC: 
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 1/5] distro tracking: minor fix to mc lastest version
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
X-List-Received-Date: Mon, 14 Feb 2011 13:35:04 -0000

From: Saul Wold <sgw@linux.intel.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 3ac5452..35b56fa 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -5526,8 +5526,8 @@ RECIPE_LATEST_VERSION_pn-dtc = "37c0b6a0916c31a5eae0a9ddfcc5d0b8fb4569c6"
 RECIPE_LATEST_VERSION_pn-bind = "9.7.2-P3"
 RECIPE_NO_UPDATE_REASON_pn-bind = "Latest Stable version, newer versions are Alpha/Beta"
 RECIPE_LATEST_VERSION_pn-man = "1.6f"
-RECIPE_LATEST_VERSION_pn-mc = "4.7.5pre1"
-RECIPE_NO_UPDATE_REASON_pn-bind = "Latest Stable version, 4.7.5pre1 is Alpha/Beta"
+RECIPE_LATEST_VERSION_pn-mc = "4.7.5-pre1"
+RECIPE_NO_UPDATE_REASON_pn-bind = "Latest Stable version, 4.7.5-pre1 is Alpha/Beta"
 
 RECIPE_STATUS_pn-sgml-common = "green"
 RECIPE_DEPENDENCY_CHECK_pn-sgml-common = "not done"
-- 
1.7.1.1


