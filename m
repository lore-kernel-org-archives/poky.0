Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C53AD4C80A7E;
	Tue,  1 Mar 2011 15:26:43 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p21LQeND012464;
	Tue, 1 Mar 2011 13:26:42 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue,  1 Mar 2011 16:28:12 -0500
Message-Id: <3c7015f02d67a0af800df4dbf735c7650fd2b498.1299014724.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1299014724.git.bruce.ashfield@windriver.com>
References: <cover.1299014724.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1299014724.git.bruce.ashfield@windriver.com>
References: <cover.1299014724.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] kernel: remove explicit bash call in do_menuconfig
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
X-List-Received-Date: Tue, 01 Mar 2011 21:26:44 -0000

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
1.7.0.4


