Return-Path: <andrei.adrianx.dinu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9804E006C9
	for <poky@yoctoproject.org>; Thu, 13 Dec 2012 08:08:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2012 08:08:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,274,1355126400"; d="scan'208";a="261708816"
Received: from adinu-vostro-460 (HELO localhost.localdomain) ([10.237.105.33])
	by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2012 08:08:02 -0800
From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 13 Dec 2012 18:08:08 +0200
Message-Id: <1355414888-9869-1-git-send-email-andrei.adrianx.dinu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Disabling audio on when running runqemu qemuarm
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Dec 2012 16:08:05 -0000

Added the change that prevented runqemu to throw
sound errors.

[YOCTO #3528]

Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
---
 scripts/runqemu-internal |    1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
index 7ca00f8..d5c0057 100755
--- a/scripts/runqemu-internal
+++ b/scripts/runqemu-internal
@@ -302,6 +302,7 @@ fi
 if [ "$MACHINE" = "qemuarm" -o "$MACHINE" = "qemuarmv6" -o "$MACHINE" = "qemuarmv7" ]; then
     QEMU=qemu-system-arm
     MACHINE_SUBTYPE=versatilepb
+    export QEMU_AUDIO_DRV="none"
     QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS"
     # QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS -force-pointer"
     if [ "$FSTYPE" = "ext3" -o "$FSTYPE" = "btrfs" ]; then
-- 
1.7.9.5


