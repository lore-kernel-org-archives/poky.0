Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FF85E00308
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960400"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:28 -0700
Message-Id: <c0499a0f8680344df0e1d3158ea45a110acbb51b.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 16/17] linux-yocto-stable: update SRC_URI to generic 2.6.34 repo
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:33 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

The existing linux-windriver repo was cloned into a more generically
named linux-yocto-2.6.34 repository. It is the 2.6.34 repository that
is taking updates for stable and point releases, so switching the
SRC_URI to that repo needs to be done. The existing repository is
maintained for old releases and builds, so nothing is lost.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
index 3c1e669..f3a02dc 100644
--- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
@@ -32,7 +32,7 @@ python __anonymous () {
     bb.data.setVar("LINUX_KERNEL_TYPE_EXTENSION", kerntype, d)
 }
 
-SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;nocheckout=1;branch=${KBRANCH},wrs_meta;name=machine,meta"
+SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.34;protocol=git;nocheckout=1;branch=${KBRANCH},wrs_meta;name=machine,meta"
 
 # Functionality flags
 KERNEL_REVISION_CHECKING ?= "t"
-- 
1.7.7


