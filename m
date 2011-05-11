Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 573ED4C80A7A
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:23 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 23:29:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="641092885"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2011 23:29:22 -0700
Message-Id: <ce8cf63ea3eb6deb4c68c70c10d2e4f094332fcc.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 11:01:38 +0800
Date: Wed, 11 May 2011 14:26:46 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 01/24] tcf-agent: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:23 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../tcf-agent/tcf-agent/fix_tcf-agent.init.patch   |    2 ++
 .../tcf-agent/tcf-agent/terminals_agent.patch      |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/tcf-agent/tcf-agent/fix_tcf-agent.init.patch b/meta/recipes-devtools/tcf-agent/tcf-agent/fix_tcf-agent.init.patch
index fa9e458..60b0b27 100644
--- a/meta/recipes-devtools/tcf-agent/tcf-agent/fix_tcf-agent.init.patch
+++ b/meta/recipes-devtools/tcf-agent/tcf-agent/fix_tcf-agent.init.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [poky-specific script]
+
 --- a/Makefile
 +++ b/Makefile
 @@ -32,7 +32,7 @@
diff --git a/meta/recipes-devtools/tcf-agent/tcf-agent/terminals_agent.patch b/meta/recipes-devtools/tcf-agent/tcf-agent/terminals_agent.patch
index b88b5e7..aed62fa 100644
--- a/meta/recipes-devtools/tcf-agent/tcf-agent/terminals_agent.patch
+++ b/meta/recipes-devtools/tcf-agent/tcf-agent/terminals_agent.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [source code; we'll remove it when upgrading tcf-agent in future]
+
 Index: org.eclipse.tm.tcf.terminals.agent/terminals.c
 ===================================================================
 --- org.eclipse.tm.tcf.terminals.agent/terminals.c	(revision 0)
-- 
1.7.2


