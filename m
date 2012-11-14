Return-Path: <laurentiu.palcu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21205E0144D
	for <poky@yoctoproject.org>; Wed, 14 Nov 2012 01:48:46 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Nov 2012 01:48:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,249,1352102400"; d="scan'208";a="248867183"
Received: from lpalcu-linux (HELO localhost.localdomain) ([10.237.105.42])
	by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2012 01:48:44 -0800
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 14 Nov 2012 11:48:41 +0200
Message-Id: <1352886522-26874-2-git-send-email-laurentiu.palcu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1352886522-26874-1-git-send-email-laurentiu.palcu@intel.com>
References: <1352886522-26874-1-git-send-email-laurentiu.palcu@intel.com>
Subject: [PATCH 1/2] yocto-bsp: update configs after xorg upgrade
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
X-List-Received-Date: Wed, 14 Nov 2012 09:48:46 -0000

There were some changes in the xserver-xorg upstream project that need
to be reflected here too:
 * extmod module was removed completely as it became empty;
 * DRI1, DRI2, DBE (among others) were made built-in;

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
---
 meta-yocto-bsp/conf/machine/atom-pc.conf           |    3 ---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf      |    1 -
 meta-yocto-bsp/conf/machine/routerstationpro.conf  |    1 -
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |    1 -
 4 files changed, 6 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf b/meta-yocto-bsp/conf/machine/atom-pc.conf
index 46bc71b..77dd7fb 100644
--- a/meta-yocto-bsp/conf/machine/atom-pc.conf
+++ b/meta-yocto-bsp/conf/machine/atom-pc.conf
@@ -13,10 +13,7 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-           xserver-xorg-extension-dri2 \
            xserver-xorg-extension-glx \
-           xserver-xorg-extension-extmod \
-           xserver-xorg-extension-dbe \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 7aa498d..252f4cc 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -19,7 +19,6 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-            xserver-xorg-extension-extmod \
             xf86-input-evdev \
             xf86-video-fbdev"
 
diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
index feaa26e..e5e4d1a 100644
--- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
+++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
@@ -14,7 +14,6 @@ PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-            xserver-xorg-extension-extmod \
             xf86-input-evdev \
             xf86-video-fbdev"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
index cbf3c32..1d6143a 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
@@ -43,7 +43,6 @@ PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 {{ if xserver == "y": }}
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 XSERVER = "xserver-xorg \
-           xserver-xorg-extension-extmod \
            xf86-input-evdev \
            xf86-video-fbdev"
 
-- 
1.7.9.5


