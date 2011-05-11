Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B71324C80A53
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:25 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 23:29:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; 
   d="scan'208";a="750720"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 23:29:24 -0700
Message-Id: <e731a446ed6a2d98856bc5b000b34e7107fe88fa.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 11:29:53 +0800
Date: Wed, 11 May 2011 14:26:49 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 03/24] which (GPLv2): update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:25 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../fix_name_conflict_group_member.patch           |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/which/which-2.18/fix_name_conflict_group_member.patch b/meta/recipes-extended/which/which-2.18/fix_name_conflict_group_member.patch
index 568d423..fb9b1a4 100644
--- a/meta/recipes-extended/which/which-2.18/fix_name_conflict_group_member.patch
+++ b/meta/recipes-extended/which/which-2.18/fix_name_conflict_group_member.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [this is 2.18(GPLv2) specific]
+
 # glibc also implements the function group_member. To avoid name conflict,
 # here let us append a "_" to which's version.
 #
-- 
1.7.2


