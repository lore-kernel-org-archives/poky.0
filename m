Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA0194C80A4D
	for <poky@yoctoproject.org>; Thu, 12 May 2011 17:08:03 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 May 2011 15:08:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; 
   d="scan'208";a="997469"
Received: from unknown (HELO localhost) ([10.255.12.106])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2011 15:07:55 -0700
Message-Id: <13497eaae7ee3893e15be4877953a70b1ac07a30.1305236058.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305236058.git.tom.zanussi@intel.com>
References: <cover.1305236058.git.tom.zanussi@intel.com>
Old-Date: Thu, 12 May 2011 09:40:26 -0500
Date: Thu, 12 May 2011 17:07:31 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 3/4] meta-crownbay: update crownbay.conf
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
X-List-Received-Date: Thu, 12 May 2011 22:08:04 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update to reflect new graphics recipes.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index b8f107b..65babd7 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -20,18 +20,18 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-emgd"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-emgd"
-XSERVER ?= "xserver-xf86-emgd \
-           xserver-xf86-emgd-bin \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
+XSERVER ?= "xserver-xf86-dri-lite \
+           emgd-driver-bin \
            xf86-input-mouse \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
            xf86-video-vesa"
 
-PREFERRED_VERSION_xserver-xf86-emgd ?= "1.7.99.2"
-PREFERRED_VERSION_xserver-xf86-emgd-bin ?= "1.7.99.2"
+PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+PREFERRED_VERSION_emgd-driver-bin ?= "1.6.1"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.0.4


