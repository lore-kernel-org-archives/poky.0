Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2755BE005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 00:09:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Oct 2011 00:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,333,1315206000"; d="scan'208";a="72642218"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.36.112])
	by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2011 00:09:02 -0700
From: Dexuan Cui <dexuan.cui@intel.com>
To: poky@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed, 12 Oct 2011 15:09:05 +0800
Message-Id: <6dfde724efa6c181b4249ed21cc0217557e90e6d.1318402903.git.dexuan.cui@intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1318402903.git.dexuan.cui@intel.com>
References: <cover.1318402903.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1318402903.git.dexuan.cui@intel.com>
References: <cover.1318402903.git.dexuan.cui@intel.com>
Subject: [PATCH 1/1] atom-pc.conf, beagleboard.conf: rename xserver-xf86-dri-lite to xserver-xorg
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
X-List-Received-Date: Wed, 12 Oct 2011 07:09:03 -0000

Recently the commit c09f0eb561a53b97a769dd0744076af7d904eafb
(xserver-xf86(-dri)-lite: rename to xserver-xorg and xserver-xorg-lite)
breaks BSP building.
This patch makes changes accordingly.

Fixes bug [YOCTO #1670]

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
Cc: Martin Jansa <Martin.Jansa@gmail.com>
---
 meta-yocto/conf/machine/atom-pc.conf     |    6 +++---
 meta-yocto/conf/machine/beagleboard.conf |    4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
index da795cd..becac4f 100644
--- a/meta-yocto/conf/machine/atom-pc.conf
+++ b/meta-yocto/conf/machine/atom-pc.conf
@@ -15,9 +15,9 @@ PREFERRED_VERSION_linux-yocto ?= "3.0%"
 #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 1b89c43..03e6e39 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -2,8 +2,8 @@
 #@NAME: Beagleboard machine
 #@DESCRIPTION: Machine configuration for the http://beagleboard.org/ board 
 
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xf86-lite"
-XSERVER = "xserver-xf86-lite \
+PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg-lite"
+XSERVER = "xserver-xorg-lite \
            xf86-input-evdev \
            xf86-input-mouse \
            xf86-video-omapfb \
-- 
1.7.6


