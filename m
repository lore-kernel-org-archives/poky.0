Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71E614C811EC
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 08:34:13 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jan 2011 06:34:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,307,1291622400"; d="scan'208";a="876422668"
Received: from unknown (HELO localhost) ([10.255.16.112])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2011 06:34:05 -0800
Message-Id: <2bf24b2f222baaf7ac4fa56399df1e313834aefc.1294756107.git.josh@linux.intel.com>
In-Reply-To: <cover.1294756107.git.josh@linux.intel.com>
References: <cover.1294756107.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Old-Date: Mon, 10 Jan 2011 14:45:07 +0000
Date: Tue, 11 Jan 2011 14:33:59 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/4] bitbake/depexp: closing progress dialog kills gui
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

It seems safe to assume a user hitting the close button
on the dialog wants to kill the whole UI.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/depexp.py |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/ui/depexp.py b/bitbake/lib/bb/ui/depexp.py
index 13bf9ac..3dbd5e0 100644
--- a/bitbake/lib/bb/ui/depexp.py
+++ b/bitbake/lib/bb/ui/depexp.py
@@ -218,6 +218,7 @@ def main(server, eventHandler):
     gtk.gdk.threads_enter()
     dep = DepExplorer()
     pbar = ProgressBar(dep)
+    pbar.connect("delete-event", gtk.main_quit)
     gtk.gdk.threads_leave()
 
     progress_total = 0
-- 
1.7.3.4


