Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2483B4C810AF
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:11:28 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 08:11:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="633564986"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 08:11:27 -0800
Message-Id: <4c90388522badd008f9a5a9ae658b6b3bf5b030c.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/10] bitbake/goggle: interaction tweaks
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
Date: Mon, 06 Dec 2010 16:11:28 -0000
X-Original-Date: Thu, 11 Nov 2010 10:26:48 +0000
X-List-Received-Date: Mon, 06 Dec 2010 16:11:28 -0000

Set the goggle window to a more sane default size (640x480) and hook up the
close button.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/goggle.py |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/ui/goggle.py b/bitbake/lib/bb/ui/goggle.py
index 2cfa002..d29d576 100644
--- a/bitbake/lib/bb/ui/goggle.py
+++ b/bitbake/lib/bb/ui/goggle.py
@@ -41,6 +41,8 @@ class MainWindow (gtk.Window):
         scrolled_window = gtk.ScrolledWindow ()
         self.add (scrolled_window)
         self.cur_build_tv = RunningBuildTreeView()
+        self.connect("delete-event", gtk.main_quit)
+        self.set_default_size(640, 480)
         scrolled_window.add (self.cur_build_tv)
 
 def init (server, eventHandler):
-- 
1.7.3.2


