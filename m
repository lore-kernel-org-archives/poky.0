Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0D6C4C80AAF
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 09:46:18 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2011 07:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,316,1297065600"; d="scan'208";a="612731009"
Received: from unknown (HELO localhost) ([10.255.16.55])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2011 07:46:02 -0700
Message-Id: <11d7c73fbdca0b6b3d8d068a62f2a9c5dce86c9d.1300113623.git.josh@linux.intel.com>
In-Reply-To: <cover.1300113623.git.josh@linux.intel.com>
References: <cover.1300113623.git.josh@linux.intel.com>
Old-Date: Tue, 8 Mar 2011 21:39:38 -0800
Date: Mon, 14 Mar 2011 14:45:56 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 2/2] bitbake/hob: fix cancel button
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
X-List-Received-Date: Mon, 14 Mar 2011 14:46:19 -0000

From: Joshua Lock <josh@linux.intel.com>

An accidental logic inversion (aka thinko) had the cancel button only
cancel a build when the user didn't confirm the cancellation (i.e. clicked
no)...

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/hob.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/ui/hob.py b/bitbake/lib/bb/ui/hob.py
index 5278881..0f8fe8c 100644
--- a/bitbake/lib/bb/ui/hob.py
+++ b/bitbake/lib/bb/ui/hob.py
@@ -420,7 +420,7 @@ class MainWindow (gtk.Window):
         label.show()
         response = dialog.run()
         dialog.destroy()
-        if not response == gtk.RESPONSE_YES:
+        if response == gtk.RESPONSE_YES:
             self.handler.cancel_build()
         return
 
-- 
1.7.4


