Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 551584C80ABB
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:44 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2011 10:00:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="608305612"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2011 10:00:43 -0800
Message-Id: <b909f12a92c86fd2fe9348eeec455e2c9ef71f1a.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Tue, 1 Mar 2011 16:11:12 -0500
Date: Wed, 02 Mar 2011 10:00:42 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 25/26] kernel: remove explicit bash call in do_menuconfig
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:44 -0000

From: Bruce Ashfield <bruce.ashfield@windriver.com>

Fixes [BUGID #598]

The explicit addition of "bash" before "make menuconfig"
is clearing variables that are required for pseudo. The
end result is that menuconfig often fails silently with:

ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.

Removing bash from the menuconfig SHELLCMDS variable fixes
the psudo problem.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 5d9b86a..a1b1354 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -202,7 +202,7 @@ do_menuconfig() {
         export DBUS_SESSION_BUS_ADDRESS='${DBUS_SESSION_BUS_ADDRESS}'
         export XAUTHORITY='${XAUTHORITY}'
 	export TERMWINDOWTITLE="${PN} Kernel Configuration"
-	export SHELLCMDS="bash make menuconfig"
+	export SHELLCMDS="make menuconfig"
 	${TERMCMDRUN}
 	if [ $? -ne 0 ]; then
 		echo "Fatal: '${TERMCMD}' not found. Check TERMCMD variable."
-- 
1.7.1


