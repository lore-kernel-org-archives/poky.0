Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D2A44C8016A
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:54:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Feb 2011 00:54:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="703976416"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by orsmga001.jf.intel.com with ESMTP; 04 Feb 2011 00:54:48 -0800
Message-Id: <d61236614eaaf4362c640909aaa043882b078952.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Wed, 2 Feb 2011 20:14:41 +0000
Date: Fri, 04 Feb 2011  8:54:42 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 13/13] bitbake/progress: make progress dialog modal for parent window
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
X-List-Received-Date: Fri, 04 Feb 2011 08:54:52 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/progress.py |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/progress.py b/bitbake/lib/bb/ui/crumbs/progress.py
index ce3a6c3..0c7ad96 100644
--- a/bitbake/lib/bb/ui/crumbs/progress.py
+++ b/bitbake/lib/bb/ui/crumbs/progress.py
@@ -3,11 +3,10 @@ import gtk
 class ProgressBar(gtk.Dialog):
     def __init__(self, parent):
 
-        gtk.Dialog.__init__(self)
+        gtk.Dialog.__init__(self, flags=(gtk.DIALOG_MODAL | gtk.DIALOG_DESTROY_WITH_PARENT))
         self.set_title("Parsing metadata, please wait...")
         self.set_default_size(500, 0)
         self.set_transient_for(parent)
-        self.set_destroy_with_parent(True)
         self.progress = gtk.ProgressBar()
         self.vbox.pack_start(self.progress)
         self.show_all()
-- 
1.7.4


