Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D83554C80AC1
	for <poky@yoctoproject.org>; Fri,  1 Jul 2011 04:53:09 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Jul 2011 02:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,457,1304319600"; d="scan'208";a="22300854"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.36.71])
	by orsmga001.jf.intel.com with ESMTP; 01 Jul 2011 02:53:08 -0700
From: Dexuan Cui <dexuan.cui@intel.com>
To: poky@yoctoproject.org
Date: Fri,  1 Jul 2011 17:53:16 +0800
Message-Id: <4d60d32a60ae0fae1002b27cd7d20c28532f4932.1309513556.git.dexuan.cui@intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1309513556.git.dexuan.cui@intel.com>
References: <cover.1309513556.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1309513556.git.dexuan.cui@intel.com>
References: <cover.1309513556.git.dexuan.cui@intel.com>
Subject: [PATCH 1/1] poky.conf: add largefile support into DISTRO_FEATURES
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
X-List-Received-Date: Fri, 01 Jul 2011 09:53:10 -0000

[YOCTO #1205 ]

The commit ab1171b(busybox: backport distro-features handling from oe
master) actully makes busybox's largefile support disabled. So busybox's
mkswap complains "lseek: Value too large for defined data type" when we
install BSP image into the target device.

So we have to enable largefile support, and bump PR of busybox(in a later
commit).

Note: poky-lsb.conf enables "largefile" and includes poky.conf, so we can
move "largefile"  from poky-lsb.conf into poky.conf.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 meta-yocto/conf/distro/poky.conf     |    2 ++
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index 49d12da..355161b 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -3,7 +3,7 @@ require conf/distro/poky.conf
 DISTRO = "poky-lsb"
 DISTROOVERRIDES = "poky:linuxstdbase"
 
-DISTRO_FEATURES_append = " pam largefile"
+DISTRO_FEATURES_append = " pam"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
 
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 6724229..1ae94a0 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -10,6 +10,8 @@ TARGET_VENDOR = "-poky"
 
 LOCALCONF_VERSION = "1"
 
+DISTRO_FEATURES_append = " largefile"
+
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
-- 
1.7.6


