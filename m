Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4261E00301
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960397"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:25 -0700
Message-Id: <2319b2d2d7f971916e8d84b24f99a542a986e8e8.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 13/17] Remove help2man dependency
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:32 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

The help2man script is pretty useless to us. It requires to run the target
binary to extract help information which is not possible for any of our
cross compiled target binaries.

We're not interested in man pages for -cross/-native tools.

It therefore makes no sense to have this as a core build dependency.

This patch removes the dependeny and replaces it with a script
returning false. This will trigger autotool's missing utility
to use the copy of the man page included with the sources which
is what would already happen when we tried to run cross compiled
binaries anyway.

(From OE-Core rev: 288343e30604b944dc18fd82172febd314d9c520)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/help2man |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)
 create mode 100755 scripts/help2man

diff --git a/scripts/help2man b/scripts/help2man
new file mode 100755
index 0000000..2bb8d86
--- /dev/null
+++ b/scripts/help2man
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+exit 1
-- 
1.7.7


