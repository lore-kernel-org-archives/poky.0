Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B9A74C811EC
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 08:34:12 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Jan 2011 06:34:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,307,1291622400"; d="scan'208";a="695640117"
Received: from unknown (HELO localhost) ([10.255.16.112])
	by orsmga001.jf.intel.com with ESMTP; 11 Jan 2011 06:34:12 -0800
Message-Id: <887e562a7fab6b2a81a03b454b587041ead0e731.1294756107.git.josh@linux.intel.com>
In-Reply-To: <cover.1294756107.git.josh@linux.intel.com>
References: <cover.1294756107.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Old-Date: Tue, 11 Jan 2011 14:23:24 +0000
Date: Tue, 11 Jan 2011 14:34:06 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/4] bitbake/goggle: don't drop events
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
X-List-Received-Date: Tue, 11 Jan 2011 14:34:13 -0000

We had a logic inversion that meant we where dropping quite a
significant number of events on the floor.... Fixed!

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/goggle.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/ui/goggle.py b/bitbake/lib/bb/ui/goggle.py
index 1905c0c..ec5a38d 100644
--- a/bitbake/lib/bb/ui/goggle.py
+++ b/bitbake/lib/bb/ui/goggle.py
@@ -32,8 +32,8 @@ def event_handle_idle_func (eventHandler, build, pbar):
     # Consume as many messages as we can in the time available to us
     event = eventHandler.getEvent()
     while event:
-        event = eventHandler.getEvent()
         build.handle_event (event, pbar)
+        event = eventHandler.getEvent()
 
     return True
 
-- 
1.7.3.4


