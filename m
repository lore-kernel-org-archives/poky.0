Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 10B9B4C8006D
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 07:35:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Feb 2011 05:35:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="388458796"
Received: from unknown (HELO localhost) ([10.255.14.192])
	by azsmga001.ch.intel.com with ESMTP; 14 Feb 2011 05:35:06 -0800
Message-Id: <07a51b7a2bdfff12600dc1eeba41ea6cf3cb3055.1297690342.git.sgw@linux.intel.com>
In-Reply-To: <cover.1297690342.git.sgw@linux.intel.com>
References: <cover.1297690342.git.sgw@linux.intel.com>
Old-Date: Mon, 14 Feb 2011 00:41:37 -0800
Date: Mon, 14 Feb 2011  5:35:06 -0800
To: poky@yoctoproject.org
CC: 
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 3/5] kernel.bbclass: add approproate X Environment variables to allow xterm to start
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
X-List-Received-Date: Mon, 14 Feb 2011 13:35:08 -0000

From: Saul Wold <sgw@linux.intel.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/classes/kernel.bbclass |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 2ae2dcb..a1b1354 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -198,6 +198,9 @@ kernel_do_configure() {
 }
 
 do_menuconfig() {
+        export DISPLAY='${DISPLAY}'
+        export DBUS_SESSION_BUS_ADDRESS='${DBUS_SESSION_BUS_ADDRESS}'
+        export XAUTHORITY='${XAUTHORITY}'
 	export TERMWINDOWTITLE="${PN} Kernel Configuration"
 	export SHELLCMDS="make menuconfig"
 	${TERMCMDRUN}
-- 
1.7.1.1


