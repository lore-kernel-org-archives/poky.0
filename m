Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E33C14C81122
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 08:33:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jan 2011 06:33:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,307,1291622400"; d="scan'208";a="591851877"
Received: from unknown (HELO localhost) ([10.255.16.112])
	by orsmga002.jf.intel.com with ESMTP; 11 Jan 2011 06:33:58 -0800
Message-Id: <769f05e856db28c5d04bbe8fa4e3becbb84cdabc.1294756107.git.josh@linux.intel.com>
In-Reply-To: <cover.1294756107.git.josh@linux.intel.com>
References: <cover.1294756107.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Old-Date: Mon, 10 Jan 2011 14:37:03 +0000
Date: Tue, 11 Jan 2011 14:33:53 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/4] bitbake/goggle: closing the progress dialog kills the UI
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
X-List-Received-Date: Tue, 11 Jan 2011 14:34:00 -0000

It's unlikely that someone wants to close the progress dialog
yet leave the UI (and BitBake process) running, so hook up
the progress dialogs delete-event to exit gtk.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/goggle.py |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/ui/goggle.py b/bitbake/lib/bb/ui/goggle.py
index 3c6a014..1905c0c 100644
--- a/bitbake/lib/bb/ui/goggle.py
+++ b/bitbake/lib/bb/ui/goggle.py
@@ -70,6 +70,7 @@ def main (server, eventHandler):
     window = MainWindow ()
     window.show_all ()
     pbar = ProgressBar(window)
+    pbar.connect("delete-event", gtk.main_quit)
 
     # Create the object for the current build
     running_build = RunningBuild ()
-- 
1.7.3.4


