Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BCDC24C80BCF
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 15:01:24 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA8L1KMY027851;
	Mon, 8 Nov 2010 13:01:23 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: saul.wold@intel.com, rpurdie@linux.intel.com
Date: Mon,  8 Nov 2010 16:01:30 -0500
Message-Id: <eaaeadbbc54ea8f84dca751b762b16df958b4537.1289249154.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
References: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
In-Reply-To: <13fdd080d00f7a90c1543d7dc00fb682e67ec6ba.1289249154.git.bruce.ashfield@windriver.com>
References: <13fdd080d00f7a90c1543d7dc00fb682e67ec6ba.1289249154.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 3/4] qemumips: re-enable wacom and standard USB UI options
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
X-List-Received-Date: Mon, 08 Nov 2010 21:01:24 -0000

Fixes [BUGID #394]

Now that the qemu/mti mips kernel branches have been fixed
for wacom USB interaction, we can re-nable the standard set
of qemu UI options for qemumips.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 scripts/poky-qemu-internal |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
index cf16407..62c1040 100755
--- a/scripts/poky-qemu-internal
+++ b/scripts/poky-qemu-internal
@@ -338,7 +338,7 @@ fi
 if [ "$MACHINE" = "qemumips" ]; then
     QEMU=qemu-system-mips
     MACHINE_SUBTYPE=malta
-    QEMU_UI_OPTIONS="-vga cirrus"
+    QEMU_UI_OPTIONS="-vga cirrus $QEMU_UI_OPTIONS"
     if [ "$FSTYPE" = "ext3" ]; then
         #KERNCMDLINE="root=/dev/hda console=ttyS0 console=tty0 $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
         KERNCMDLINE="root=/dev/hda console=ttyS0 console=tty $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
-- 
1.7.0.4


