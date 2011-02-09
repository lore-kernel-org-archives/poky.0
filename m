Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D36274C80097
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 14:42:11 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Feb 2011 12:42:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,447,1291622400"; d="scan'208";a="705911931"
Received: from unknown (HELO localhost) ([10.255.14.114])
	by orsmga001.jf.intel.com with ESMTP; 09 Feb 2011 12:41:59 -0800
Message-Id: <0b8fcb95dd4209d56e150d0b20133e728b22776c.1297283817.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1297283817.git.tom.zanussi@intel.com>
References: <cover.1297283817.git.tom.zanussi@intel.com>
Old-Date: Mon, 7 Feb 2011 13:45:45 -0600
Date: Wed, 09 Feb 2011 14:41:51 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] init-live.sh: add 'coldplug' udev trigger
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
X-List-Received-Date: Wed, 09 Feb 2011 20:42:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fixes [BUGID #693]

The init-live.sh script starts udevd in init-live.sh:early_setup(),
but doesn't account for the possibility that the root device may have
already been registered by the kernel before udevd starts up.

If the device is detected after udevd starts up, everything's fine -
udevd gets the 'add' uevent for the device, the root image shows up at
e.g. /media/sda/rootfs.img, and the boot continues.

If however the device is detected before udevd starts up, udevd misses
the 'add' uevent and the root image never shows up, causing it to stay
in the 'waiting for removable media' loop forever.

The 'udevadm trigger' command is meant to be used to avoid this
situation, but init-live.sh doesn't use it.  Furthermore, since the
default was changed in udev 152 from 'add' to 'change', the command
needs to explicity name 'add' as the action.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/recipes-core/initrdscripts/files/init-live.sh |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
index c96b1f4..f3e5145 100644
--- a/meta/recipes-core/initrdscripts/files/init-live.sh
+++ b/meta/recipes-core/initrdscripts/files/init-live.sh
@@ -11,6 +11,7 @@ early_setup() {
     mount -t proc proc /proc
     mount -t sysfs sysfs /sys
     udevd --daemon
+    /sbin/udevadm trigger --action=add
 }
 
 read_args() {
-- 
1.7.0.4


