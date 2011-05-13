Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A08AD4C81204
	for <poky@yoctoproject.org>; Fri, 13 May 2011 12:27:50 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 May 2011 10:27:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,365,1301900400"; d="scan'208";a="746913734"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 13 May 2011 10:27:50 -0700
Message-Id: <5baf96c4d02f8e3db119e048a532f3aab7bce478.1305307513.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305307513.git.nitin.a.kamble@intel.com>
References: <cover.1305307513.git.nitin.a.kamble@intel.com>
Old-Date: Fri, 13 May 2011 10:24:20 -0700
Date: Fri, 13 May 2011 10:27:50 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] task-core-nfs: fix a bitbake error
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
X-List-Received-Date: Fri, 13 May 2011 17:27:50 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

THis fixes following issue:

NOTE: Runtime target 'glibc-utilsglibc-utils' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['glibc-utilsglibc-utils']
NOTE: Runtime target 'task-core-nfs-server' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['task-core-nfs-server', 'glibc-utilsglibc-utils']

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-core/tasks/task-core-nfs.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/tasks/task-core-nfs.bb b/meta/recipes-core/tasks/task-core-nfs.bb
index d5d8291..087f4f0 100644
--- a/meta/recipes-core/tasks/task-core-nfs.bb
+++ b/meta/recipes-core/tasks/task-core-nfs.bb
@@ -20,7 +20,7 @@ RDEPENDS_task-core-nfs-server = "\
     nfs-utils"
 
 # rpcinfo can be useful but only with glibc images
-GLIBC_DEPENDENCIES = "glibc-utils"
+GLIBC_DEPENDENCIES = " glibc-utils"
 
 RRECOMMENDS_task-core-nfs-server_append_linux = "${GLIBC_DEPENDENCIES}"
 RRECOMMENDS_task-core-nfs-server_append_linux-gnueabi = "${GLIBC_DEPENDENCIES}"
-- 
1.7.3.4


