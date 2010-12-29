Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1F9884C811D1
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 14:35:26 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 12:35:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,245,1291622400"; d="scan'208";a="641541147"
Received: from unknown (HELO localhost) ([10.255.13.209])
	by fmsmga002.fm.intel.com with ESMTP; 29 Dec 2010 12:35:25 -0800
Message-Id: <848c6b6a2577045a064595bdf9376e3e0324db04.1293654518.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1293654518.git.tom.zanussi@intel.com>
References: <cover.1293654518.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Wed, 29 Dec 2010 11:43:22 -0600
Date: Wed, 29 Dec 2010 14:35:19 -0600
To: poky@yoctoproject.org
Subject: [PATCH 2/2] task-poky-tools.bb: re-enable blktrace
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
X-List-Received-Date: Wed, 29 Dec 2010 20:35:27 -0000

The commit for BUGID #581 fixes the blktrace build errors - it should
now be safe to re-enable the blktrace recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/recipes-core/tasks/task-poky-tools.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
index e507ce4..60a95f9 100644
--- a/meta/recipes-core/tasks/task-poky-tools.bb
+++ b/meta/recipes-core/tasks/task-poky-tools.bb
@@ -49,6 +49,7 @@ RRECOMMENDS_task-poky-tools-profile = "\
     perf \
     trace-cmd \
     kernel-module-oprofile \
+    blktrace \
     sysprof \
     "
 
-- 
1.7.0.4


