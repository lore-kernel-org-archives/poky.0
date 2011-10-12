Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 015B2E006AC
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 00:17:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Oct 2011 00:17:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="62086617"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.36.112])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2011 00:17:59 -0700
From: Dexuan Cui <dexuan.cui@intel.com>
To: poky@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed, 12 Oct 2011 15:17:53 +0800
Message-Id: <ad155bb2f7c2032a923332275d698d0787c764d2.1318403772.git.dexuan.cui@intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1318403772.git.dexuan.cui@intel.com>
References: <cover.1318403772.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1318403772.git.dexuan.cui@intel.com>
References: <cover.1318403772.git.dexuan.cui@intel.com>
Subject: [PATCH 1/1] xserver-xf86-dri-lite: rename it to xserver-xorg
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
X-List-Received-Date: Wed, 12 Oct 2011 07:18:00 -0000

Recently poky's commit c09f0eb561a53b97a769dd0744076af7d904eafb
(xserver-xf86(-dri)-lite: rename to xserver-xorg and xserver-xorg-lite)
breaks BSP building.
This patch makes changes accordingly.

Fixes bug [YOCTO #1670]

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
Cc: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../crosscompile.patch                             |    0
 .../fix_open_max_preprocessor_error.patch          |    0
 .../macro_tweak.patch                              |    2 +-
 .../nodolt.patch                                   |    0
 ...86-dri-lite_1.9.3.bb => xserver-xorg_1.11.1.bb} |    2 +-
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    6 +++---
 meta-crownbay/conf/machine/crownbay.conf           |    8 ++++----
 meta-emenlow/conf/machine/emenlow.conf             |    2 +-
 .../xorg-xserver/xserver-psb_1.7.99.2.bb           |    2 +-
 meta-fishriver/conf/machine/fishriver.conf         |    6 +++---
 meta-fri2/conf/machine/fri2-noemgd.conf            |    6 +++---
 meta-fri2/conf/machine/fri2.conf                   |    8 ++++----
 meta-jasperforest/conf/machine/jasperforest.conf   |    6 +++---
 meta-n450/conf/machine/n450.conf                   |    6 +++---
 meta-sugarbay/conf/machine/sugarbay.conf           |    6 +++---
 15 files changed, 30 insertions(+), 30 deletions(-)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg}/crosscompile.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg}/fix_open_max_preprocessor_error.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg}/macro_tweak.patch (93%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg}/nodolt.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.3.bb => xserver-xorg_1.11.1.bb} (87%)

diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/crosscompile.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg/crosscompile.patch
similarity index 100%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/crosscompile.patch
rename to common/recipes-graphics/xorg-xserver/xserver-xorg/crosscompile.patch
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_open_max_preprocessor_error.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg/fix_open_max_preprocessor_error.patch
similarity index 100%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/fix_open_max_preprocessor_error.patch
rename to common/recipes-graphics/xorg-xserver/xserver-xorg/fix_open_max_preprocessor_error.patch
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg/macro_tweak.patch
similarity index 93%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch
rename to common/recipes-graphics/xorg-xserver/xserver-xorg/macro_tweak.patch
index 2b75427..2b32d4e 100644
--- a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_tweak.patch
+++ b/common/recipes-graphics/xorg-xserver/xserver-xorg/macro_tweak.patch
@@ -2,7 +2,7 @@ This is the revised version of files/macro_tweak.patch for
 xorg-server 1.8.99.904.
 
 the files/macro_tweak.patch can not removed now since it is used by
-xserver-kdrive-1.7.99.2 and xserver-xf86-lite_1.7.99.2. Once they
+xserver-kdrive-1.7.99.2 and xserver-xorg(-lite). Once they
 are all upgraded to 1.8.99.904, the the files/macro_tweak.patch
 can be safely replace by this patch.
 
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/nodolt.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg/nodolt.patch
similarity index 100%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/nodolt.patch
rename to common/recipes-graphics/xorg-xserver/xserver-xorg/nodolt.patch
diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb b/common/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bb
similarity index 87%
rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
rename to common/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bb
index 81d70bc..480ed6a 100644
--- a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
+++ b/common/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bb
@@ -1,4 +1,4 @@
-require recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
+require recipes-graphics/xorg-xserver/xserver-xorg.inc
 
 PROTO_DEPS += "xf86driproto dri2proto"
 
diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index c668f4a..3b90136 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
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
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 457bdfc..e293861 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
-PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
-XSERVER ?= "xserver-xf86-dri-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            emgd-driver-bin \
            xf86-input-mouse \
            xf86-input-keyboard \
@@ -27,7 +27,7 @@ XSERVER ?= "xserver-xf86-dri-lite \
            xf86-input-synaptics \
            xf86-video-vesa"
 
-PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+PREFERRED_VERSION_xserver-xorg ?= "1.11.1"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 9745531..dabc82d 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -21,7 +21,7 @@ PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl = "xpsb-glx"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-psb"
 PREFERRED_PROVIDER_virtual/xserver-xf86 = "xserver-psb"
-PREFERRED_PROVIDER_xserver-xf86-dri-lite = "xserver-psb"
+PREFERRED_PROVIDER_xserver-xorg = "xserver-psb"
 
 XSERVER ?= "xserver-psb \
            xf86-input-mouse \
diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
index 5227faa..ccbed08 100644
--- a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
@@ -1,4 +1,4 @@
-require recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
+require recipes-graphics/xorg-xserver/xserver-xorg.inc
 
 PR = "r3"
 
diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
index 2fe78e8..ffbc05a 100644
--- a/meta-fishriver/conf/machine/fishriver.conf
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
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
diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/machine/fri2-noemgd.conf
index b02e037..11bb9bb 100644
--- a/meta-fri2/conf/machine/fri2-noemgd.conf
+++ b/meta-fri2/conf/machine/fri2-noemgd.conf
@@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
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
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index eab4b50..6ea78f4 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -17,16 +17,16 @@ PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
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
            xf86-input-synaptics \
            emgd-driver-bin"
 
-PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+PREFERRED_VERSION_xserver-xorg ?= "1.11.1"
 PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 9fdb968..f117860 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
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
diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index 79970d1..ed9850a 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -15,9 +15,9 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
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
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 6277e20..5b7842a 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto = "3.0%"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
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
-- 
1.7.6


