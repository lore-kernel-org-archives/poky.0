Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C853B4C80A7A
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 17:35:17 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 15:35:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,439,1291622400"; d="scan'208";a="705066006"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2011 15:35:16 -0800
Message-Id: <1847bfd6096482147a2a4681a2f09c4d34dc85f1.1297121546.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297121546.git.scott.a.garman@intel.com>
References: <cover.1297121546.git.scott.a.garman@intel.com>
Old-Date: Sun, 6 Feb 2011 20:47:37 -0800
Date: Mon, 07 Feb 2011 15:36:23 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 6/6] prelink: add transfig to DEPENDS
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
X-List-Received-Date: Mon, 07 Feb 2011 23:35:18 -0000

From: Scott Garman <scott.a.garman@intel.com>

Building prelink's documentaiton requires fig2dev, which is
provided by transfig.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-devtools/prelink/prelink_git.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/prelink/prelink_git.bb b/meta/recipes-devtools/prelink/prelink_git.bb
index 8620513..6f39742 100644
--- a/meta/recipes-devtools/prelink/prelink_git.bb
+++ b/meta/recipes-devtools/prelink/prelink_git.bb
@@ -1,6 +1,6 @@
 SECTION = "devel"
 # Need binutils for libiberty.a
-DEPENDS = "elfutils binutils"
+DEPENDS = "elfutils binutils transfig"
 SUMMARY = "An ELF prelinking utility"
 DESCRIPTION = "The prelink package contains a utility which modifies ELF shared libraries \
 and executables, so that far fewer relocations need to be resolved at \
-- 
1.7.4


