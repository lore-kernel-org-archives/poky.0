Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9AD334C80593
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 09:25:54 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Apr 2011 07:25:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,297,1299484800"; d="scan'208";a="905338443"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2011 07:25:53 -0700
Message-Id: <fa889b191a11c97fd3165797a9c5942963b21ce3.1301909087.git.lei.mei@intel.com>
In-Reply-To: <cover.1301909087.git.lei.mei@intel.com>
References: <cover.1301909087.git.lei.mei@intel.com>
Old-Date: Mon, 4 Apr 2011 17:17:25 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 1/1] qemuppc: add libqtopengl4 for ppc
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
Date: Mon, 04 Apr 2011 14:25:54 -0000
X-Original-Date: 一, 04  4月 2011 22:28:54 +0800
X-List-Received-Date: Mon, 04 Apr 2011 14:25:54 -0000

From: Mei Lei <lei.mei@intel.com>

Modify some configs for ppc to enable the libqtopengl4 support.
This fixes [YOCTO #848]

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/conf/machine/qemuppc.conf               |    2 ++
 meta/recipes-extended/tasks/task-poky-lsb.bb |    3 +++
 meta/recipes-qt/qt4/qt4-x11-free.inc         |    1 +
 3 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/conf/machine/qemuppc.conf b/meta/conf/machine/qemuppc.conf
index 83d0841..bfbcc7f 100644
--- a/meta/conf/machine/qemuppc.conf
+++ b/meta/conf/machine/qemuppc.conf
@@ -4,6 +4,8 @@
 
 TARGET_ARCH = "powerpc"
 
+PREFERRED_PROVIDER_virtual/libgl  = "mesa-xlib"
+
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-ppc603e.inc
 
diff --git a/meta/recipes-extended/tasks/task-poky-lsb.bb b/meta/recipes-extended/tasks/task-poky-lsb.bb
index 7b3c41a..6fea613 100644
--- a/meta/recipes-extended/tasks/task-poky-lsb.bb
+++ b/meta/recipes-extended/tasks/task-poky-lsb.bb
@@ -172,6 +172,9 @@ RDEPENDS_task-poky-lsb-graphic-add_qemux86 = "\
 RDEPENDS_task-poky-lsb-graphic-add_atom-pc = "\
     libqtopengl4 \
 "
+RDEPENDS_task-poky-lsb-graphic-add_qemuppc = "\
+    libqtopengl4 \
+"
 
 #    mesa-dri 
 
diff --git a/meta/recipes-qt/qt4/qt4-x11-free.inc b/meta/recipes-qt/qt4/qt4-x11-free.inc
index 057a129..306adb9 100644
--- a/meta/recipes-qt/qt4/qt4-x11-free.inc
+++ b/meta/recipes-qt/qt4/qt4-x11-free.inc
@@ -12,6 +12,7 @@ QT_GLFLAGS ?= "-no-opengl"
 QT_GLFLAGS_qemux86 = "-opengl"
 QT_GLFLAGS_emenlow = "-opengl"
 QT_GLFLAGS_atom-pc = "-opengl"
+QT_GLFLAGS_qemuppc = "-opengl"
 QT_CONFIG_FLAGS += "-no-xinerama -no-xkb ${QT_GLFLAGS}"
 QT_BASE_NAME ?= "qt4"
 QT_BASE_LIB  ?= "libqt"
-- 
1.6.3.3


