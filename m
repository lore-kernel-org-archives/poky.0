Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73A5A4C8109B
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 11:09:24 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Dec 2010 09:09:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,214,1291622400"; d="scan'208";a="689822560"
Received: from unknown (HELO localhost) ([10.255.16.69])
	by orsmga001.jf.intel.com with ESMTP; 22 Dec 2010 09:09:23 -0800
Message-Id: <950779d3e39cde4800472e1f8cb91eecdc85ab1d.1293037679.git.josh@linux.intel.com>
In-Reply-To: <cover.1293037679.git.josh@linux.intel.com>
References: <cover.1293037679.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 17:03:44 +0000
Date: Wed, 22 Dec 2010 17:09:17 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] bitbake/depexp: fix early exit
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
X-List-Received-Date: Wed, 22 Dec 2010 17:09:24 -0000

Stupdi typo/thinko from me had depexp exiting once recipes had parsed
as I'd used a return the while loop where I'd meant a continue...

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/depexp.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/ui/depexp.py b/bitbake/lib/bb/ui/depexp.py
index 6fd18d1..155a892 100644
--- a/bitbake/lib/bb/ui/depexp.py
+++ b/bitbake/lib/bb/ui/depexp.py
@@ -225,7 +225,7 @@ def init(server, eventHandler):
                     print(("\nParsing finished. %d cached, %d parsed, %d skipped, %d masked, %d errors."
                         % ( event.cached, event.parsed, event.skipped, event.masked, event.errors)))
                     pbar.hide()
-                    return
+                    continue
                 gtk.gdk.threads_enter()
                 pbar.update(x, y)
                 gtk.gdk.threads_leave()
-- 
1.7.3.3


