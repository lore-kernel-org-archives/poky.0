Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A8DC4C80049
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 10:36:56 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Feb 2011 08:36:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,212,1297065600"; d="scan'208";a="392969447"
Received: from unknown (HELO localhost) ([10.255.16.217])
	by azsmga001.ch.intel.com with ESMTP; 23 Feb 2011 08:36:51 -0800
Message-Id: <a467d8c0db0e398fd7e1a476a29e93e724ee652f.1298478966.git.josh@linux.intel.com>
In-Reply-To: <cover.1298478966.git.josh@linux.intel.com>
References: <cover.1298478966.git.josh@linux.intel.com>
Old-Date: Wed, 23 Feb 2011 11:59:59 +0000
Date: Wed, 23 Feb 2011 16:36:45 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] Ensure Bash is used when spawning terminals
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
X-List-Received-Date: Wed, 23 Feb 2011 16:36:56 -0000

From: Joshua Lock <josh@linux.intel.com>

We rely on Bashisms when spawning a terminal so ensure that bash is used
when using devshell and menuconfig.

Fixes [BUGID #119]

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/classes/devshell.bbclass |    4 ++--
 meta/classes/kernel.bbclass   |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/classes/devshell.bbclass b/meta/classes/devshell.bbclass
index 4fb3e63..5f262f4 100644
--- a/meta/classes/devshell.bbclass
+++ b/meta/classes/devshell.bbclass
@@ -9,7 +9,8 @@ devshell_do_devshell() {
 	export XAUTHORITY='${XAUTHORITY}'
 	export TERMWINDOWTITLE="Bitbake Developer Shell"
 	export EXTRA_OEMAKE='${EXTRA_OEMAKE}'
-	${TERMCMD}
+	export SHELLCMDS="bash"
+	${TERMCMDRUN}
 	if [ $? -ne 0 ]; then
 	    echo "Fatal: '${TERMCMD}' not found. Check TERMCMD variable."
 	    exit 1
@@ -17,6 +18,5 @@ devshell_do_devshell() {
 }
 addtask devshell after do_patch
 
-
 EXPORT_FUNCTIONS do_devshell
 
diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index a1b1354..5d9b86a 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -202,7 +202,7 @@ do_menuconfig() {
         export DBUS_SESSION_BUS_ADDRESS='${DBUS_SESSION_BUS_ADDRESS}'
         export XAUTHORITY='${XAUTHORITY}'
 	export TERMWINDOWTITLE="${PN} Kernel Configuration"
-	export SHELLCMDS="make menuconfig"
+	export SHELLCMDS="bash make menuconfig"
 	${TERMCMDRUN}
 	if [ $? -ne 0 ]; then
 		echo "Fatal: '${TERMCMD}' not found. Check TERMCMD variable."
-- 
1.7.4


