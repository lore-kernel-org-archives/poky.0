Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4F584C800B1
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 13:14:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Feb 2011 11:14:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,227,1297065600"; d="scan'208";a="394200821"
Received: from unknown (HELO localhost) ([10.255.16.236])
	by azsmga001.ch.intel.com with ESMTP; 25 Feb 2011 11:13:59 -0800
Message-Id: <dea238faddeddde52244e4a029cc3185dd73ce0b.1298661117.git.josh@linux.intel.com>
In-Reply-To: <cover.1298661117.git.josh@linux.intel.com>
References: <cover.1298661117.git.josh@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 18:57:10 +0000
Date: Fri, 25 Feb 2011 19:13:53 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 2/3] bitbake/hob: only show one progress dialog when changing machine
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
X-List-Received-Date: Fri, 25 Feb 2011 19:14:00 -0000

From: Joshua Lock <josh@linux.intel.com>

Remove a spurious signal emission which resulted in two progress dialogs
being shown after changing the machine.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
index 699354c..84f3043 100644
--- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
+++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
@@ -123,7 +123,6 @@ class HobHandler(gobject.GObject):
     def set_machine(self, machine):
         self.server.runCommand(["setVariable", "MACHINE", machine])
         self.current_command = "findConfigFilesMachine"
-        self.emit("generating-data")
         self.run_next_command()
 
     def set_distro(self, distro):
-- 
1.7.4


